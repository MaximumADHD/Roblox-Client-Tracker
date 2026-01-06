local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagAdaptUnibarAndTiltSizing = SharedFlags.GetFFlagAdaptUnibarAndTiltSizing()
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local FFlagChromeFixStopFocusBeforeMenuRowActive = SharedFlags.FFlagChromeFixStopFocusBeforeMenuRowActive
local FFlagAvatarSwitcherHamburgerExposure = game:DefineFastFlag("AvatarSwitcherHamburgerExposure", false)
local FStringAvatarSwitcherIXPLayer = game:DefineFastString("AvatarSwitcherIXPLayer", "UIEcosystem.User.Migration")

local ChromeFlags = require(script.Parent.Parent.Parent.Flags)
local FFlagUnibarMenuOpenSubmenu = ChromeFlags.FFlagUnibarMenuOpenSubmenu

local ChromeSharedFlags = require(Root.Flags)
local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local GamepadUtils = if FFlagEnableConsoleExpControls
	then require(CorePackages.Workspace.Packages.InputUi).Gamepad.GamepadUtils
	else nil :: never
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle
local Interactable = UIBlox.Core.Control.Interactable
local ControlState = UIBlox.Core.Control.Enum.ControlState
local useSelectionCursor = if FFlagAdaptUnibarAndTiltSizing then nil else UIBlox.App.SelectionImage.useSelectionCursor
local CursorKind = if FFlagAdaptUnibarAndTiltSizing then nil else UIBlox.App.SelectionImage.CursorKind
local VerticalScrollView = UIBlox.App.Container.VerticalScrollView
local ScrollBarType = UIBlox.App.Container.Enum.ScrollBarType
local ReactOtter = require(CorePackages.Packages.ReactOtter)
local IXPServiceWrapper = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper

local Foundation = if FFlagAdaptUnibarAndTiltSizing then require(CorePackages.Packages.Foundation) else nil :: never
local useCursor = if FFlagAdaptUnibarAndTiltSizing then Foundation.Hooks.useCursor else nil :: never

local ChromeService = require(Root.Service)
local ChromeTypes = require(Root.Service.Types)
local ViewportUtil = require(Root.Service.ViewportUtil)
local Constants = require(Root.Unibar.Constants)
local MenuIconContext = if FFlagEnableConsoleExpControls
	then require(Root.Parent.Parent.TopBar.Components.MenuIconContext)
	else nil :: never
local SubMenuContext = require(Root.Unibar.SubMenuContext)
local UnibarStyle = require(script.Parent.UnibarStyle)

local UserInputService = game:GetService("UserInputService")

local useChromeMenuItems = require(Root.Hooks.useChromeMenuItems)
local useObservableValue = require(Root.Hooks.useObservableValue)
local useTopbarInsetHeight = require(Root.Hooks.useTopbarInsetHeight)
local useMappedObservableValue = require(Root.Hooks.useMappedObservableValue)

local FFlagFixChromeIntegrationLayoutBug = game:DefineFastFlag("FixChromeIntegrationLayoutBug", false)
local FFlagSubmenuFixInvisibleButtons = game:DefineFastFlag("SubmenuFixInvisibleButtons", false)

local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local InExperienceUIVRIXP = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).InExperienceUIVRIXP

local UIManager
if isInExperienceUIVREnabled then
	local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
	UIManager = VrSpatialUi.UIManager
end

local IconHost = require(Root.Unibar.ComponentHosts.IconHost)
-- remove any casts after FFlagAdaptUnibarAndTiltSizing cleanup
local CURSOR_TYPE = if FFlagAdaptUnibarAndTiltSizing then Foundation.Enums.CursorType.RoundedSlot else nil :: never

local lastTouchPosition = Vector2.new(0, 0)

local AnimationStatus = { Closed = 0, Open = 1 }
local lastItemList = {}
local lastSubMenu = nil

type Table = { [any]: any }

export type SubMenuProps = {
	items: { [number]: ChromeTypes.IntegrationComponentProps },
	menuTransition: any?,
}

function MenuRow(props: ChromeTypes.IntegrationComponentProps)
	local style = useStyle()
	local unibarStyle
	local theme = style.Theme
	local font = if FFlagAdaptUnibarAndTiltSizing then nil else style.Font
	local defaultBgColor = {
		Color = Color3.new(0, 0, 0),
		Transparency = 1,
	}
	local iconSize
	local rowHeight
	local submenuPaddingLeft
	local submenuPaddingRight
	local submenuRowLabelFont
	local submenuRowPadding
	local submenuCornerRadius
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		iconSize = unibarStyle.ICON_SIZE
		rowHeight = unibarStyle.SUB_MENU_ROW_HEIGHT
		submenuPaddingLeft = unibarStyle.SUBMENU_PADDING_LEFT
		submenuPaddingRight = unibarStyle.SUBMENU_PADDING_RIGHT
		submenuRowLabelFont = unibarStyle.SUBMENU_ROW_LABEL_FONT
		submenuRowPadding = unibarStyle.SUBMENU_ROW_PADDING
		submenuCornerRadius = unibarStyle.SUBMENU_ROW_CORNER_RADIUS
	else
		iconSize = Constants.ICON_SIZE
		rowHeight = Constants.SUB_MENU_ROW_HEIGHT
		submenuPaddingLeft = Constants.SUBMENU_PADDING_LEFT
		submenuPaddingRight = Constants.SUBMENU_PADDING_RIGHT
		submenuRowLabelFont = Constants.SUBMENU_ROW_LABEL_FONT
		submenuRowPadding = Constants.SUBMENU_ROW_PADDING
		submenuCornerRadius = Constants.SUBMENU_ROW_CORNER_RADIUS
	end

	local menuTransition = React.useContext(SubMenuContext)
	local menuIconContext = if FFlagEnableConsoleExpControls then React.useContext(MenuIconContext) else nil :: never

	local highlightColor, setHighlightColor = React.useBinding(defaultBgColor)

	local stateChange = React.useCallback(function(_, newState)
		if newState == ControlState.Pressed then
			setHighlightColor(theme.BackgroundOnPress)
		elseif newState == ControlState.Hover then
			setHighlightColor(theme.BackgroundOnHover)
		else
			setHighlightColor(defaultBgColor)
		end
	end)

	local onMenuRowActivated = React.useCallback(function()
		if FFlagChromeFixStopFocusBeforeMenuRowActive then
			if FFlagEnableConsoleExpControls then
				ChromeService:disableFocusNav()
				GuiService.SelectedCoreObject = nil
				ChromeService:setShortcutBar(nil)
			end
			props.activated()
		else
			props.activated()
			if FFlagEnableConsoleExpControls then
				ChromeService:disableFocusNav()
				GuiService.SelectedCoreObject = nil
			end
		end
	end, { props.id })

	local rowFragment = React.createElement(React.Fragment, nil, {
		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, submenuPaddingLeft),
			PaddingRight = UDim.new(0, submenuPaddingRight),
		}),

		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, submenuRowPadding),
		}),

		IconHost = React.createElement(
			IconHost,
			{
				integration = props,
				disableButtonBehaviors = true,
			} :: any
		),

		StyledTextLabel = React.createElement(StyledTextLabel, {
			size = UDim2.new(
				1,
				if FFlagAdaptUnibarAndTiltSizing
					then -iconSize - submenuPaddingLeft - submenuPaddingRight
					else -iconSize - submenuPaddingLeft * 2,
				1,
				0
			),
			lineHeight = 1,
			fontStyle = if FFlagAdaptUnibarAndTiltSizing or FFlagTokenizeUnibarConstantsWithStyleProvider
				then submenuRowLabelFont
				else font.Header2,
			colorStyle = if menuTransition
				then {
					Color = theme.TextEmphasis.Color,
					Transparency = menuTransition:map(function(v)
						return 1 - v
					end),
				}
				else theme.TextEmphasis,
			text = props.integration.label,
			textTruncate = Enum.TextTruncate.AtEnd,
			textXAlignment = Enum.TextXAlignment.Left,
			fluidSizing = true,
			richText = true,
		}),
	})
	local heightScale = if isInExperienceUIVREnabled and not InExperienceUIVRIXP:isSpatialUIScalingFixEnabled()
		then UIManager.getInstance():getAdditionalCameraScaleIfNeeded()
		else 1
	return React.createElement(Interactable, {
		Size = UDim2.new(1, 0, 0, rowHeight * heightScale),
		BorderSizePixel = 0,
		BackgroundTransparency = highlightColor:map(function(v)
			return v.Transparency
		end),
		BackgroundColor3 = highlightColor:map(function(v)
			return v.Color
		end),
		SelectionImageObject = if FFlagAdaptUnibarAndTiltSizing
			then useCursor(CURSOR_TYPE :: any)
			else useSelectionCursor(CursorKind.RoundedRectNoInset),
		[React.Event.Activated] = onMenuRowActivated,
		LayoutOrder = props.order,
		onStateChanged = stateChange,
		NextSelectionLeft = if FFlagEnableConsoleExpControls then menuIconContext.menuIconRef else nil,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, submenuCornerRadius),
		}),
		RowLabel = if FFlagFixChromeIntegrationLayoutBug
			then React.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				LayoutOrder = props.order,
			}, {
				rowFragment,
			})
			else rowFragment,
	})
end

function isLeft(alignment)
	return alignment == Enum.HorizontalAlignment.Left
end

function SubMenu(props: SubMenuProps)
	local style = useStyle()
	local unibarStyle
	local theme = style.Theme
	local menuRef = React.useRef(nil)
	local screenSize = useObservableValue(ViewportUtil.screenSize) :: Vector2
	local topbarInsetHeight = useTopbarInsetHeight()
	local unibarLeftMargin
	local iconCellWidth
	local unibarEndPadding
	local rowHeight
	local submenuCornerRadius
	local submenuBottomPadding
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		unibarLeftMargin = unibarStyle.UNIBAR_LEFT_MARGIN
		iconCellWidth = unibarStyle.ICON_CELL_WIDTH
		unibarEndPadding = unibarStyle.UNIBAR_END_PADDING
		rowHeight = unibarStyle.SUB_MENU_ROW_HEIGHT
		submenuCornerRadius = unibarStyle.SUBMENU_CORNER_RADIUS
		submenuBottomPadding = unibarStyle.SUBMENU_BOTTOM_PADDING
	else
		unibarLeftMargin = Constants.UNIBAR_LEFT_MARGIN
		iconCellWidth = Constants.ICON_CELL_WIDTH
		unibarEndPadding = Constants.UNIBAR_END_PADDING
		rowHeight = Constants.SUB_MENU_ROW_HEIGHT
		submenuCornerRadius = Constants.SUBMENU_CORNER_RADIUS
		submenuBottomPadding = Constants.SUBMENU_BOTTOM_PADDING
	end
	local scrollOffset = rowHeight * 0.5
	React.useEffect(function()
		local function moveLeft()
			local selectedWithinMenu = menuRef.current and menuRef.current:IsAncestorOf(GuiService.SelectedCoreObject)
			if selectedWithinMenu then
				ChromeService:setSelectedByOffset(-1)
			end
		end

		local function moveRight()
			local selectedWithinMenu = menuRef.current and menuRef.current:IsAncestorOf(GuiService.SelectedCoreObject)
			if selectedWithinMenu then
				ChromeService:setSelectedByOffset(1)
			end
		end

		local connInputChanged
		if FFlagEnableConsoleExpControls then
			-- A manual Left, Right exit out of the sub-menu, back into Unibar
			-- Need two events since thumbstick and DPad trigger on different events
			connInputChanged = UserInputService.InputChanged:Connect(function(input)
				local gamepadState = UserInputService:GetGamepadState(Enum.UserInputType.Gamepad1)
				for _, input in gamepadState do
					local key = input.KeyCode
					if key == Enum.KeyCode.Thumbstick1 then
						-- Never is meant to work around a typing issue.
						local thumbstickVector =
							GamepadUtils.normalizeStickByDeadzone(Vector2.new(input.Position.X, input.Position.Y))
						local SENSITIVITY = 0.5
						local LEFT_SENSITIVITY = -SENSITIVITY
						local RIGHT_SENSITIVITY = SENSITIVITY
						local dx = thumbstickVector.X
						if dx < LEFT_SENSITIVITY then
							moveLeft()
						elseif dx > RIGHT_SENSITIVITY then
							moveRight()
						end
					end
				end
			end)
		end

		local conn = UserInputService.InputBegan:Connect(function(input)
			local key = input.KeyCode
			if key == Enum.KeyCode.Left or key == Enum.KeyCode.DPadLeft then
				moveLeft()
			elseif key == Enum.KeyCode.Right or key == Enum.KeyCode.DPadRight then
				moveRight()
			end
		end)

		return function()
			if FFlagEnableConsoleExpControls then
				connInputChanged:Disconnect()
			end
			conn:Disconnect()
		end
	end, {})

	-- Avatar Switcher IXP exposure: fire exposure event when the hamburger submenu is opened
	if FFlagAvatarSwitcherHamburgerExposure then
		React.useEffect(function()
			IXPServiceWrapper:LogFlagLinkedUserLayerExposure(FStringAvatarSwitcherIXPLayer)
		end, {})
	end

	local topBuffer = topbarInsetHeight + iconCellWidth
	local canvasSize = if props and props.items then rowHeight * #props.items else 0
	local minSize = math.min(screenSize.Y - topBuffer, canvasSize)

	-- scroll affordance: if submenu does not fully fit, shrink height to half of last integration that partially fits
	if screenSize.Y - topBuffer < canvasSize then
		local numberItemsFullyFit = math.floor((screenSize.Y - topBuffer) / rowHeight)
		if (rowHeight * numberItemsFullyFit) + scrollOffset <= (screenSize.Y - topBuffer) then
			minSize = rowHeight * numberItemsFullyFit + scrollOffset
		else
			minSize = rowHeight * numberItemsFullyFit - scrollOffset
		end
	end

	local rows: Table = {
		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		UISizeConstraint = React.createElement("UISizeConstraint", {
			MinSize = if not UserGameSettings.ReducedMotion and props.menuTransition
				then props.menuTransition:map(function(v)
					return Vector2.new(0, minSize * v)
				end)
				else Vector2.new(0, minSize),
		}),
		-- extra padding to account for broken AutomaticSize + Padding
		BottomPadding = React.createElement("Frame", {
			Size = UDim2.new(0, 0, 0, submenuBottomPadding),
			BackgroundTransparency = 1,
			LayoutOrder = 10000,
		}),
	}
	for _, item in props.items do
		rows[item.id] = React.createElement(MenuRow, item)
	end

	local leftAlign = useMappedObservableValue(ChromeService:orderAlignment(), isLeft)

	local preferredTransparency = style.Theme.BackgroundUIContrast.Transparency * style.Settings.PreferredTransparency
	local heightScale = if isInExperienceUIVREnabled and not InExperienceUIVRIXP:isSpatialUIScalingFixEnabled()
		then UIManager.getInstance():getAdditionalCameraScaleIfNeeded()
		else 1
	local anchorPoint
	if isInExperienceUIVREnabled and isSpatial() then
		anchorPoint = Vector2.new(0, 1)
	else
		anchorPoint = if leftAlign then Vector2.zero else Vector2.new(1, 0)
	end
	return React.createElement("Frame", {
		Size = if isInExperienceUIVREnabled and isSpatial()
			then UDim2.new(1, 0, 0, canvasSize * heightScale)
			else UDim2.new(0, iconCellWidth * 4 + unibarLeftMargin + unibarEndPadding * 2, 0, 0),
		AnchorPoint = anchorPoint,
		Position = if isInExperienceUIVREnabled and isSpatial()
			then UDim2.new(0, 0, 1, 0)
			else UDim2.new(0, -topbarInsetHeight - 2 + unibarLeftMargin, 0, 0),
		BackgroundColor3 = theme.BackgroundUIContrast.Color,
		BackgroundTransparency = if props.menuTransition
			then props.menuTransition:map(function(v)
				return preferredTransparency + (1 - preferredTransparency) * (1 - v)
			end)
			else preferredTransparency,
		AutomaticSize = if isInExperienceUIVREnabled and isSpatial() then nil else Enum.AutomaticSize.Y,
		ref = menuRef,
		SelectionGroup = if FFlagEnableConsoleExpControls then true else nil,
		SelectionBehaviorDown = if FFlagEnableConsoleExpControls then Enum.SelectionBehavior.Stop else nil,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, submenuCornerRadius),
		}),
		ScrollingFrame = React.createElement(VerticalScrollView, {
			size = UDim2.new(1, 0, 1, 0),
			canvasSizeY = UDim.new(0, canvasSize),
			selectable = false,
			scrollBarType = ScrollBarType.Compact,
		}, rows),
	})
end

export type SubMenuHostProps = {
	subMenuHostRef: any,
}

return function(props: SubMenuHostProps) -- SubMenuHost
	local children: Table = {}

	local connection: { current: RBXScriptConnection? } = React.useRef(nil)
	local connectionTapped: { current: RBXScriptConnection? } = React.useRef(nil)
	local connectionTapStart: { current: RBXScriptConnection? } = React.useRef(nil)
	local currentSubMenu = useObservableValue(ChromeService:currentSubMenu())

	local _openState, setOpenState = React.useState(AnimationStatus.Closed)

	local menuItems = useChromeMenuItems()
	local subMenuItems = {}

	local menuTransition, setMenuTransition = ReactOtter.useAnimatedBinding(AnimationStatus.Closed, function(v)
		setOpenState(v)
	end)

	-- close submenu on click outside
	React.useEffect(function()
		lastItemList = subMenuItems
		lastSubMenu = currentSubMenu

		if currentSubMenu then
			if FFlagSubmenuFixInvisibleButtons then
				setOpenState(AnimationStatus.Closed)
			end
			setMenuTransition(ReactOtter.spring(AnimationStatus.Open, Constants.MENU_ANIMATION_SPRING))

			connectionTapStart.current = UserInputService.TouchStarted:Connect(function(touch)
				lastTouchPosition = Vector2.new(touch.Position.X, touch.Position.Y)
			end)

			connectionTapped.current = UserInputService.TouchTap:Connect(function(evt)
				if evt[1] - lastTouchPosition ~= Vector2.zero then
					return
				end

				local subMenuId = ChromeService:currentSubMenu():get()
				if subMenuId then
					ChromeService:toggleSubMenu(subMenuId)
				end
			end)

			connection.current = UserInputService.InputEnded:Connect(function(inputChangedObj: InputObject, _)
				if isInExperienceUIVREnabled and isSpatial() then
					-- drag SubMenu in SpatialUI should not dismiss SubMenu
					-- but if panel is moved to center, dragging is disabled
					-- and the submenu should be dismissed
					if not InExperienceUIVRIXP:isMovePanelToCenter() then
						return
					end
				end
				local pressed = inputChangedObj.UserInputType == Enum.UserInputType.MouseButton1

				local subMenuId = ChromeService:currentSubMenu():get()
				if subMenuId and pressed then
					ChromeService:toggleSubMenu(subMenuId)
				end
			end)
		else
			if FFlagSubmenuFixInvisibleButtons then
				setOpenState(AnimationStatus.Open)
			end
			setMenuTransition(ReactOtter.spring(AnimationStatus.Closed, Constants.MENU_ANIMATION_SPRING))
		end

		return function()
			if connection.current then
				connection.current:Disconnect()
				connection.current = nil
			end
			if connectionTapped.current then
				connectionTapped.current:Disconnect()
				connectionTapped.current = nil
			end
			if connectionTapStart.current then
				connectionTapStart.current:Disconnect()
				connectionTapStart.current = nil
			end
		end
	end, { currentSubMenu })

	if currentSubMenu and menuItems then
		-- todo: scanning for the menu id isn't ideal - improve
		for i, v in menuItems do
			if currentSubMenu == v.id then
				subMenuItems = v.children
				break
			end
		end
	end

	if #subMenuItems > 0 then
		children[currentSubMenu] = React.createElement(SubMenu, {
			items = subMenuItems,
			menuTransition = menuTransition,
		})
	elseif #lastItemList > 0 then
		children[lastSubMenu] = React.createElement(SubMenu, {
			items = lastItemList,
			menuTransition = menuTransition,
		})
	end

	return React.createElement("Frame", {
		Name = "SubMenuHost",
		Size = if isInExperienceUIVREnabled and isSpatial() then UDim2.new(1, 0, 1, 0) else UDim2.new(0, 0, 1, 0),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		ref = if FFlagUnibarMenuOpenSubmenu then props.subMenuHostRef else nil,
	}, React.createElement(SubMenuContext.Provider, { value = menuTransition }, children))
end
