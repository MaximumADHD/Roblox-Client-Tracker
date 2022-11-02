local SocialLuaAnalytics = script.Parent.Parent.Parent
local dependencies = require(SocialLuaAnalytics.dependencies)
local Rodux = dependencies.Rodux
local AnalyticsTypes = require(script.Parent.AnalyticsTypes)

local bySessionKey = require(script.bySessionKey)

return function(options: AnalyticsTypes.Options): AnalyticsTypes.State
	return Rodux.combineReducers({
		bySessionKey = bySessionKey(options),
	})
end
