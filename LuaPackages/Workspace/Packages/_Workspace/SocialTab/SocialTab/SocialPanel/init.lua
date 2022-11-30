local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local SocialPanelUserList = require(SocialTab.SocialPanel.SocialPanelUserList)
local SocialPanelUserProfile = require(SocialTab.SocialPanel.SocialPanelUserProfile)
local SocialPanelFriendFinder = require(SocialTab.SocialPanel.SocialPanelFriendFinder)

local React = dependencies.React
local UIBlox = dependencies.UIBlox

local RefreshScrollingFrame = dependencies.SocialLibraries.Components.RefreshScrollingFrame

local HorizontalPageMargin = UIBlox.App.Container.HorizontalPageMargin

local TOP_BAR_PADDING = 24
local PROFILE_PADDING = 22

export type SocialPanelProps = {
	onAddFriends: any,
	onGoToFriendsPage: any,
	topBarHeight: number,
	onRefresh: any,
}

local function SocialPanel(props: SocialPanelProps)
	local onAddFriends = props.onAddFriends
	local onGoToFriendsPage = props.onGoToFriendsPage
	local topBarHeight = props.topBarHeight
	local onRefresh = props.onRefresh

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		LayoutOrder = 2,
	}, {
		ScrollView = React.createElement(RefreshScrollingFrame, {
			scrollingElementProps = {
				Size = UDim2.new(1, 0, 1, -topBarHeight),
				ScrollBarThickness = 0,
				BackgroundTransparency = 1,
				CanvasSize = UDim2.new(1, 0, 1, -topBarHeight + 1), -- 1px for pull down to refresh
				AutomaticCanvasSize = Enum.AutomaticSize.XY,
				ScrollingDirection = Enum.ScrollingDirection.Y,
			},
			refresh = onRefresh,
		}, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			pageMargin = React.createElement(HorizontalPageMargin, {
				size = UDim2.new(1, 0, 0, 0),
				useAutomaticSizing = true,
				layoutOrder = 1,
				backgroundTransparency = 1,
			}, {
				Layout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				SocialPanelFriendFinder = React.createElement(SocialPanelFriendFinder, {
					layoutOrder = 1,
					onAddFriends = onAddFriends,
					onGoToFriendsPage = onGoToFriendsPage,
				}),
				spacerTopBar = React.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, TOP_BAR_PADDING),
					BackgroundTransparency = 1,
					LayoutOrder = 2,
				}),
				SocialPanelUserList = React.createElement(SocialPanelUserList, {
					layoutOrder = 3,
					renderItem = function(userProps, index)
						return React.createElement(SocialPanelUserProfile, userProps)
					end,
				}),
				spacerProfile = React.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, PROFILE_PADDING),
					BackgroundTransparency = 1,
					LayoutOrder = 4,
				}),
			}),
		}),
	})
end

return SocialPanel
