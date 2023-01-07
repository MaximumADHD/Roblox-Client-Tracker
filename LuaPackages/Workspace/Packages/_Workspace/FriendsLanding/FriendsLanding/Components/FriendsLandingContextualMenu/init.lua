local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withStyle = UIBlox.Style.withStyle
local withLocalization = dependencies.withLocalization
local ContextualMenu = UIBlox.App.Menu.ContextualMenu
local MenuDirection = UIBlox.App.Menu.MenuDirection
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local Images = UIBlox.App.ImageSet.Images
local mapStateToProps = require(FriendsLanding.Components.FriendsLandingContainer.mapStateToProps)
local RoactRodux = dependencies.RoactRodux
local SocialLibraries = dependencies.SocialLibraries
local compose = SocialLibraries.RoduxTools.compose
local FriendsNetworking = dependencies.FriendsNetworking
local EnumScreens = require(FriendsLanding.EnumScreens)
local memoize = dependencies.memoize
local Otter = dependencies.Otter

local FriendsLandingContextualMenu = Roact.PureComponent:extend("FriendsLandingContextualMenu")

local BOTTOM_Y_POSITION_OFFSET = 24

local MOTOR_ANIMATION_OPTIONS = {
	motorCallback = Otter.instant,
	open = {
		targetValue = 1,
	},
	close = {
		targetValue = 0,
	},
}

function FriendsLandingContextualMenu:init()
	self.onClose = function()
		if self.props.navigation then
			self.props.navigation.goBack()
		end
	end

	self.onUnfriend = memoize(function(message, icon)
		self.props.navigation.navigate(EnumScreens.GenericToast, {
			toastProps = {
				toastContent = {
					toastTitle = message,
					iconImage = icon,
				},
			},
		})
	end)

	self.onActivated = memoize(function(successMessage, errorMessage)
		return function()
			local userId = self.props.navigation.state.params.userId
			if userId ~= nil then
				self.props
					.unfriendTargetUserId({ targetUserId = userId, currentUserId = self.props.localUserId })
					:andThen(function()
						self.onUnfriend(successMessage, Images["icons/actions/friends/friendRemove"])
					end)
					:catch(function()
						self.onUnfriend(errorMessage)
					end)
			end
			self.onClose()
		end
	end)
end

function FriendsLandingContextualMenu:render()
	return withStyle(function(style)
		return withLocalization({
			unfriend = "Feature.Friends.Action.Unfriend",
			error = "Feature.Toast.NetworkingError.SomethingIsWrong",
			success = "Feature.Friends.Action.FriendRemoved",
		})(function(localizedStrings)
			local buttonText = localizedStrings.unfriend
			local successText = localizedStrings.success
			local errorText = localizedStrings.error

			return Roact.createElement(ContextualMenu, {
				buttonProps = {
					{
						icon = Images["icons/actions/friends/friendRemove"],
						text = buttonText,
						onActivated = self.onActivated(successText, errorText),
					},
				},
				open = true,
				menuDirection = MenuDirection.Up,
				openPositionY = UDim.new(1, -BOTTOM_Y_POSITION_OFFSET),
				screenSize = self.props.screenSize,
				onDismiss = self.onClose,
				closeBackgroundVisible = false,
				motorOverrideOptions = MOTOR_ANIMATION_OPTIONS,
			})
		end)
	end)
end

return compose(
	RoactRodux.connect(mapStateToProps, function(dispatch)
		return {
			unfriendTargetUserId = function(params)
				return dispatch(FriendsNetworking.UnfriendTargetUserId.API(params))
			end,
		}
	end),
	FriendsLandingContext.connect(function(state, _)
		return {
			screenSize = state.screenSize,
		}
	end)
)(FriendsLandingContextualMenu)
