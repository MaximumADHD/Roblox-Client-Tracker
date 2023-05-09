local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local Dash = dependencies.Dash
local withLocalization = dependencies.withLocalization
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local AddFriendsContainer = require(script.Parent.AddFriendsContainer)
local AddFriendsLayerExposure = require(script.Parent.AddFriendsLayerExposure)
local AddFriendsScreen = Roact.PureComponent:extend("AddFriendsScreen")
local getFFlagAddFriendsPYMKExperimentEnabled = require(FriendsLanding.Flags.getFFlagAddFriendsPYMKExperimentEnabled)

function AddFriendsScreen:render()
	return withLocalization({
		networkErrorText = "Feature.Toast.NetworkingError.SomethingIsWrong",
		friendAddedText = "Feature.AddFriends.Action.FriendAdded",
		requestIgnoredText = "Feature.AddFriends.Action.RequestIgnored",
		allRequestsIgnoredText = "Feature.Profile.Action.AllRequestsIgnored",
		requestSentText = if getFFlagAddFriendsPYMKExperimentEnabled()
			then "Feature.Friends.Action.FriendRequestSent"
			else nil,
	})(function(localized)
		return FriendsLandingContext.with(function(context)
			return if getFFlagAddFriendsPYMKExperimentEnabled()
				then Roact.createElement(AddFriendsLayerExposure, {
					renderChild = function(layerProps)
						return Roact.createElement(
							AddFriendsContainer,
							Dash.join(layerProps or {}, {
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
						)
					end,
				})
				else Roact.createElement(AddFriendsContainer, {
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
