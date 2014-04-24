# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

HomeWork.delete_all
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

description = %Q{Reading:
				Chapter 4 Working with Controllers: 4.3 - 4.7  (Skip the rack console exercise - unless you really want to do it)
				Chapter 2 Routing: 2.1, 2.2, 2.4, 2.6, 2.7 

				Code:
				Setup a root route to a home or welcome controller 
				Have a link on your homepage to your scaffolded resource from last week
				Have a link on your homepage that triggers a change on your homepage (wording change, expansion of text, change a color, etc...)
				Create a view helper that will generate different content on your homepage based on a param value

				Questions:
				1. Why does a Rails app have routing?
				   Routing in rails exists for two purposes:
				   a. It maps requests to controller actions
				   b. It generates URLs dynamically 
				2. How would you render the same view for two different controllers? (code example is fine)
				  Same view can be rendered from two different controllers by using explicit "render" statement in teh controller action.
				  render "<path to template file>"
				  Ex: render "/home/index.html"
				3. If you wanted to check a parameter before calling any controller action, what would you do? (code example is fine)

				Link to code on Github:
				https://github.com/jatla/RailsHomeWork/commit/bd837854bbd324c2cc4251d8ee8dc5487d222443}

HomeWork.create(
	week: 'Week2',
	difficulty_level: 'medium',
	description: description)

description = %Q{Reading
				Chapter 1 - Section 1.6 on Configuring a DataBase
				Chapter 5 Working with Active Record - Sections 5.1 - 5.4
				Chapter 6 Active Record Migrations - Sections 6.1-6.3

				Code
				Add a different layout for 2 of your routes
				Create a controller filter for just one action
				Add a migration to your application

				Questions:
				1.
				2.
				3.
				4.

				Link to code on Github:
				<please put the link to your code on github here>}

HomeWork.create(
	week: 'Week3',
	difficulty_level: 'medium',
	description: description)
