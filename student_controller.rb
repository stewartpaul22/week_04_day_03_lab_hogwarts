require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( './models/student.rb' )

# index
get "/students" do
  @students = Student.all()
  erb(:index)
end

# get
get "/students/new" do
  erb(:new)
end
