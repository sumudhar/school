namespace :school  do
  namespace :section do
	 desc 'data Migration for Sections '
			task :data do
				Section.delete_all
				Section.create([ 
				{name: "Mango",  description: "PreKg" , course_id: 1},
				{name: "Spring",  description: "PreKg" , course_id: 1},
				{name: "Orange",  description: "PreKg" , course_id: 1},
				{name: "Banana",  description: "PreKg" , course_id: 1},
				{name: "Mango",  description: "LKG" , course_id: 2},
				{name: "Spring",  description: "LKG" , course_id: 2},
				{name: "Orange",  description: "LKG" , course_id: 2},
				{name: "Banana",  description: "LKG" , course_id: 2},
				{name: "Mango",  description: "UKG" , course_id: 3},
				{name: "Spring",  description: "UKG" , course_id: 3},
				{name: "Orange",  description: "UKG" , course_id: 3},
				{name: "Banana",  description: "UKG" , course_id: 3},
				{name: "A",  description: "First" , course_id: 4},
				{name: "B",  description: "First" , course_id: 4},
				{name: "C",  description: "First" , course_id: 4},
				{name: "D",  description: "First" , course_id: 4},
				{name: "A",  description: "Second" , course_id: 5},
				{name: "B",  description: "Second" , course_id: 5},
				{name: "C",  description: "Second" , course_id: 5},
				{name: "D",  description: "Second" , course_id: 5},
				{name: "A",  description: "Third" , course_id: 6},
				{name: "B",  description: "Third" , course_id: 6},
				{name: "C",  description: "Third" , course_id: 6},
				{name: "D",  description: "Third" , course_id: 6},
				{name: "A",  description: "Fourth" , course_id: 7},
				{name: "B",  description: "Fourth" , course_id: 7},
				{name: "C",  description: "Fourth" , course_id: 7},
				{name: "D",  description: "Fourth" , course_id: 7},
				{name: "A",  description: "Fifth" , course_id: 8},
				{name: "B",  description: "Fifth" , course_id: 8},
				{name: "C",  description: "Fifth" , course_id: 8},
				{name: "D",  description: "Fifth" , course_id: 8},
				{name: "A",  description: "Sixth" , course_id: 9},
				{name: "B",  description: "Sixth" , course_id: 9},
				{name: "C",  description: "Sixth" , course_id: 9},
				{name: "D",  description: "Sixth" , course_id: 9},
				{name: "A",  description: "Seventh" , course_id: 10},
				{name: "B",  description: "Seventh" , course_id: 10},
				{name: "C",  description: "Seventh" , course_id: 10},
				{name: "D",  description: "Seventh" , course_id: 10},
				{name: "A",  description: "Eighth" , course_id: 11},
				{name: "B",  description: "Eighth" , course_id: 11},
				{name: "C",  description: "Eighth" , course_id: 11},
				{name: "D",  description: "Eighth" , course_id: 11},
				{name: "A",  description: "Ninth" , course_id: 12},
				{name: "B",  description: "Ninth" , course_id: 12},
				{name: "C",  description: "Ninth" , course_id: 12},
				{name: "D",  description: "Ninth" , course_id: 12},
				{name: "A",  description: "Tenth" , course_id: 13},
				{name: "B",  description: "Tenth" , course_id: 13},
				{name: "C",  description: "Tenth" , course_id: 13},
				{name: "D",  description: "Tenth" , course_id: 13}
				])
			end
			task :hello do
			  puts "Hello World"
			end
	task :initialize => [:data]
 end	
end
	
