local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local withLocalization = dependencies.withLocalization

local UniversalAppPolicy = dependencies.UniversalAppPolicy

local SocialLibraries = dependencies.SocialLibraries
local compose = SocialLibraries.RoduxTools.compose
local memoize = dependencies.memoize

local FriendsLandingAnalytics = require(FriendsLanding.FriendsLandingAnalytics)
local mapStateToProps = require(script.mapStateToProps)
local mapDispatchToProps = require(script.mapDispatchToProps)
local ShowMoreWrapper = require(FriendsLanding.Components.ShowMoreWrapper)
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local filterFriends = require(FriendsLanding.Friends.filterFriends)
local sortFriends = require(FriendsLanding.Friends.sortFriends)
local Logger = dependencies.Logger

local FriendsLandingContainer = Roact.PureComponent:extend("FriendsLandingContainer")

local DEFAULT_ROW_COUNT = 6
local DEFAULT_TILE_COUNT = 2

FriendsLandingContainer.defaultProps = {
	visibleRows = DEFAULT_ROW_COUNT,
	tilesPerRow = DEFAULT_TILE_COUNT,
	Logger = Logger,
	contentComponent = ShowMoreWrapper,
}

function FriendsLandingContainer:init()
	self.localization = {
		pageError = "CommonUI.Messages.Response.PageError",
	}

	self.filterFriends = memoize(filterFriends)
	self.sortFriends = memoize(sortFriends)
end

function FriendsLandingContainer:render()
	return withLocalization(self.localization)(function(localizedStrings)
		return Roact.createElement(
			self.props.contentComponent,
			llama.Dictionary.join(self.props, {
				totalFriendCount = #self.props.friends,
				friends = self.sortFriends(self.filterFriends(self.props.friends, self.props.filter)),
				localizedStrings = localizedStrings,
			})
		)
	end)
end

return compose(
	RoactRodux.connect(mapStateToProps, mapDispatchToProps),
	UniversalAppPolicy.connect(function(appPolicy)
		return {
			enableDisplayNamePolicy = appPolicy.getShowDisplayName(),
		}
	end),
	FriendsLandingContext.connect(function(context)
		return {
			navigateToLuaAppPages = context.navigateToLuaAppPages,
			wideMode = context.wideMode,
			filter = context.filter,
			isLuobu = context.isLuobu,
			setFilterKeys = context.setFilterKeys,
			refreshPage = context.refreshPage,
		}
	end),
	FriendsLandingAnalytics.connect(function(analytics)
		return {
			analytics = analytics,
		}
	end)
)(FriendsLandingContainer)
