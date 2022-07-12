--!strict

game:DefineFastFlag("OffNetworkFriendingEnabled", false)

return function()
	return game:GetFastFlag("OffNetworkFriendingEnabled")
end
