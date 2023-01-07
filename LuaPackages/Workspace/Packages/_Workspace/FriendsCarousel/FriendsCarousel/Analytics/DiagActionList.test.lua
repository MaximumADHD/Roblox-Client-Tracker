local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local devDependencies = require(FriendsCarousel.devDependencies)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local test = JestGlobals.test

local validateDiagList = SocialLuaAnalytics.TestingAnalytics.validateDiagList
local DiagActionList = require(script.Parent.DiagActionList)

test("navigationAnalytics", function()
	jestExpect(function()
		validateDiagList(DiagActionList)
	end).never.toThrow()
end)
