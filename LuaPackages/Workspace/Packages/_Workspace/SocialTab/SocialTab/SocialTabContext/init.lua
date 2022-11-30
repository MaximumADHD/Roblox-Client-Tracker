local SocialTab = script:FindFirstAncestor("SocialTab")

local Context = require(script.Context)
local dependencies = require(SocialTab.dependencies)
local ContextUtils = dependencies.SocialLibraries.Context

return {
	Context = Context,
	Provider = Context.Provider,
	Consumer = Context.Consumer,
	with = ContextUtils.getWith(Context),
	connect = ContextUtils.getConnect(Context),
}
