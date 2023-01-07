local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it
local dependencies = require(FriendsCarousel.dependencies)
local UserModel = dependencies.RoduxUsers.Models.User
local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY

local mapIdToUser = require(script.Parent.mapIdToUser)

it("SHOULD return function", function()
	jestExpect(mapIdToUser).toEqual(jestExpect.any("function"))
end)

it("SHOULD return correctly mapped data for user id", function()
	local USER_ID_1 = "123"
	local USER_ID_2 = "456"
	local userId1Data = UserModel.mock({ id = USER_ID_1 })

	local state = {
		[RODUX_KEY] = {
			Users = {
				byUserId = {
					[USER_ID_1] = userId1Data,
				},
			},
			Presence = {},
		},
	}

	local mapIdToUserFunction = mapIdToUser(state, RODUX_KEY)
	jestExpect(mapIdToUserFunction(USER_ID_1)).toEqual(userId1Data)
	jestExpect(mapIdToUserFunction(USER_ID_2)).toBeNil()
end)
