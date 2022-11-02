local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")

local devDependencies = require(SocialLuaAnalytics.devDependencies)
local jestExpect = devDependencies.jestExpect
local formatRecommendationContextType = require(script.Parent.formatRecommendationContextType)
local Enums = require(SocialLuaAnalytics.Analytics.Enums)
local RecommendationContextTypes = Enums.RecommendationContextTypes
local RoduxFriends = devDependencies.RoduxFriends
local RecommendationContextType = RoduxFriends.Enums.RecommendationContextType

return function()
	describe("formatRecommendationContextType", function()
		it("SHOULD return nil if given nil", function()
			jestExpect(formatRecommendationContextType(nil)).toBeNil()
		end)

		it("SHOULD return None when given None", function()
			jestExpect(formatRecommendationContextType(RecommendationContextType.None)).toBe(
				RecommendationContextTypes.None.rawValue()
			)
		end)

		it("SHOULD return MutualFriends when given MutualFriends", function()
			jestExpect(formatRecommendationContextType(RecommendationContextType.MutualFriends)).toBe(
				RecommendationContextTypes.MutualFriends.rawValue()
			)
		end)
	end)
end
