local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")

local TestingAnalytics = require(SocialLuaAnalytics.TestingAnalytics)
local devDependencies = require(SocialLuaAnalytics.devDependencies)
local jestExpect = devDependencies.jestExpect

return function()
	describe("analytics", function()
		it("SHOULD have all expected fields on SocialLuaAnalytics", function()
			jestExpect(TestingAnalytics).toEqual({
				mockAnalytics = jestExpect.any("function"),
				mockLogger = jestExpect.any("function"),
				validateDiagList = jestExpect.any("function"),
				validateEventList = jestExpect.any("function"),
			})
		end)
	end)
end
