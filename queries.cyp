START user = node:users(userId="1")
MATCH user-[friendship:FRIENDS_WITH]->friend
RETURN friend.name, friendship.numberOfMonths