module SessionsHelper
    def log_inOperator(operator)
    session[:operator_id] = operator.id
    end
    def current_operator
    @current_operator ||= Operator.find_by(id: session[:operator_id])
    end
    def logged_inOperator?
    !current_operator.nil?
    end
    def log_outOperator
    session.delete(:operator_id)
    @current_operator = nil
    end
    def log_inDriver(driver)
    session[:driver_id] = driver.id
    end
    def current_driver
    @current_driver ||= Driver.find_by(id: session[:driver_id])
    end
    def logged_inDriver?
    !current_driver.nil?
    end
    def log_outDriver
    session.delete(:driver_id)
    @current_driver = nil
    end
end