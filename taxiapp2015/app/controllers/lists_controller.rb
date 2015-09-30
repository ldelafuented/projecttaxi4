class ListsController < ApplicationController
    layout 'panel'
    def list_operator
         @operators = Operator.where(esAdmin:false)
    end
    def list_driver
        @choferes = Driver.all
    end
end