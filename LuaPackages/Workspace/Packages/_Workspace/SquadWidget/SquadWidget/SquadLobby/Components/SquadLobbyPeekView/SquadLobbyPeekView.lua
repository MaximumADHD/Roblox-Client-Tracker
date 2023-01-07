local SquadWidget = script:FindFirstAncestor("SquadWidget")
local dependencies = require(SquadWidget.dependencies)

local Roact = dependencies.Roact
local React = dependencies.React
local UIBlox = dependencies.UIBlox
local dependencyArray = dependencies.Hooks.dependencyArray
local PeekView = dependencies.PeekView.PeekView
local useSelector = dependencies.Hooks.useSelector

local ModelTypes = require(SquadWidget.SquadLobby.Common.ModelTypes)
local SquadLobbyTopBar = require(SquadWidget.SquadLobby.Components.SquadLobbyTopBar.SquadLobbyTopBar)
local SquadLobbyActionBar = require(SquadWidget.SquadLobby.Components.SquadLobbyActionBar.SquadLobbyActionBar)
local SquadLobbyUsers = require(SquadWidget.SquadLobby.Components.SquadLobbyUsers.SquadLobbyUsers)
local SquadLobbyPeekViewTopBar = require(SquadWidget.SquadLobby.Components.SquadLobbyPeekViewTopBar)
local Constants = require(SquadWidget.SquadLobby.Common.Constants)

local RetrievalStatus = UIBlox.App.Loading.Enum.RetrievalStatus
local useStyle = UIBlox.Core.Style.useStyle

local BUTTON_BAR_BOTTOM_PADDING = 24
local OFFSET_HIDE_DRAGGER_ROUNDED_CORNER = 6

type Props = {
	viewHeight: number,
	viewWidth: number,
	peekViewProps: ModelTypes.PeekViewProps,
	users: { [number]: ModelTypes.User },
}

local function statusBarSelector(state): number
	return state.TopBar.statusBarHeight
end

local SquadLobbyPeekView = function(props: Props)
	local style = useStyle()
	local statusBarHeight = useSelector(statusBarSelector)
	local topBarOpacity, setTopBarOpacity = React.useState(0)

	local briefToFullTransitionPercent = React.useCallback(function(percent)
		setTopBarOpacity(percent)
	end, {})

	local SquadLobbyPeekView = React.useMemo(
		function()
			local showTopBar = topBarOpacity > 0.95
			local showTopBarEffectHolder = topBarOpacity > 0 and not showTopBar
			return {
				PeekViewTopBar = if showTopBar
					then Roact.createElement(SquadLobbyPeekViewTopBar, {
						navigateBack = function()
							props.peekViewProps.onPeekViewGoBack()
						end,
					})
					else nil,
				PeekViewTopBarEffectHolder = showTopBarEffectHolder and Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, statusBarHeight + Constants.PEEK_VIEW_BAR_HEIGHT),
					Position = UDim2.new(0, 0, 0, 0),
					BackgroundColor3 = style.Theme.BackgroundDefault.Color,
					BackgroundTransparency = (1 - topBarOpacity),
					BorderSizePixel = 0,
				}),
				PeekViewContainer = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, -Constants.PEEK_VIEW_BAR_HEIGHT + OFFSET_HIDE_DRAGGER_ROUNDED_CORNER),
					Position = UDim2.new(0, 0, 0, Constants.PEEK_VIEW_BAR_HEIGHT - OFFSET_HIDE_DRAGGER_ROUNDED_CORNER),
					BackgroundTransparency = 1,
					ClipsDescendants = true,
				}, {
					PeekView = Roact.createElement(PeekView, {
						bottomDockedContainerContent = {
							PeekViewBottomBar = Roact.createElement(SquadLobbyActionBar, {
								-- TODO: Show Loading state if still fetching
								actionBarLoadingStatus = RetrievalStatus.Done.rawValue(),
							}),
						},
						bottomDockedContainerHeight = Constants.ACTION_BAR_HEIGHT + BUTTON_BAR_BOTTOM_PADDING,
						briefToFullTransitionPercent = briefToFullTransitionPercent,
						briefViewContentHeight = UDim.new(0, props.viewWidth + Constants.ACTION_BAR_HEIGHT),
						mountAnimation = props.peekViewProps.mountAnimation,
						mountAsFullView = props.peekViewProps.mountAsFullView,
					}, {
						PeekViewContent = Roact.createElement("Frame", {
							Size = UDim2.new(1, 0, 1, 0),
							BackgroundTransparency = 1,
						}, {
							UIListLayout = Roact.createElement("UIListLayout", {
								FillDirection = Enum.FillDirection.Vertical,
								HorizontalAlignment = Enum.HorizontalAlignment.Left,
								Padding = UDim.new(0, 28),
								SortOrder = Enum.SortOrder.LayoutOrder,
								VerticalAlignment = Enum.VerticalAlignment.Top,
							}),
							UIPadding = Roact.createElement("UIPadding", {
								PaddingBottom = UDim.new(0, 20),
								PaddingLeft = UDim.new(0, 24),
								PaddingRight = UDim.new(0, 24),
								PaddingTop = UDim.new(0, 20),
							}),
							SquadLobbyTopBar = Roact.createElement(SquadLobbyTopBar, {
								layoutOrder = 0,
								navigateBack = function()
									props.peekViewProps.onPeekViewGoBack()
								end,
								numUsers = #props.users,
								-- TODO (COEXP-1069): Get group call title
								title = "test title",
							}),
							SquadLobbyUsers = Roact.createElement(SquadLobbyUsers, {
								layoutOrder = 1,
								users = props.users,
							}),
						}),
					}),
				}),
			}
		end,
		dependencyArray(
			topBarOpacity,
			props.users,
			props.viewWidth,
			props.peekViewProps.mountAsFullView,
			props.peekViewProps.mountAnimation,
			props.peekViewProps.onPeekViewGoBack
		)
	)

	return Roact.createElement("Frame", {
		Size = UDim2.fromOffset(props.viewWidth, props.viewHeight),
		Position = UDim2.fromOffset(0, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}, SquadLobbyPeekView)
end

return SquadLobbyPeekView
