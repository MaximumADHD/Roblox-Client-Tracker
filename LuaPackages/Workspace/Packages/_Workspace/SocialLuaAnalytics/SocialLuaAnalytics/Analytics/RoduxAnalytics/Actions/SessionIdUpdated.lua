local SocialLuaAnalytics = script.Parent.Parent.Parent.Parent
local dependencies = require(SocialLuaAnalytics.dependencies)
local AnalyticsTypes = require(script.Parent.Parent.AnalyticsTypes)

local Rodux = dependencies.Rodux

return Rodux.makeActionCreator(script.Name, function(payload: AnalyticsTypes.SessionIdUpdatedPayload)
	return {
		payload = payload,
	}
end)
