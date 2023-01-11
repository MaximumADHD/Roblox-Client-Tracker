local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local convertActions = require(Packages.SocialReducerAdaptors).convertActions
local usersActionAdaptor = require(Packages.SocialReducerAdaptors).usersActionAdaptor
local RoduxUsers = require(script.Parent.RoduxUsers)

local defaultState = {
	byUserId = {},
	byUsername = {},
}

local reducer = RoduxUsers.installReducer()

return function()
	return convertActions(reducer, usersActionAdaptor(RoduxUsers), defaultState)
end
