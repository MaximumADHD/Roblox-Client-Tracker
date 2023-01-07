--!nonstrict
local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)

local RoduxUsers = dependencies.RoduxUsers
local convertActions = dependencies.convertActions
local usersActionAdaptor = dependencies.usersActionAdaptor

local defaultState = {
	byUserId = {},
	byUsername = {},
}

local reducer = RoduxUsers.installReducer()

return convertActions(reducer, usersActionAdaptor(RoduxUsers), defaultState)
