local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Analytics = require(SocialTab.Analytics)
local SocialTabContext = require(SocialTab.SocialTabContext)
local compose = require(SocialTab.ContextUtils.compose)

local llama = dependencies.llama
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local withLocalization = dependencies.withLocalization
local UniversalAppPolicy = dependencies.UniversalAppPolicy
local getFFlagSocialPanelIAEnabled = dependencies.getFFlagSocialPanelIAEnabled
local SelfViewProfileDiscoverabilityUpsellIXP = dependencies.SelfViewProfileDiscoverabilityUpsellIXP

local mapStateToProps = require(script.mapStateToProps)
local mapDispatchToProps = require(script.mapDispatchToProps)
local SocialTabPage = require(script.Parent.SocialTabPage)
local UserCarousel = require(SocialTab.UserCarousel)

local SocialTabContainer = Roact.PureComponent:extend("SocialTabContainer")

local GetFFlagHideConnectPageWebViewItemsForVR = dependencies.GetFFlagHideConnectPageWebViewItemsForVR

SocialTabContainer.defaultProps = {}

function SocialTabContainer:init()
	self.localization = {
		socialText = "Feature.SocialTab.Label.Connect",
		chatsText = "Feature.SocialTab.Label.Chats",
		groupsText = "Feature.SocialTab.Label.Groups",
	}
end

function SocialTabContainer:didMount()
	self.props.fetchFriendsRequestsCount()
end

function SocialTabContainer:render()
	return withLocalization(self.localization)(function(localizedStrings)
		return Analytics.with(function(analytics)
			return SocialTabContext.with(function(context)
				local isDrawerPanel = false
				local isSocialPanelFullScreen = false
				if getFFlagSocialPanelIAEnabled() then
					local iaExperimentation = context.iaExperimentation
					if iaExperimentation and iaExperimentation.isEnabled() then
						isDrawerPanel = iaExperimentation.default:shouldShowSocialPanel()
						isSocialPanelFullScreen = iaExperimentation.default:shouldShowSocialPanelFullscreen()
					end
				end

				return Roact.createElement(
					SocialTabPage,
					llama.Dictionary.join(self.props, {
						analytics = analytics,
						navigateToLuaAppPages = context.navigateToLuaAppPages,
						renderUserCarousel = UserCarousel.render,
						wideMode = context.wideMode,
						navigatingFromSocialTabEvent = context.setNavigatingFromSocialTabEvent,
						isProfileShareEnabled = if context.isProfileShareEnabled then true else false,
						isLuaProfilePageEnabled = context.isLuaProfilePageEnabled,
						luaAddFriendsPageEnabled = if context.luaAddFriendsPageEnabled then true else false,
						luaSelfProfileEnabled = context.luaSelfProfileEnabled,
						isDrawerPanel = isDrawerPanel,
						isSocialPanelFullScreen = isSocialPanelFullScreen,
						closeCentralOverlay = if SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled()
							then context.closeCentralOverlay
							else nil,
						openLearnMoreLink = if SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled()
							then context.openLearnMoreLink
							else nil,
						showToast = if SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled()
							then context.showToast
							else nil,
						discoverabilityUpsellOnProfileSelfViewEnabled = if SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled()
							then context.discoverabilityUpsellOnProfileSelfViewEnabled
							else nil,
					}, localizedStrings)
				)
			end)
		end)
	end)
end

return compose(
	RoactRodux.connect(mapStateToProps, mapDispatchToProps),

	UniversalAppPolicy.connect(function(appPolicy)
		local enableNotificationsPolicy = appPolicy.getChatHeaderNotifications()
		local disableWebViewSupport = if GetFFlagHideConnectPageWebViewItemsForVR()
			then not appPolicy.getWebViewSupport()
			else nil

		return {
			enableDisplayNamePolicy = appPolicy.getShowDisplayName(),
			shouldShowGroupsTilePolicy = appPolicy.getShouldShowGroupsTile(),
			enableNotificationsPolicy = enableNotificationsPolicy,
			disableWebViewSupport = disableWebViewSupport,
		}
	end)
)(SocialTabContainer)
