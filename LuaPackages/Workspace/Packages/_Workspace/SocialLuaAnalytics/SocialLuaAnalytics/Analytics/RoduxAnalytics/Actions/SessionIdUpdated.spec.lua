return function()
	local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")

	local devDependencies = require(SocialLuaAnalytics.devDependencies)
	local jestExpect = devDependencies.jestExpect

	local SessionIdUpdated = require(script.Parent.SessionIdUpdated)

	describe("SessionIdUpdated", function()
		it("SHOULD create action", function()
			jestExpect(SessionIdUpdated).toEqual({
				name = "SessionIdUpdated",
			})
		end)

		it("SHOULD return correct payload", function()
			local result = SessionIdUpdated({
				sessionKey = "testSessionKey",
				sessionId = "testSessionId",
			})

			jestExpect(result).toEqual(jestExpect.any("table"))
			jestExpect(result.payload).toEqual({
				sessionKey = "testSessionKey",
				sessionId = "testSessionId",
			})
		end)
	end)
end
