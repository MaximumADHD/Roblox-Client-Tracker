local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")

local devDependencies = require(SocialLuaAnalytics.devDependencies)
local jestExpect = devDependencies.jestExpect

local validateEventList = require(SocialLuaAnalytics.TestingAnalytics.validateEventList)
local EventStreamEventList = require(script.Parent.EventStreamEventList)
local BtnValues = require(script.Parent.BtnValues)

return function()
	describe("navigationAnalytics", function()
		jestExpect(function()
			validateEventList(EventStreamEventList, { btn = BtnValues.isEnumValue })
		end).never.toThrow()
	end)
end
