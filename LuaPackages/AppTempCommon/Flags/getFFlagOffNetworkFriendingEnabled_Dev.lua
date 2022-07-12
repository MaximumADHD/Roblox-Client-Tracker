--!strict

game:DefineFastFlag("OffNetworkFriendingEnabled_Dev", false)

return function()
	return game:GetFastFlag("OffNetworkFriendingEnabled_Dev")
end
