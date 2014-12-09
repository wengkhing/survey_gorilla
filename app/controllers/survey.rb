get '/survey/create' do

  erb :new_survey
end

post '/survey/create' do
  @survey = Survey.create(params[:survey])

  erb :survey_success_created
end