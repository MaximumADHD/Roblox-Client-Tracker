local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization
local RoactNavigation = dependencies.RoactNavigation
local NavigationActions = RoactNavigation.Actions
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local EnumScreens = require(FriendsLanding.EnumScreens)
local FriendsLandingHeaderBarPresentational = require(script.FriendsLandingHeaderBarPresentational)
local HeaderBar = UIBlox.App.Bar.HeaderBar

local getActiveChildNavigationOptionsSafely = require(FriendsLanding.Navigator.getActiveChildNavigationOptionsSafely)

local getFFlagAddFriendsSearchbarIXPEnabled = dependencies.getFFlagAddFriendsSearchbarIXPEnabled

local FriendsLandingHeaderBar = Roact.PureComponent:extend("FriendsLandingHeaderBar")

function FriendsLandingHeaderBar:init()
	self.renderLeft = function(navigation, exitFriendsLanding, shouldRenderCenter)
		if shouldRenderCenter then
			return function()
				return nil
			end
		end

		return HeaderBar.renderLeft.backButton(function()
			-- navigation.state.index is 1 when we're at the root of our navigator's within appRouter
			-- in the case of within SocialTab, the exitFriendsLanding function is nil
			if navigation.state.index == 1 and exitFriendsLanding then
				exitFriendsLanding()
			else
				-- https://github.com/react-navigation/react-navigation/issues/697
				navigation.dispatch(NavigationActions.back())
			end
		end)
	end
end

function FriendsLandingHeaderBar:render()
	return FriendsLandingContext.with(function(context)
		local navigation = self.props.navigation
		local navigationOptions = getActiveChildNavigationOptionsSafely(navigation)
		local exitFriendsLanding = context and context.exitFriendsLanding or nil
		local headerText = navigationOptions.headerText
		local screenTopBar = context.getScreenTopBar(EnumScreens.FriendsLanding)
		return withLocalization({
			titleText = headerText.raw,
		})(function(localized)
			local titleText = localized.titleText

			if getFFlagAddFriendsSearchbarIXPEnabled() and context.addFriendsPageSearchbarEnabled then
				local wideModeSearchbarButton = context.wideMode
					and navigationOptions.shouldRenderSearchbarButtonInWideMode
				return Roact.createElement(FriendsLandingHeaderBarPresentational, {
					title = titleText,
					renderLeft = not screenTopBar.shouldRenderCenter and navigationOptions.renderLeft
						or self.renderLeft(navigation, exitFriendsLanding, screenTopBar.shouldRenderCenter),
					renderCenter = if (screenTopBar.shouldRenderCenter or wideModeSearchbarButton)
						then navigationOptions.renderCenter
						else nil,
					renderRight = navigationOptions.renderRight,
					isSecondary = navigationOptions.useSecondaryHeader,
					shouldHideSecondaryLeftItem = screenTopBar.shouldRenderCenter,
				})
			else
				return Roact.createElement(FriendsLandingHeaderBarPresentational, {
					title = titleText,
					renderLeft = not screenTopBar.shouldRenderCenter and navigationOptions.renderLeft
						or self.renderLeft(navigation, exitFriendsLanding, screenTopBar.shouldRenderCenter),
					renderCenter = screenTopBar.shouldRenderCenter and navigationOptions.renderCenter or nil,
					renderRight = navigationOptions.renderRight,
				})
			end
		end)
	end)
end

return FriendsLandingHeaderBar
