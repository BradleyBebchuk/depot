# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
  Product.delete_all 
  puts Product.count
  
  p = Product.create(:title => 'Pragmatic Version Control', 
  :description => %{<p> 
  This book is a recipe-based approach to using Subversion that will 
get you up and running quickly--and correctly. All projects need 
version control: it's a foundational piece of any project's 
infrastructure. Yet half of all project teams in the U.S. don't use 
any version control at all. Many others don't use it well, and end 
up experiencing time-consuming problems. 
</p>}, 
:image_url => '/images/svn.jpg', 
:price => 28.50)

  puts p.inspect