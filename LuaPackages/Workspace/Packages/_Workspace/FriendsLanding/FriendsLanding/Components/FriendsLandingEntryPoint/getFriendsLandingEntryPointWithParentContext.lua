local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local FriendsLandingNavigator = require(FriendsLanding.Navigator)
local FriendsLandingEntryPoint = require(FriendsLanding.Components.FriendsLandingEntryPoint)

return function(parentContext)
	assert(type(parentContext.with) == "function", "Expect parentContext to have with")

	local FriendsLandingEntryPointWithParentContext =
		Roact.Component:extend("FriendsLandingEntryPointWithParentContext")

	function FriendsLandingEntryPointWithParentContext:render()
		local entryPage = self.props.navigation.getParam("EntryPage")
		return parentContext.with(function(context)
			return Roact.createElement(FriendsLandingEntryPoint, {
				navigation = self.props.navigation,
				navigateToLuaAppPages = context.navigateToLuaAppPages,
				luaAppPages = context.luaAppPages,
				friendsRequestEventListener = context.friendsRequestEventListener,
				robloxEventReceiver = context.robloxEventReceiver,
				getLoadingTimeInfo = context.getNavigatingFromSocialTabEvent,
				entryPage = entryPage,
				luaAddFriendsPageEnabled = context.luaAddFriendsPageEnabled,
				contactImporterAndPYMKEnabled = context.contactImporterAndPYMKEnabled or nil,
				diagService = context.diagService,
				eventIngestService = context.eventIngestService,
				openProfilePeekView = context.openProfilePeekView,
				wideMode = context.wideMode,
			})
		end)
	end

	FriendsLandingEntryPointWithParentContext.router = FriendsLandingNavigator.router

	return FriendsLandingEntryPointWithParentContext
end
