local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")

local Analytics = require(SocialLuaAnalytics.Analytics)
local devDependencies = require(SocialLuaAnalytics.devDependencies)
local jestExpect = devDependencies.jestExpect

return function()
	describe("Analytics", function()
		it("SHOULD have all expected fields on SocialLuaAnalytics", function()
			jestExpect(Analytics).toEqual({
				Enums = {
					Contexts = jestExpect.any("userdata"),
					EventTypes = jestExpect.any("userdata"),
					FriendStatuses = jestExpect.any("userdata"),
					PresenceTypes = jestExpect.any("userdata"),
					SubPages = jestExpect.any("userdata"),
					Pages = jestExpect.any("userdata"),
					RecommendationContextTypes = jestExpect.any("userdata"),
				},
				FireEvent = {
					fireDiagCounter = jestExpect.any("function"),
					fireEventStream = jestExpect.any("function"),
				},
				Navigation = {
					EventNames = jestExpect.any("userdata"),
					fireNavigationEvent = jestExpect.any("function"),
				},
				Formatters = {
					formatRecommendationContextType = jestExpect.any("function"),
					formatPresence = jestExpect.any("function"),
				},
				RoduxAnalytics = {
					config = jestExpect.any("function"),
				},
			})
		end)
	end)
end
