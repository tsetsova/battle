require 'sinatra'
#for sinatra the page can just be loaded but to show changes you have to manually
#exit and restart the server, shotgun will constantly reload for you but you need
#to specify the port, in this case --- shotgun app.rb -p 4567   --- when calling
#in the commandline.
require 'shotgun'



#http://localhost:4567
get '/' do
  "Hello!"
end


#http://localhost:4567/secret
get '/secret' do
  "Shhhh! It's a party!"
end


#http://localhost:4567/hannah
get '/hannah' do
  "Mood ring says ----> Is feeling disfunctional today"
end


#http://localhost:4567/rachel
get '/rachel' do
  "Mood ring says ----> Is a terrible drunk"
end

#http://localhost:4567/cat
get '/cat' do
  <!DOCTYPE html>
<html>
	<head>
		<title></title>
	</head>
	<body>
		<img src="http://bit.ly/1eze8aE" />
	</body>
</html>
end
