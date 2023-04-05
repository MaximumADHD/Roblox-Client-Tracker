local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

local baseTestStates = devDependencies.baseTestStates
local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY

local carouselMapStateToProps = require(script.Parent.userTileMapStateToProps)

it("SHOULD return correct data for default state", function()
	local state = {
		LocalUserId = "1111",
		[RODUX_KEY] = {
			NetworkStatus = {},
			Friends = {
				byUserId = {},
				countsByUserId = {},
				recommendations = {},
				requests = {
					receivedCount = 0,
				},
			},
			Users = {
				byUserId = {},
			},
			Presence = {},
		},
	}
	local newProps = carouselMapStateToProps(state, RODUX_KEY)
	jestExpect(newProps).toEqual({})
end)

it("SHOULD return correct data with not empty state", function()
	local state = baseTestStates.friendsAndRecommendations
	local newProps = carouselMapStateToProps(state, RODUX_KEY)
	jestExpect(newProps).toEqual({})
end)
