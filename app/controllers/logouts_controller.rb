class LogoutsController < ApplicationController
    def index
        session['farmer_id'] = nil
        session['trader_id'] = nil
    end
end
