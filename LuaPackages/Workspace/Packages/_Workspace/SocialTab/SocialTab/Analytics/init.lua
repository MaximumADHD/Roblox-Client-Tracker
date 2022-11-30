local SocialTab = script:FindFirstAncestor("SocialTab")

local Context = require(script.AnalyticsContext)
local dependencies = require(SocialTab.dependencies)
local ContextUtils = dependencies.SocialLibraries.Context

return {
	Class = require(script.SocialTabAnalytics),
	Context = Context,
	connect = ContextUtils.getConnect(Context),
	with = ContextUtils.getWith(Context),
}
