local AddFriends = script:FindFirstAncestor("AddFriends")
local dependencies = require(AddFriends.dependencies)
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	AddFriend = "Feature.Friends.Action.Add",
	RequestPending = "Feature.Friends.Label.Pending",
})
