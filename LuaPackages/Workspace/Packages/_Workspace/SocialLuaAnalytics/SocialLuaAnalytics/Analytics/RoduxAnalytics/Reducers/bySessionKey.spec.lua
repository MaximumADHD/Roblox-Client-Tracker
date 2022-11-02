return function()
	local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")

	local devDependencies = require(SocialLuaAnalytics.devDependencies)
	local jestExpect = devDependencies.jestExpect

	local bySessionKey = require(script.Parent.bySessionKey)
	local SessionIdUpdated = require(script.Parent.Parent.Actions.SessionIdUpdated)

	local options = {
		keyPath = "ProjectKeyPath",
	}

	describe("bySessionKey", function()
		it("SHOULD return a function", function()
			jestExpect(bySessionKey).toEqual(jestExpect.any("function"))
		end)

		it("SHOULD initialize with correct default state", function()
			local bySessionKeyReducer = bySessionKey(options)
			local state = bySessionKeyReducer(nil, {})
			jestExpect(state).toEqual({})
		end)

		describe("SessionIdUpdated", function()
			it("SHOULD update default state correctly", function()
				local bySessionKeyReducer = bySessionKey(options)
				local SessionIdUpdatedAction = SessionIdUpdated({
					sessionKey = "testSessionKey",
					sessionId = "testSessionId",
				})
				local state = bySessionKeyReducer(nil, SessionIdUpdatedAction)
				jestExpect(state).toEqual({
					["testSessionKey"] = "testSessionId",
				})
			end)

			it("SHOULD update existing state correctly for new sessionKey", function()
				local bySessionKeyReducer = bySessionKey(options)
				local SessionIdUpdatedAction = SessionIdUpdated({
					sessionKey = "testSessionKey",
					sessionId = "testSessionId",
				})
				local existingState = {
					["testSessionKey0"] = "testSessionId0",
				}
				local state = bySessionKeyReducer(existingState, SessionIdUpdatedAction)
				jestExpect(state).toEqual({
					["testSessionKey"] = "testSessionId",
					["testSessionKey0"] = "testSessionId0",
				})
			end)

			it("SHOULD update existing state correctly for existing sessionKey", function()
				local bySessionKeyReducer = bySessionKey(options)
				local SessionIdUpdatedAction = SessionIdUpdated({
					sessionKey = "testSessionKey",
					sessionId = "testSessionIdUpdated",
				})
				local existingState = {
					["testSessionKey0"] = "testSessionId0",
					["testSessionKey"] = "testSessionIdExisting",
				}
				local state = bySessionKeyReducer(existingState, SessionIdUpdatedAction)
				jestExpect(state).toEqual({
					["testSessionKey0"] = "testSessionId0",
					["testSessionKey"] = "testSessionIdUpdated",
				})
			end)
		end)

		describe("Incorrect action", function()
			it("SHOULD not change state", function()
				local bySessionKeyReducer = bySessionKey(options)
				local RandomAction = {
					name = "RandomAction",
					payload = {
						sessionKey = "testSessionKey",
						sessionId = "testSessionIdUpdated",
					},
				}
				local existingState = {
					["testSessionKey"] = "testSessionId",
				}
				local state = bySessionKeyReducer(existingState, RandomAction)
				jestExpect(state).toEqual({
					["testSessionKey"] = "testSessionId",
				})
			end)
		end)
	end)
end
