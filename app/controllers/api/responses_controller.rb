class Api::ResponsesController < ApplicationController
  def create
    render json: nil, status: 200
    # response = Response.new(response_params)
    # response.answerer_id = 'djr2dd2ac'
    # if response.save
    #   Pusher.app_id = ENV['PUSHER_APP_ID']
    #   Pusher.key = ENV['PUSHER_KEY']
    #   Pusher.secret = ENV['PUSHER_SECRET']
    #   Pusher.trigger('response-updates', 'response-event', {:message => 'hello world'})
    #   render json: response
    # else
    #   render json: nil
    # end
  end

  private
  def response_params
    params.require(:response).permit(:answer_id)
  end
end