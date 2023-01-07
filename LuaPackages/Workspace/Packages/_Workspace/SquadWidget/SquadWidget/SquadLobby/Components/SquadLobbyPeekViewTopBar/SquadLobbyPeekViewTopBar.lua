local SquadWidget = script:FindFirstAncestor("SquadWidget")

local dependencies = require(SquadWidget.dependencies)
local useSelector = dependencies.Hooks.useSelector

local Roact = dependencies.Roact
local React = dependencies.React
local UIBlox = dependencies.UIBlox
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images
local useStyle = UIBlox.Core.Style.useStyle

local Constants = require(SquadWidget.SquadLobby.Common.Constants)

local NAVIGATION_BUTTON_LEFT_PADDING = 15
local NAVIGATION_ICON_SIZE = 28
local CLOSE_BUTTON_IMAGE = Images["icons/navigation/close"]

type Props = {
	navigateBack: () -> (),
}

local function statusBarSelector(state): number
	return state.TopBar.statusBarHeight
end

local SquadLobbyPeekViewTopBar = function(props: Props)
	local style = useStyle()
	local statusBarHeight = useSelector(statusBarSelector)
	local topBarHeight = statusBarHeight + Constants.PEEK_VIEW_BAR_HEIGHT
	local buttonTopMargin = statusBarHeight
	local isMounted = React.useRef(false)
	React.useEffect(function()
		isMounted.current = true
		return function()
			isMounted.current = false
		end
	end, {})

	local onNavigationButtonActivated = React.useCallback(function()
		if isMounted then
			props.navigateBack()
		end
	end, {})

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, topBarHeight),
		Position = UDim2.new(0, 0, 0, 0),
		Active = true,
		BackgroundColor3 = style.Theme.BackgroundDefault.Color,
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
	}, {
		LeftNavigationButton = Roact.createElement("TextButton", {
			Size = UDim2.fromOffset(NAVIGATION_ICON_SIZE, NAVIGATION_ICON_SIZE),
			Position = UDim2.new(0, NAVIGATION_BUTTON_LEFT_PADDING, 0, buttonTopMargin),
			BackgroundTransparency = 1,
			Text = "",
			[Roact.Event.Activated] = onNavigationButtonActivated,
		}, {
			CloseButtonImage = Roact.createElement(ImageSetLabel, {
				Size = UDim2.fromOffset(NAVIGATION_ICON_SIZE, NAVIGATION_ICON_SIZE),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Image = CLOSE_BUTTON_IMAGE,
				ImageColor3 = style.Theme.SystemPrimaryDefault.Color,
				ImageTransparency = style.Theme.SystemPrimaryDefault.Transparency,
			}),
		}),
	})
end

return SquadLobbyPeekViewTopBar
