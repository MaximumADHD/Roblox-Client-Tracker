local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local devDependencies = require(FriendsCarousel.devDependencies)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local test = JestGlobals.test

local validateEventList = SocialLuaAnalytics.TestingAnalytics.validateEventList
local EventStreamActionList = require(script.Parent.EventStreamActionList)
local BtnValues = require(script.Parent.BtnValues)

test("navigationAnalytics", function()
	jestExpect(function()
		validateEventList(EventStreamActionList, {
			btn = function(value)
				return value == nil or BtnValues.isEnumValue(value)
			end,
		})
	end).never.toThrow()
end)
