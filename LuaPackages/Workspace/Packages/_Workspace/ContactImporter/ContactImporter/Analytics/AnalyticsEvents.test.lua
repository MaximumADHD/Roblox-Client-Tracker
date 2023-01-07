local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local devDependencies = require(ContactImporter.devDependencies)

local SocialLuaAnalytics = dependencies.SocialLuaAnalytics

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local test = JestGlobals.test

local validateEventList = SocialLuaAnalytics.TestingAnalytics.validateEventList
local AnalyticsEvents = require(script.Parent.AnalyticsEvents)
local BtnValues = require(script.Parent.Enums.BtnValues)

test("navigationAnalytics", function()
	jestExpect(function()
		validateEventList(AnalyticsEvents, { btn = BtnValues.isEnumValue })
	end).never.toThrow()
end)
