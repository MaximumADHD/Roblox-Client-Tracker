local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local withLocalization = dependencies.withLocalization
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local AddFriendsContainer = require(script.Parent.AddFriendsContainer)
local AddFriendsScreen = Roact.PureComponent:extend("AddFriendsScreen")

function AddFriendsScreen:render()
	return withLocalization({
		networkErrorText = "Feature.Toast.NetworkingError.SomethingIsWrong",
		friendAddedText = "Feature.AddFriends.Action.FriendAdded",
		requestIgnoredText = "Feature.AddFriends.Action.RequestIgnored",
		allRequestsIgnoredText = "Feature.Profile.Action.AllRequestsIgnored",
	})(function(localized)
		return FriendsLandingContext.with(function(context)
			return Roact.createElement(AddFriendsContainer, {
				navigation = self.props.navigation,
				navigateToLuaAppPages = context.navigateToLuaAppPages,
				localized = localized,
				wideMode = context.wideMode,
				contactImporterAndPYMKEnabled = context.contactImporterAndPYMKEnabled,
				contactImporterExperimentVariant = context.contactImporterExperimentVariant,
				diagService = context.diagService,
				eventIngestService = context.eventIngestService,
				openProfilePeekView = context.openProfilePeekView,
			})
		end)
	end)
end

return AddFriendsScreen
