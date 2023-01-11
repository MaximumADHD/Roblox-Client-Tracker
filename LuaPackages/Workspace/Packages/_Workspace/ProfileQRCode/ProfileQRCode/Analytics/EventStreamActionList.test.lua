local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local SocialLuaAnalytics = require(Packages.SocialLuaAnalytics)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect

local it = JestGlobals.it

local validateEventList = SocialLuaAnalytics.TestingAnalytics.validateEventList
local EventStreamActionList = require(script.Parent.EventStreamActionList)

it("navigationAnalytics", function()
	expect(function()
		validateEventList(EventStreamActionList, {})
	end).never.toThrow()
end)
