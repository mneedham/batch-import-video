require 'open-uri'

open("relationships.tsv", 'w') do |f|
	f.puts(["userId:string:users", "userId:string:users", "type", "numberOfMonths"].join("\t"))

	(1..100000).each do |id|
		(1 + Random.rand(49)).times.map{ 1 + Random.rand(99999) }.each do |friend_id|
			f.puts([id, friend_id, "FRIENDS_WITH", Random.rand(100)].join("\t"))
		end 	
	end
end