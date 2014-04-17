# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

description = %Q{Code:\n
				Create new rails app
				Add a ruby version and gemset to it
				Add one page of static content
				Create one Resource with Scaffolding
				Put it on Github

				Questions:

				1. What is the difference between Bundler and RVM?

					Bundler is a dependency resolution tool for a given application, where as RVM lets one manage multiple versions of ruby environments through gem sets.

				2. What is REST and why is it useful?
					
					REST (Representational State Transfer) defines a way of communication between software system's components (in the context of rails, a web application) by imposing constraints on their interactions.
					It is useful as it provides uniform inteface for interaction between different components of system/s.
				3. What does CRUD stand for? 

					CRUD stands for Create, Read, Update and Delete operations ususally of database and in the context of rails, routes mentioned in routes.rb map to one of these operations (usually) through controller actions.

				4. What does this line of code do, and what file in my rails app would it go in?
				   resources :students, except: :destroy

				   The above line goes into routes.rb file under config and would create all default routes mapping to students controller actions except for "destroy" action.

				Project Description:
				\"SchoolInfoWebsite\" is a web application that provides a framework to create the following pages easily:
					1. Introduction, Vision/Goals (HOME page)
					2. Academic Information (Academics page)
					3. Activity Information (Activities page)
					4. Policies and Forms (Policies and Forms page)
					5. Events & Photos (Events page)
					6. Contact information, Send Message (Contact Us page)
					7. Admin Portal

				Link to code on Github:
				https://github.com/jatla/school_info_website}

HomeWork.create(
	week: 'Week1',
	difficulty_level: 'medium',
	description: description)
