post '/signin' do
  user = User.where(name: params[:username]).first
  unless user == nil
    if user.authenticate(params[:password])
      session[:user] = user.id
    else
      redirect '/signin?invalid=true'
    end
  else
    redirect '/signin?invalid=true'
  end
  redirect '/'
end



get '/signout' do
  session[:user] = nil
  redirect '/'
end