local SocialTab = script:FindFirstAncestor("SocialTab")
local compose = require(SocialTab.ContextUtils.compose)
local Analytics = require(SocialTab.Analytics)
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local t = dependencies.t
local RoactRodux = dependencies.RoactRodux
local UniversalAppPolicy = dependencies.UniversalAppPolicy
local mapStateToProps = require(script.mapStateToProps)
local mapDispatchToProps = require(script.mapDispatchToProps)
local SocialTabContext = require(SocialTab.SocialTabContext)

local FreezableUserCarousel = require(script.Parent.FreezableUserCarousel)

local UserCarouselContainer = Roact.PureComponent:extend("UserCarouselContainer")

UserCarouselContainer.defaultProps = {
	LayoutOrder = 0,
	wideMode = false,

	navigateToLuaAppPages = nil,
	goToFriendsLanding = nil,
}

UserCarouselContainer.validateProps = t.interface({
	LayoutOrder = t.optional(t.number),
	wideMode = t.boolean,

	navigateToLuaAppPages = t.optional(t.table),
	goToFriendsLanding = t.optional(t.callback),
})

function UserCarouselContainer:render()
	return Roact.createElement(FreezableUserCarousel, self.props)
end

return compose(
	SocialTabContext.connect(function(context)
		return {
			isLuaProfilePageEnabled = context.isLuaProfilePageEnabled,
		}
	end) or nil,
	RoactRodux.connect(mapStateToProps, mapDispatchToProps),
	Analytics.connect(function(analytics)
		return { analytics = analytics }
	end),
	UniversalAppPolicy.connect(function(appPolicy)
		return {
			enableDisplayNamePolicy = appPolicy.getShowDisplayName(),
			enableFriendFinder = appPolicy.getFriendFinder(),
			accountProviderName = appPolicy.getAccountProviderName(),
			inviteFromAccountProvider = appPolicy.shouldInviteFromAccountProvider(),
		}
	end)
)(UserCarouselContainer)
