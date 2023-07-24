local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local ChromeService = require(script.Parent.Parent.Service)

local _integrations = require(script.Parent.Parent.Integrations)
local SubMenu = require(script.Parent.SubMenu)
local WindowManager = require(script.Parent.WindowManager)
local Constants = require(script.Parent.Constants)

local useChromeMenuItems = require(script.Parent.Parent.Hooks.useChromeMenuItems)
local useChromeMenuStatus = require(script.Parent.Parent.Hooks.useChromeMenuStatus)

local IconHost = require(script.Parent.ComponentHosts.IconHost)

local ReactOtter = require(CorePackages.Packages.ReactOtter)

type Array<T> = { [number]: T }
type Table = { [any]: any }

-- Configure the menu.  Top level ordering, integration availability.
-- Integration availability signals will ultimately filter items out so no need for granular filtering here.
-- ie. Voice Mute integration will only be shown is voice is enabled/active
ChromeService:configureMenu({
	{ "trust_and_safty" },
	{ "toggle_mic_mute", "selfie_view", "dummy_window", "dummy_window_2" },
	{ ChromeService.Key.MostRecentlyUsed, "nine_dot", "chrome_toggle" },
})
ChromeService:configureSubMenu("nine_dot", { "chat", "leaderboard", "emotes", "backpack" })
ChromeService:setRecentlyUsed("chat", true)

-- Vertical divider bar that separates groups of icons within the Unibar
function IconDivider(props)
	local style = useStyle()

	return React.createElement("Frame", {
		Position = props.position,
		Size = UDim2.new(0, Constants.DIVIDER_CELL_WIDTH, 1, 0),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		LayoutOrder = props.integration.order,
	}, {
		DividerBar = React.createElement("Frame", {
			Position = UDim2.new(0, 2, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			Size = UDim2.new(0, 1, 0, 28),
			BorderSizePixel = 0,
			BackgroundColor3 = style.Theme.Divider.Color,
			BackgroundTransparency = style.Theme.Divider.Transparency,
		}),
	})
end

-- Non-visible helper child component to avoid parent re-renders
-- Updates animation targets based Chrome status
function AnimationStateHelper(props)
	if useChromeMenuStatus() == ChromeService.MenuStatus.Open then
		props.setToggleTransition(ReactOtter.spring(1, Constants.MENU_ANIMATION_SPRING))
	else
		props.setToggleTransition(ReactOtter.spring(0, Constants.MENU_ANIMATION_SPRING))
	end
	return nil
end

-- React Binding value to drive Icon positions within the unibar
function IconPositionBinding(toggleTransition: any, openPosition: number, closedPosition: number)
	return toggleTransition:map(function(value)
		local openDelta = openPosition - closedPosition
		return UDim2.new(0, closedPosition + openDelta * value, 0, 0)
	end) :: any
end

function Unibar(props)
	-- Tree of menu items to display
	local menuItems = useChromeMenuItems()

	-- todo: Consider moving globally useful items such as animations into a Context (vs prop pushing)
	-- Animation for menu open(toggleTransition = 1), closed(toggleTransition = 0) status
	local toggleTransition, setToggleTransition = ReactOtter.useAnimatedBinding(0)

	local children: Table = {} -- Icons and Dividers to be rendered
	local pinnedCount = 0 -- number of icons to support when closed
	local xOffset = 0 -- x advance layout / overall width
	local xOffsetPinned = 0 -- x advance layout for pinned items (used when closed)
	local minSize: number = 0
	local expandSize: number = 0

	local unibarSizeBinding = toggleTransition:map(function(value: number): any
		return UDim2.new(0, minSize + value * expandSize, 0, Constants.ICON_CELL_WIDTH)
	end)

	for k, item in menuItems do
		if item.isDivider then
			local closedPos = xOffset + Constants.ICON_CELL_WIDTH
			children[item.id or ("icon" .. k)] = React.createElement(IconDivider, {
				position = IconPositionBinding(toggleTransition, xOffset, closedPos) :: any,
				toggleTransition = toggleTransition,
				integration = item,
			})
			xOffset += Constants.DIVIDER_CELL_WIDTH
		elseif item.integration then
			local pinned = false
			local closedPos = xOffset + Constants.ICON_CELL_WIDTH
			if item.integration.availability:get() == ChromeService.AvailabilitySignal.Pinned then
				pinned = true
				closedPos = xOffsetPinned
				pinnedCount += 1
			end

			local positionBinding = IconPositionBinding(toggleTransition, xOffset, closedPos)

			-- Clip the remaining few pixels on the right edge of the unibar during transition
			local visibleBinding = React.joinBindings({ positionBinding, unibarSizeBinding }):map(function(values)
				local position: UDim2 = values[1]
				local size: UDim2 = values[2]
				return position.X.Offset <= (size.X.Offset - Constants.ICON_CELL_WIDTH)
			end)

			children[item.id or ("icon" .. k)] = React.createElement(IconHost, {
				position = positionBinding :: any,
				visible = visibleBinding,
				toggleTransition = toggleTransition,
				integration = item,
			}) :: any
			xOffset += Constants.ICON_CELL_WIDTH
			if pinned then
				xOffsetPinned += Constants.ICON_CELL_WIDTH
			end
		end
	end

	minSize = Constants.ICON_CELL_WIDTH * pinnedCount
	expandSize = xOffset - minSize
	local style = useStyle()

	return React.createElement("Frame", {
		Size = unibarSizeBinding,
		ClipsDescendants = true,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		ref = props.menuFrameRef,
	}, {
		React.createElement(AnimationStateHelper, {
			setToggleTransition = setToggleTransition,
		}),
		-- Background
		React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
			BackgroundTransparency = style.Theme.BackgroundUIContrast.Transparency,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		}),
		-- IconRow
		React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
		}, children),
	} :: Array<any>)
end

type UnibarMenuProp = {
	layoutOrder: number,
}

local UnibarMenu = function(props: UnibarMenuProp)
	local menuFrame = React.useRef(nil)
	local menuOutterFrame = React.useRef(nil)

	-- AutomaticSize isn't working for this use-case
	-- Update size manually
	local function updateSize()
		if menuOutterFrame.current and menuFrame.current then
			menuOutterFrame.current.Size = menuFrame.current.Size
		end
	end

	React.useEffect(function()
		local conn
		if menuFrame and menuFrame.current then
			conn = menuFrame.current:GetPropertyChangedSignal("Size"):Connect(updateSize)
		end

		updateSize()

		return function()
			if conn then
				conn:disconnect()
			end
		end
	end)

	return {
		React.createElement("Frame", {
			Name = "UnibarMenu",
			AutomaticSize = Enum.AutomaticSize.Y,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
			ref = menuOutterFrame,
		}, {
			React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Padding = UDim.new(0, 10),
			}) :: any,
			React.createElement(Unibar, { menuFrameRef = menuFrame }) :: any,
			React.createElement(SubMenu) :: any,
			React.createElement(WindowManager) :: React.React_Element<any>,
		}),
	}
end

-- Block outter renders while we have new props
return React.memo(UnibarMenu :: any)
