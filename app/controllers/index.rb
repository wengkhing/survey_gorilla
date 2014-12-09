get '/' do
  # Look in app/views/index.erb
  @surveys = Survey.all.sample(12)
  erb :index
end

get '/signin' do
  if params[:invalid]

  end
  erb :sign_in
end
