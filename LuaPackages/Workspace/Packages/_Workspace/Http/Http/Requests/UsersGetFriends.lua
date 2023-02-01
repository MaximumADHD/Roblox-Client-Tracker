local Url = require(script.Parent.Parent.Url)

return function(requestImpl, userId, userSort)
	local queryString = Url:makeQueryString({
		userSort = userSort,
	})

	local url = string.format("%s/users/%s/friends?%s", Url.FRIEND_URL, userId, queryString)

	return requestImpl(url, "GET")
end
