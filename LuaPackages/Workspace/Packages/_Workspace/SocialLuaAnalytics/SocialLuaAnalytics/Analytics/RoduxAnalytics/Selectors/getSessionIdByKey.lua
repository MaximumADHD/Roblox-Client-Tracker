local SocialLuaAnalytics = script.Parent.Parent.Parent.Parent
local RoduxAnalytics = script.Parent.Parent
local dependencies = require(SocialLuaAnalytics.dependencies)
local SocialLibraries = dependencies.SocialLibraries

local AnalyticsTypes = require(RoduxAnalytics.AnalyticsTypes)

return function(options: AnalyticsTypes.Options)
	local keyPath = options.keyPath
	return function(state)
		return function(key: AnalyticsTypes.SessionKey): AnalyticsTypes.SessionId?
			return SocialLibraries.Dictionary.getDeepValue(state, string.format("%s.bySessionKey.%s", keyPath, key))
		end
	end
end
