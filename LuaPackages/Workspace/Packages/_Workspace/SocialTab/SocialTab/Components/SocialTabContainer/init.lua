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

local mapStateToProps = require(script.mapStateToProps)
local mapDispatchToProps = require(script.mapDispatchToProps)
local SocialTabPage = require(script.Parent.SocialTabPage)
local UserCarousel = require(SocialTab.UserCarousel)

local SocialTabContainer = Roact.PureComponent:extend("SocialTabContainer")

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

		return {
			enableDisplayNamePolicy = appPolicy.getShowDisplayName(),
			shouldShowGroupsTilePolicy = appPolicy.getShouldShowGroupsTile(),
			enableNotificationsPolicy = enableNotificationsPolicy,
		}
	end)
)(SocialTabContainer)
