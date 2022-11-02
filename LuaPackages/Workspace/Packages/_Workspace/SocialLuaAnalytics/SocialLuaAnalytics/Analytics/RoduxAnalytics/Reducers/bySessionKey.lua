local SocialLuaAnalytics = script.Parent.Parent.Parent.Parent
local dependencies = require(SocialLuaAnalytics.dependencies)
local Rodux = dependencies.Rodux
local Dash = dependencies.Dash

local RoduxAnalytics = script.Parent.Parent
local AnalyticsTypes = require(RoduxAnalytics.AnalyticsTypes)
local SessionIdUpdated = require(RoduxAnalytics.Actions.SessionIdUpdated)

local DEFAULT_STATE = {}

return function(_options: AnalyticsTypes.Options)
	return Rodux.createReducer(DEFAULT_STATE, {
		[SessionIdUpdated.name] = function(
			state: AnalyticsTypes.BySessionKeyState,
			action: AnalyticsTypes.SessionIdUpdatedAction
		)
			local sessionKey = action.payload.sessionKey
			local sessionId = action.payload.sessionId

			return Dash.join(state or DEFAULT_STATE, {
				[sessionKey] = sessionId,
			})
		end,
	})
end
