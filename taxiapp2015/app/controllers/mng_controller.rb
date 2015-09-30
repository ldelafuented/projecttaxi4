class MngController < ApplicationController
    layout 'login'
    
  def login
  end
  
  def login_driver
  end
  
    def createSession
      @operator = Operator.find_by(email: params[:operator][:email].downcase)
      if @operator && @operator.authenticate(params[:operator][:password])
      log_inOperator @operator
      redirect_to operators_path
      else
      redirect_to sessions_login_path
      end
    end 
    
    def destroySession
      log_outOperator
      redirect_to root_path
    end
    
    def createSessionDriver
      @driver = Driver.find_by(email: params[:driver][:email].downcase)
      if @driver && @driver.authenticate(params[:driver][:password_digest])
      log_inDriver @driver
      redirect_to drivers_path
      else
      redirect_to sessions_login_driver_path
      end
    end 
    
    def destroySessionDriver
      log_outDriver
      redirect_to root_path
    end
end