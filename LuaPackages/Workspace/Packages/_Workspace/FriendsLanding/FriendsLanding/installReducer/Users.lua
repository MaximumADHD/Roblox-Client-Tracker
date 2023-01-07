local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local RoduxUsers = dependencies.RoduxUsers
local convertActions = require(script.Parent.convertActions)
local usersActionAdaptor = require(script.Parent.usersActionAdaptor)

local defaultState = {
	byUserId = {},
	byUsername = {},
}

return convertActions(RoduxUsers.installReducer(), usersActionAdaptor, defaultState)
