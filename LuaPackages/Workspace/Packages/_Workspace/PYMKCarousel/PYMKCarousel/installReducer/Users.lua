local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)

local RoduxUsers = dependencies.RoduxUsers
local convertActions = dependencies.convertActions
local llama = dependencies.llama
local usersActionAdaptor = dependencies.usersActionAdaptor
local usersOmniActionAdaptor = require(script.Parent.usersOmniActionAdaptor)

local defaultState = {
	byUserId = {},
	byUsername = {},
}

local reducer = RoduxUsers.installReducer()

local extendedUsersActionAdaptor = function(config)
	return llama.Dictionary.join(usersActionAdaptor(RoduxUsers), usersOmniActionAdaptor(config))
end

return function(config)
	return convertActions(reducer, extendedUsersActionAdaptor(config), defaultState)
end
