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

#http://localhost:4567/heather
get '/heather' do
  "Mood ring says ----> it is nearly Heather's birthday!"
end

#http://localhost:4567/ina
get '/ina' do
  "Mood ring says ----> is awesome!"
end

#http://localhost:4567/cat

#<div></div> is a box to put the picture in, you can specify it's size or
#take the browser default, this may be the image size or a padded version. (You can use CSS reset
#to clear these browser settings)

# <img src= "the link to the picture"> is the html code to put up images, it does not have a closing tag

#The text "style='border: 3px dashed red'" is the CSS bit to put the boarder on. When you are just doing a little bit of CSS you can put it
#inline within the opening tag (eg. <div> or <img src=>). However on a normal webpage where you want all images to be formatted
#and boardered in the same way you would have a separate file that sets the CSS style.

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index) #this links to the presentation concerns included in index.erb
end

#http://localhost:4567/form
get '/cat_form' do
  erb(:cat_form)
end
#The below version where the instance variable links to a params allows you to add a query string '?' and use the key :name and assign a
#a value, such as 'James'. So if the end of the address line was "/named-cat/?name=James" it would show "My name is James"
post '/named-cat' do
  p params #shows the key/value pair in the terminal
  @name = params[:name]
  erb(:index) #this links to the presentation concerns included in index.erb
end
