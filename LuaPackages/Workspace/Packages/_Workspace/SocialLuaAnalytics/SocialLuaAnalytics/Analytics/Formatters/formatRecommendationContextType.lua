local SocialLuaAnalytics = script.Parent.Parent.Parent
local Enums = require(SocialLuaAnalytics.Analytics.Enums)
local RecommendationContextTypes = Enums.RecommendationContextTypes

return function(context: any)
	if context == nil then
		return nil
	end

	local contextEnum = RecommendationContextTypes[context.rawValue()]

	return contextEnum.rawValue()
end
