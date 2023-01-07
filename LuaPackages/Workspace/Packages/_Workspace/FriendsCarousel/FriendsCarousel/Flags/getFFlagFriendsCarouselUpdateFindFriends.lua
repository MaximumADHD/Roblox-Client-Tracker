game:DefineFastFlag("FriendsCarouselUpdateFindFriends", false)

--! do not clean up this flag and code behind it, it could be used for future UI iterations
return function()
	return game:GetFastFlag("FriendsCarouselUpdateFindFriends")
end
