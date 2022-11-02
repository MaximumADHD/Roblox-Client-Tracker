return function()
	local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")

	local devDependencies = require(SocialLuaAnalytics.devDependencies)
	local jestExpect = devDependencies.jestExpect

	local getSessionIdByKey = require(script.Parent.getSessionIdByKey)

	local options = {
		keyPath = "ProjectKeyPath",
	}

	describe("getSessionIdByKey", function()
		it("SHOULD return correct sessionId by sessionKey", function()
			local testKey = "testKey"
			local testId = "testId"
			local state = {
				ProjectKeyPath = {
					bySessionKey = {
						[testKey] = testId,
					},
				},
			}
			local result = getSessionIdByKey(options)(state)(testKey)
			jestExpect(result).toBe(testId)
		end)

		it("SHOULD return nil if requested testKey does not exist", function()
			local testKey = "testKey"
			local testId = "testId"
			local state = {
				ProjectKeyPath = {
					bySessionKey = {
						[testKey] = testId,
					},
				},
			}
			local result = getSessionIdByKey(options)(state)("OtherTestKey")
			jestExpect(result).toBeNil()
		end)

		it("SHOULD return nil if bySessionKey doesnt exist", function()
			local state = {
				ProjectKeyPath = {},
			}
			local result = getSessionIdByKey(options)(state)("AnyTestKey")
			jestExpect(result).toBeNil()
		end)

		it("SHOULD return nil if state is empty", function()
			local state = {}
			local result = getSessionIdByKey(options)(state)("AnyTestKey")
			jestExpect(result).toBeNil()
		end)
	end)
end
