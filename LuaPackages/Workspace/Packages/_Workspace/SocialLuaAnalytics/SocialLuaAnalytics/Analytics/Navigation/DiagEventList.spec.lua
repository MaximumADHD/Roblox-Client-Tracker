local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")

local devDependencies = require(SocialLuaAnalytics.devDependencies)
local jestExpect = devDependencies.jestExpect

local validateDiagList = require(SocialLuaAnalytics.TestingAnalytics.validateDiagList)
local DiagEventList = require(script.Parent.DiagEventList)

return function()
	describe("navigationAnalytics", function()
		jestExpect(function()
			validateDiagList(DiagEventList)
		end).never.toThrow()
	end)
end
