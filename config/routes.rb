Rails.application.routes.draw do
  get "/phrase_enter" => "params#phrase_enter"
  get "/wildcard_params/:wildcard" => "params#wildcard_params" 
  get "/add_segment_params/:number_1/:number_2" => "params#add_segment_params" 
  post "/say_hey" => "params#body_params"
end
