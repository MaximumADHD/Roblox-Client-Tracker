local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local SocialLuaAnalytics = require(Packages.SocialLuaAnalytics)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect

local it = JestGlobals.it

local validateDiagList = SocialLuaAnalytics.TestingAnalytics.validateDiagList
local DiagActionList = require(script.Parent.DiagActionList)

it("navigationAnalytics", function()
	expect(function()
		validateDiagList(DiagActionList)
	end).never.toThrow()
end)
