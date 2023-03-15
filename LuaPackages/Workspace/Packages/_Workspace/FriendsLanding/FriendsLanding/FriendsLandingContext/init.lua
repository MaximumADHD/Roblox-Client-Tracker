local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local ContextUtils = dependencies.SocialLibraries.Context
local React = dependencies.React

local Context = require(script.Context)

return {
	Context = Context,
	Provider = Context.Provider,
	Consumer = Context.Consumer,
	with = ContextUtils.getWith(Context),
	connect = ContextUtils.getConnect(Context),
	useContext = function()
		return React.useContext(Context) :: any
	end,
}
