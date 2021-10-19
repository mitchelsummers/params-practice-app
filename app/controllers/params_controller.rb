class ParamsController < ApplicationController
  def phrase_enter
    input_value = params["phrase"]
    output_message = input_value.upcase
    render json: {message: output_message}
  end
  def wildcard_params
    input_value = params["wildcard"]
    render json: {message: "the url segment is #{input_value}"}
  end
  def add_segment_params
    input_value = params["number_1"]
    input_value2 = params["number_2"]
    render json: {message: "#{input_value + input_value2}"}
  end
  def body_params
    input = params["input"]
    if input == "hey"
      output_message = "whats up"
    else
      output_message = "try saying 'hey'."
    end
    render json: {message: output_message}
  end
end
