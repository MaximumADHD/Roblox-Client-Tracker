return function()
	local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")

	local devDependencies = require(SocialLuaAnalytics.devDependencies)
	local dependencies = require(SocialLuaAnalytics.dependencies)
	local jestExpect = devDependencies.jestExpect
	local Rodux = dependencies.Rodux

	local RoduxAnalytics = require(script.Parent)

	local options = {
		keyPath = "ProjectPath",
	}

	local setupStore = function(defaultState)
		local RoduxAnalyticsConfigured = RoduxAnalytics.config(options)
		local reducer = RoduxAnalyticsConfigured.installReducer()
		local actions = RoduxAnalyticsConfigured.Actions
		local store = Rodux.Store.new(reducer, defaultState, { Rodux.thunkMiddleware })

		return store, actions
	end

	describe("WHEN action is dispatched", function()
		describe("SessionIdUpdated", function()
			it("SHOULD update store", function()
				local store, actions = setupStore()

				store:dispatch(actions.SessionIdUpdated({
					sessionId = "testSessionId",
					sessionKey = "testSessionKey",
				}))
				jestExpect(store:getState()).toEqual({
					bySessionKey = {
						["testSessionKey"] = "testSessionId",
					},
				})
			end)
		end)
	end)
end
