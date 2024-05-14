local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local ContextActionService = game:GetService("ContextActionService")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local Chrome = script.Parent.Parent
local ChromeService = require(Chrome.Service)
local ChromeUtils = require(Chrome.Service.ChromeUtils)
local ViewportUtil = require(Chrome.Service.ViewportUtil)

local _integrations = require(Chrome.Integrations)
local SubMenu = require(script.Parent.SubMenu)
local WindowManager = require(script.Parent.WindowManager)
local Constants = require(script.Parent.Constants)
local HealthBar = require(script.Parent.HealthBar)

local useChromeMenuItems = require(Chrome.Hooks.useChromeMenuItems)
local useChromeMenuStatus = require(Chrome.Hooks.useChromeMenuStatus)
local useObservableValue = require(Chrome.Hooks.useObservableValue)
local useMappedObservableValue = require(Chrome.Hooks.useMappedObservableValue)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local PlayerListInitialVisibleState = require(RobloxGui.Modules.PlayerList.PlayerListInitialVisibleState)

local IconHost = require(script.Parent.ComponentHosts.IconHost)

local ReactOtter = require(CorePackages.Packages.ReactOtter)

local GetFFlagUnibarRespawn = require(Chrome.Flags.GetFFlagUnibarRespawn)
local GetFFlagEnableUnibarSneakPeak = require(Chrome.Flags.GetFFlagEnableUnibarSneakPeak)
local GetFFlagNewUnibarIA = require(Chrome.Flags.GetFFlagNewUnibarIA)
local GetFFlagEnableChromePinIntegrations = require(Chrome.Flags.GetFFlagEnableChromePinIntegrations)
local EnabledPinnedChat = require(script.Parent.Parent.Flags.GetFFlagEnableChromePinnedChat)()
local GetFFlagOpenControlsOnMenuOpen = require(Chrome.Flags.GetFFlagOpenControlsOnMenuOpen)
local GetFFlagEnableSubmenuTruncationFix = require(Chrome.Flags.GetFFlagEnableSubmenuTruncationFix)
local GetFFlagSupportCompactUtility = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSupportCompactUtility
local GetFFlagEnableScreenshotUtility =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableScreenshotUtility

type Array<T> = { [number]: T }
type Table = { [any]: any }

function configureUnibar(viewportInfo)
	-- Configure the menu.  Top level ordering, integration availability.
	-- Integration availability signals will ultimately filter items out so no need for granular filtering here.
	-- ie. Voice Mute integration will only be shown is voice is enabled/active
	local nineDot = { "leaderboard", "emotes", "backpack" }
	if GetFFlagUnibarRespawn() then
		-- append to end of nine-dot
		table.insert(nineDot, "respawn")
	end
	if GetFFlagNewUnibarIA() then
		-- prepend trust_and_safety to nine-dot menu
		table.insert(nineDot, 1, "trust_and_safety")
	end

	-- insert leaderboard into MRU if it's shown on startup and not already a pin
	if PlayerListInitialVisibleState() then
		if not GetFFlagEnableChromePinIntegrations() or not ChromeService:isUserPinned("leaderboard") then
			ChromeService:setRecentlyUsed("leaderboard", true)
		end
	end

	-- insert trust and safety into MRU/pin, prioritize over leaderboard
	if
		GetFFlagNewUnibarIA()
		and GetFFlagEnableChromePinIntegrations()
		and not ChromeService:isUserPinned("trust_and_safety")
	then
		ChromeService:setUserPin("trust_and_safety", true)
	elseif GetFFlagNewUnibarIA() and not ChromeService:isMostRecentlyUsed("trust_and_safety") then
		ChromeService:setRecentlyUsed("trust_and_safety", true)
	end

	if GetFFlagNewUnibarIA() and GetFFlagEnableChromePinIntegrations() then
		ChromeService:configureMenu({
			{ "selfie_view", "toggle_mic_mute", "chat", "dummy_window", "dummy_window_2" },
			{ ChromeService.Key.UserPinned, ChromeService.Key.MostRecentlyUsed, "nine_dot", "chrome_toggle" },
		})
	elseif GetFFlagNewUnibarIA() then
		ChromeService:configureMenu({
			{ "selfie_view", "toggle_mic_mute", "chat", "dummy_window", "dummy_window_2" },
			{ ChromeService.Key.MostRecentlyUsed, "nine_dot", "chrome_toggle" },
		})
	elseif EnabledPinnedChat and not viewportInfo.tinyPortrait then
		ChromeService:removeRecentlyUsed("chat")
		ChromeService:configureMenu({
			{ "trust_and_safety" },
			{ "selfie_view", "toggle_mic_mute", "dummy_window", "dummy_window_2" },
			{ "chat", ChromeService.Key.MostRecentlyUsed, "nine_dot", "chrome_toggle" },
		})
	else
		ChromeService:configureMenu({
			{ "trust_and_safety" },
			{ "selfie_view", "toggle_mic_mute", "dummy_window", "dummy_window_2" },
			{ ChromeService.Key.MostRecentlyUsed, "nine_dot", "chrome_toggle" },
		})
		-- prepend chat to nine-dot menu
		table.insert(nineDot, 1, "chat")
		if not ChromeService:isMostRecentlyUsed("chat") then
			ChromeService:setRecentlyUsed("chat", true)
		end
	end

	if GetFFlagEnableScreenshotUtility() then
		if GetFFlagEnableSubmenuTruncationFix() then
			table.insert(nineDot, 2, "camera_entrypoint")
		else
			table.insert(nineDot, "camera_entrypoint")
		end

		ChromeService:configureCompactUtility("camera_utility", {
			{ "captures", "screenshot", "chrome_toggle" },
		})
	end

	ChromeService:configureSubMenu("nine_dot", nineDot)
end

if GetFFlagNewUnibarIA() then
	configureUnibar({ tinyPortrait = false })
else
	local priorTinyPortrait = nil

	ViewportUtil.viewport:connect(function(viewportInfo)
		local tinyPortrait = viewportInfo.tinyPortrait
		if tinyPortrait ~= priorTinyPortrait then
			configureUnibar(viewportInfo)
			priorTinyPortrait = tinyPortrait
		end
	end, true)
end

export type IconDividerProps = {
	toggleTransition: any?,
	position: React.Binding<UDim2> | UDim2 | nil,
	visible: React.Binding<boolean> | boolean | nil,
	disableButtonBehaviors: boolean?,
}

-- Vertical divider bar that separates groups of icons within the Unibar
function IconDivider(props: IconDividerProps)
	local style = useStyle()

	return React.createElement("Frame", {
		Position = props.position,
		Size = UDim2.new(0, Constants.DIVIDER_CELL_WIDTH, 1, 0),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, {
		DividerBar = React.createElement("Frame", {
			Position = UDim2.new(0, 2, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			Size = UDim2.new(0, 1, 0, 28),
			BorderSizePixel = 0,
			BackgroundColor3 = style.Theme.Divider.Color,
			BackgroundTransparency = style.Theme.Divider.Transparency,
			Visible = props.visible or true,
		}),
	})
end

-- Non-visible helper child component to avoid parent re-renders
-- Updates animation targets based Chrome status
function AnimationStateHelper(props)
	local menuStatusOpen = useChromeMenuStatus() == ChromeService.MenuStatus.Open
	local selectedItem = useObservableValue(ChromeService:selectedItem())

	React.useEffect(function()
		if menuStatusOpen then
			local lastInput = ChromeService:getLastInputToOpenMenu()
			local pressed = lastInput == Enum.UserInputType.MouseButton1 or lastInput == Enum.UserInputType.Touch

			if not pressed then
				if not GetFFlagOpenControlsOnMenuOpen() then
					ContextActionService:BindCoreAction("RBXEscapeUnibar", function()
						if GetFFlagEnableUnibarSneakPeak() then
							ChromeService:close()
						else
							ChromeService:toggleOpen()
						end
					end, false, Enum.KeyCode.Escape)
					GuiService:Select(props.menuFrameRef.current)
				end
			end
			props.setToggleTransition(ReactOtter.spring(1, Constants.MENU_ANIMATION_SPRING))
		else
			if not GetFFlagOpenControlsOnMenuOpen() then
				ContextActionService:UnbindCoreAction("RBXEscapeUnibar")

				if GuiService.SelectedCoreObject then
					local selectedWithinUnibar = props.menuFrameRef.current:IsAncestorOf(GuiService.SelectedCoreObject)
					if selectedWithinUnibar then
						GuiService.SelectedCoreObject = nil
					end
				end
			end
			props.setToggleTransition(ReactOtter.spring(0, Constants.MENU_ANIMATION_SPRING))
		end
	end, { menuStatusOpen })

	React.useEffect(function()
		if props.menuFrameRef.current and selectedItem then
			local selectChild: any? = props.menuFrameRef.current:FindFirstChild("IconHitArea_" .. selectedItem, true)
			if selectChild then
				GuiService.SelectedCoreObject = selectChild
			end
		end
	end, { selectedItem })

	return nil
end

function linearInterpolation(a: number, b: number, t: number)
	return a * (1 - t) + b * t
end

function IconPositionBinding(
	toggleTransition: any,
	priorPosition: number,
	openPosition: number,
	closedPosition: number,
	iconReflow: any,
	unibarWidth: any,
	pinned: boolean,
	leftAlign: boolean?,
	flipLerp: any
)
	return React.joinBindings({ toggleTransition, iconReflow, unibarWidth })
		:map(function(val: { [number]: number })
			local open = 0
			if flipLerp.current then
				open = linearInterpolation(openPosition, priorPosition, val[2])
			else
				open = linearInterpolation(priorPosition, openPosition, val[2])
			end

			local closedPos = closedPosition
			if leftAlign and not pinned then
				closedPos = closedPosition - val[3]
			end
			local openDelta = open - closedPos

			return UDim2.new(0, closedPos + openDelta * val[1], 0, 0)
		end) :: any
end

type UnibarProp = {
	menuFrameRef: any,
	onAreaChanged: (id: string, position: Vector2, size: Vector2) -> nil,
	onMinWidthChanged: (width: number) -> (),
}

function isLeft(alignment)
	return alignment == Enum.HorizontalAlignment.Left
end

function Unibar(props: UnibarProp)
	local currentOpenPositions = {}
	local priorOpenPositions = React.useRef({})
	local priorAbsolutePosition = React.useRef(Vector2.zero)

	local updatePositions = false
	local priorPositions = priorOpenPositions.current or {}

	-- Tree of menu items to display
	local menuItems = useChromeMenuItems()

	-- Animation for menu open(toggleTransition = 1), closed(toggleTransition = 0) status
	local menuOpen = ChromeService:status():get() == ChromeService.MenuStatus.Open
	local toggleTransition, setToggleTransition = ReactOtter.useAnimatedBinding(if menuOpen then 1 else 0)
	local unibarWidth, setUnibarWidth = ReactOtter.useAnimatedBinding(0)
	local iconReflow, setIconReflow = ReactOtter.useAnimatedBinding(1)
	local flipLerp = React.useRef(false)
	local positionUpdateCount = React.useRef(0)

	local children: Table = {} -- Icons and Dividers to be rendered
	local pinnedCount = 0 -- number of icons to support when closed
	local xOffset = 0 -- x advance layout / overall width
	local xOffsetPinned = 0 -- x advance layout for pinned items (used when closed)
	local minSize: number = 0
	local expandSize: number = 0

	local onAreaChanged = React.useCallback(function(rbx)
		local absolutePosition = Vector2.zero
		if rbx then
			absolutePosition = rbx.AbsolutePosition
			if absolutePosition ~= priorAbsolutePosition.current then
				priorAbsolutePosition.current = absolutePosition
				ChromeService:setMenuAbsolutePosition(absolutePosition)
			end
		end

		if rbx and props.onAreaChanged then
			props.onAreaChanged(Constants.UNIBAR_KEEP_OUT_AREA_ID, absolutePosition, rbx.AbsoluteSize)
		end
	end, {})

	local unibarSizeBinding = React.joinBindings({ toggleTransition, unibarWidth })
		:map(function(val: { [number]: number })
			return UDim2.new(0, linearInterpolation(minSize, val[2], val[1]), 0, Constants.ICON_CELL_WIDTH)
		end)

	local leftAlign = useMappedObservableValue(ChromeService:orderAlignment(), isLeft)

	for k, item in menuItems do
		if item.integration.availability:get() == ChromeService.AvailabilitySignal.Pinned then
			pinnedCount += 1
		end
	end

	local extraPinnedCount = 0
	if leftAlign then
		extraPinnedCount = 1
	else
		extraPinnedCount = math.max(pinnedCount - 1, 0)
	end

	for k, item in menuItems do
		if item.isDivider then
			local closedPos = xOffset + Constants.ICON_CELL_WIDTH * extraPinnedCount
			closedPos = closedPos

			local prior = priorPositions[item.id] or xOffset
			currentOpenPositions[item.id] = xOffset
			updatePositions = updatePositions or (prior ~= xOffset)
			local positionBinding = IconPositionBinding(
				toggleTransition,
				prior,
				xOffset,
				closedPos,
				iconReflow,
				unibarWidth,
				false,
				leftAlign,
				flipLerp
			)
			-- Clip the remaining few pixels on the right edge of the unibar during transition

			local visibleBinding
			if leftAlign then
				visibleBinding = React.joinBindings({ positionBinding, unibarSizeBinding }):map(function(values)
					local position: UDim2 = values[1]
					return position.X.Offset >= (Constants.ICON_CELL_WIDTH * 0.5)
				end)
			else
				visibleBinding = React.joinBindings({ positionBinding, unibarSizeBinding }):map(function(values)
					local position: UDim2 = values[1]
					local size: UDim2 = values[2]
					return position.X.Offset <= (size.X.Offset - Constants.ICON_CELL_WIDTH)
				end)
			end

			children[item.id or ("icon" .. k)] = React.createElement(IconDivider, {
				position = positionBinding,
				visible = visibleBinding,
			})
			xOffset += Constants.DIVIDER_CELL_WIDTH
		elseif item.integration then
			local pinned = false
			local closedPos = xOffset + Constants.ICON_CELL_WIDTH * extraPinnedCount
			if item.integration.availability:get() == ChromeService.AvailabilitySignal.Pinned then
				pinned = true
				closedPos = xOffsetPinned
			end

			local prior = if priorPositions[item.id] == nil then xOffset else priorPositions[item.id]
			currentOpenPositions[item.id] = xOffset
			updatePositions = updatePositions or (prior ~= xOffset)
			local positionBinding = IconPositionBinding(
				toggleTransition,
				prior,
				xOffset,
				closedPos,
				iconReflow,
				unibarWidth,
				pinned,
				leftAlign,
				flipLerp
			)

			-- Clip the remaining few pixels on the right edge of the unibar during transition
			local visibleBinding
			if leftAlign then
				visibleBinding = React.joinBindings({ positionBinding, unibarSizeBinding }):map(function(values)
					local position: UDim2 = values[1]
					return position.X.Offset >= (Constants.ICON_CELL_WIDTH * 0.5)
				end)
			else
				visibleBinding = React.joinBindings({ positionBinding, unibarSizeBinding }):map(function(values)
					local position: UDim2 = values[1]
					local size: UDim2 = values[2]
					return position.X.Offset <= (size.X.Offset - Constants.ICON_CELL_WIDTH * 1.5)
				end)
			end

			children[item.id or ("icon" .. k)] = React.createElement(IconHost, {
				position = positionBinding :: any,
				visible = pinned or visibleBinding :: any,
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
	if props.onMinWidthChanged then
		props.onMinWidthChanged(minSize)
	end
	expandSize = xOffset

	React.useEffect(function()
		local lastUnibarWidth = unibarWidth:getValue()
		if unibarWidth:getValue() == 0 then
			setUnibarWidth(ReactOtter.instant(expandSize) :: any)
		elseif lastUnibarWidth ~= expandSize then
			setUnibarWidth(ReactOtter.spring(expandSize, Constants.MENU_ANIMATION_SPRING))
		end
	end, { expandSize })

	React.useEffect(function()
		ChromeService:setMenuAbsoluteSize(
			Vector2.new(minSize, Constants.ICON_CELL_WIDTH),
			Vector2.new(expandSize, Constants.ICON_CELL_WIDTH)
		)
	end, { minSize, expandSize })

	if updatePositions then
		positionUpdateCount.current = (positionUpdateCount.current or 0) + 1
	end
	priorOpenPositions.current = currentOpenPositions

	React.useEffect(function()
		-- Currently forced to use this flipLerp logic as otter does not support a starting position
		---(even with a call of ReactOtter.instant ahead of time)
		if not flipLerp.current then
			setIconReflow(ReactOtter.spring(0, Constants.MENU_ANIMATION_SPRING))
			flipLerp.current = true
		else
			setIconReflow(ReactOtter.spring(1, Constants.MENU_ANIMATION_SPRING))
			flipLerp.current = false
		end
	end, { positionUpdateCount.current :: any, flipLerp })

	local style = useStyle()

	return React.createElement("Frame", {
		Size = unibarSizeBinding,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		SelectionGroup = true,
		ref = props.menuFrameRef,
		[React.Change.AbsoluteSize] = onAreaChanged,
		[React.Change.AbsolutePosition] = onAreaChanged,
	}, {
		React.createElement(AnimationStateHelper, {
			setToggleTransition = setToggleTransition,
			menuFrameRef = props.menuFrameRef,
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

		React.createElement(HealthBar, {
			size = unibarSizeBinding,
		}),
	} :: Array<any>)
end

type UnibarMenuProp = {
	layoutOrder: number,
	onAreaChanged: (id: string, position: Vector2, size: Vector2) -> nil,
	onMinWidthChanged: (width: number) -> (),
}

local UnibarMenu = function(props: UnibarMenuProp)
	local menuFrame = React.useRef(nil)
	local menuOutterFrame = React.useRef(nil)
	local wasUnibarForcedOpen, setWasUnibarForcedOpen = React.useBinding(false)
	local wasUnibarClosedByUser, setWasUnibarClosedByUser = React.useBinding(false)
	local menuStatusOpen = useChromeMenuStatus() == ChromeService.MenuStatus.Open

	-- AutomaticSize isn't working for this use-case
	-- Update size manually
	local function updateSize()
		if menuOutterFrame.current and menuFrame.current then
			menuOutterFrame.current.Size = menuFrame.current.Size
		end
	end

	local leftAlign = useMappedObservableValue(ChromeService:orderAlignment(), isLeft)

	React.useEffect(function()
		local conn
		if menuFrame and menuFrame.current then
			conn = menuFrame.current:GetPropertyChangedSignal("Size"):Connect(updateSize)
		end

		updateSize()

		local openMenuConn, closeMenuConn
		if GetFFlagOpenControlsOnMenuOpen() then
			-- force open unibar when IGM is opened
			openMenuConn = GuiService.MenuOpened:Connect(function()
				if ChromeService:status():get() ~= ChromeService.MenuStatus.Open then
					ChromeService:open(true)
					setWasUnibarForcedOpen(true)
				end
			end)

			-- force close unibar when IGM closed
			closeMenuConn = GuiService.MenuClosed:Connect(function()
				-- if the user had unibar open before IGM opened, do not force close unibar
				-- if a screenshot is being taken (i.e. by report menu), do not force close unibar
				-- if a compact utility is open, do not force close unibar (as it cannot normally be closed from that state)
				if
					wasUnibarForcedOpen:getValue()
					and not ChromeUtils.isTakingScreenshot()
					and (not GetFFlagSupportCompactUtility() or not ChromeService:getCurrentUtility())
				then
					ChromeService:close()
					setWasUnibarForcedOpen(false)
					setWasUnibarClosedByUser(false)
				end
			end)
		end

		return function()
			if conn then
				conn:disconnect()
			end
			if GetFFlagOpenControlsOnMenuOpen() and openMenuConn then
				openMenuConn:Disconnect()
			end
			if GetFFlagOpenControlsOnMenuOpen() and closeMenuConn then
				closeMenuConn:Disconnect()
			end
		end
	end)

	if GetFFlagOpenControlsOnMenuOpen() then
		React.useEffect(function()
			if not menuStatusOpen then
				if GuiService.SelectedCoreObject then
					local selectedWithinUnibar = menuFrame.current
						and menuFrame.current:IsAncestorOf(GuiService.SelectedCoreObject)
					if selectedWithinUnibar then
						GuiService.SelectedCoreObject = nil
					end
				end

				if GuiService.MenuIsOpen then
					setWasUnibarClosedByUser(true)
				end
			else
				local lastInput = ChromeService:getLastInputToOpenMenu()
				local pressed = lastInput == Enum.UserInputType.MouseButton1 or lastInput == Enum.UserInputType.Touch

				if not pressed and menuFrame.current then
					GuiService:Select(menuFrame.current)
				end

				-- if user closes and opens unibar while IGM is open, do not force close unibar
				if GuiService.MenuIsOpen and wasUnibarClosedByUser:getValue() then
					setWasUnibarForcedOpen(false)
					setWasUnibarClosedByUser(false)
				end
			end
		end, { menuStatusOpen })
	end

	return {
		React.createElement("Frame", {
			Name = "UnibarMenu",
			AutomaticSize = Enum.AutomaticSize.Y,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
			SelectionGroup = true,
			SelectionBehaviorUp = Enum.SelectionBehavior.Stop,
			SelectionBehaviorLeft = Enum.SelectionBehavior.Stop,
			SelectionBehaviorRight = Enum.SelectionBehavior.Stop,
			ref = menuOutterFrame,
		}, {
			React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = if leftAlign
					then Enum.HorizontalAlignment.Left
					else Enum.HorizontalAlignment.Right,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Padding = UDim.new(0, 10),
			}) :: any,
			React.createElement(Unibar, {
				menuFrameRef = menuFrame,
				onAreaChanged = props.onAreaChanged,
				onMinWidthChanged = props.onMinWidthChanged,
			}) :: any,
			React.createElement(SubMenu) :: any,
			React.createElement(WindowManager) :: React.React_Element<any>,
		}),
	}
end

-- Block outter renders while we have new props
return React.memo(UnibarMenu :: any)
