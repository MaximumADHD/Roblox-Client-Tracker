--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama
local Roact = dependencies.Roact
local memoize = dependencies.memoize

local Dictionary = llama.Dictionary

local FriendsLandingPage = require(FriendsLanding.Components.FriendsLandingPage)
local limitFriends = require(script.helpers.limitFriends)
local updateFriendsWithWidth = require(script.helpers.updateFriendsWithWidth)
local loadFriendGroup = require(script.helpers.loadFriendGroup)
local friendsPerRow = require(script.helpers.friendsPerRow)
local friendsPerLoadGroup = require(script.helpers.friendsPerLoadGroup)
local ShowMoreButton = require(FriendsLanding.Components.ShowMoreButton)
local ButtonClickEvents = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)
local filterStates = require(FriendsLanding.Friends.filterStates)

local ShowMoreWrapper = Roact.PureComponent:extend("ShowMoreWrapper")

local DEFAULT_ROW_COUNT = 6
local PLAYER_TILE_SIZE = 175
local DEFAULT_WIDTH = 100

ShowMoreWrapper.defaultProps = {
	listComponent = FriendsLandingPage,
	itemSize = PLAYER_TILE_SIZE,
	visibleRows = DEFAULT_ROW_COUNT,
	friends = {},
	analytics = nil,
	filter = filterStates.All,
	overrideRenderShowMore = nil,
	handleShowMore = nil,
	spacingIfEmpty = 48,
}

function ShowMoreWrapper:init()
	self.state = {
		width = DEFAULT_WIDTH,
		filterFriendCounts = Dictionary.map(filterStates, function()
			return self.props.visibleRows
		end),
	}

	self.updateWidth = function(rbx)
		self:setState(updateFriendsWithWidth(rbx.AbsoluteSize.X))
	end

	self.reset = function()
		self:setState(function(oldState, oldProps)
			return {
				filterFriendCounts = Dictionary.join(
					self.state.filterFriendCounts,
					{ [self.props.filter] = friendsPerLoadGroup(oldState, oldProps) }
				),
			}
		end)
	end

	self.showMore = function()
		if self.props.analytics then
			self.props.analytics:buttonClick(ButtonClickEvents.LoadMoreFriends)
		end

		if self.props.handleShowMore then
			self.props.handleShowMore(friendsPerRow(Dictionary.join({
				width = self.state.width,
			}, self.props)))
			return
		end

		self:setState(loadFriendGroup)
	end

	self.limitFriends = memoize(limitFriends)

	self.renderShowMore = memoize(function(totalItemCount, visibleItemCount, overrideRenderShowMore)
		return function(layoutOrder)
			local override = overrideRenderShowMore and overrideRenderShowMore(visibleItemCount)

			if totalItemCount > visibleItemCount or override then
				return Roact.createElement(ShowMoreButton, {
					layoutOrder = layoutOrder,
					onSizeChange = self.updateWidth,
					onActivated = self.showMore,
				})
			else
				return Roact.createElement("Frame", {
					Name = "showMoreSpacing",
					Size = UDim2.fromOffset(0, self.props.spacingIfEmpty),
					BackgroundTransparency = 1,
					LayoutOrder = layoutOrder,
				})
			end
		end
	end)

	-- Reset the ShowMoreWrapper status when the key props have changed to ensure the show more algorithm will not be broken
	self.checkAndResetIfNeeded = function(oldProps)
		if #self.props.friends ~= #oldProps.friends or oldProps.visibleRows ~= self.props.visibleRows then
			self.reset()
		end
	end
end

function ShowMoreWrapper:didUpdate(oldProps)
	self.checkAndResetIfNeeded(oldProps)
end

function ShowMoreWrapper:render()
	local filterFriendCounts = self.state.filterFriendCounts
	local filter = self.props.filter
	local friendCount = filterFriendCounts[filter]
	return Roact.createElement(
		self.props.listComponent,
		Dictionary.join(self.props, {
			friends = self.limitFriends(friendCount, self.props.friends),
			showMore = self.showMore,
			totalFilteredFriends = #self.props.friends,
			renderShowMore = self.renderShowMore(#self.props.friends, friendCount, self.props.overrideRenderShowMore),
			resetShowMore = self.reset,
			totalInactiveFriends = self.props.totalInactiveFriends,
		})
	)
end

return ShowMoreWrapper
