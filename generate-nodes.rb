require 'open-uri'
require 'faker'

open("nodes.tsv", 'w') do |f|
	f.puts(["userId:string:users", "name", "email"].join("\t"))

	(1..100000).each do |id|
		f.puts([id, Faker::Name.name, Faker::Internet.email].join("\t"))
	end
end