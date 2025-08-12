local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local GetFFlagEnableChromePinIntegrations = SharedFlags.GetFFlagEnableChromePinIntegrations
local GetFFlagUseNewPinIcon = SharedFlags.GetFFlagUseNewPinIcon
local GetFFlagKeepSubmenuOpenOnPin = SharedFlags.GetFFlagKeepSubmenuOpenOnPin
local GetFFlagNewSubmenuTouchTargets = SharedFlags.GetFFlagNewSubmenuTouchTargets
local GetFFlagFixSubmenuCloseIOS = SharedFlags.GetFFlagFixSubmenuCloseIOS
local GetFFlagEnableCaptureBadge = SharedFlags.GetFFlagEnableCaptureBadge
local GetFIntNumTimesNewBadgeIsDisplayed = SharedFlags.GetFIntNumTimesNewBadgeIsDisplayed
local GetFStringNewFeatureList = SharedFlags.GetFStringNewFeatureList
local GetFFlagAnimateSubMenu = SharedFlags.GetFFlagAnimateSubMenu
local GetFFlagChromeUsePreferredTransparency = SharedFlags.GetFFlagChromeUsePreferredTransparency
local FFlagAdaptUnibarAndTiltSizing = SharedFlags.GetFFlagAdaptUnibarAndTiltSizing()
local FFlagConsoleChatOnExpControls = SharedFlags.FFlagConsoleChatOnExpControls
local FFlagFocusNavOutOfSubmenu = SharedFlags.FFlagFocusNavOutOfSubmenu
local FFlagSubmenuFocusNavFixes = SharedFlags.FFlagSubmenuFocusNavFixes
local FFlagChromeFixStopFocusBeforeMenuRowActive = SharedFlags.FFlagChromeFixStopFocusBeforeMenuRowActive
local FFlagEnableChromeShortcutBar = SharedFlags.FFlagEnableChromeShortcutBar

local ChromeFlags = script.Parent.Parent.Parent.Flags
local FFlagUnibarMenuOpenSubmenu = require(ChromeFlags.FFlagUnibarMenuOpenSubmenu)

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local GamepadUtils = if FFlagFocusNavOutOfSubmenu
	then require(CorePackages.Workspace.Packages.InputUi).Gamepad.GamepadUtils
	else nil :: never
local LocalStore = require(Root.Service.LocalStore)
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle
local Interactable = UIBlox.Core.Control.Interactable
local ControlState = UIBlox.Core.Control.Enum.ControlState
local useSelectionCursor = if FFlagAdaptUnibarAndTiltSizing then nil else UIBlox.App.SelectionImage.useSelectionCursor
local CursorKind = if FFlagAdaptUnibarAndTiltSizing then nil else UIBlox.App.SelectionImage.CursorKind
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local Images = UIBlox.App.ImageSet.Images
local Badge = UIBlox.App.Indicator.Badge
local VerticalScrollView = UIBlox.App.Container.VerticalScrollView
local ScrollBarType = UIBlox.App.Container.Enum.ScrollBarType
local ReactOtter = require(CorePackages.Packages.ReactOtter)

local Foundation = if FFlagAdaptUnibarAndTiltSizing then require(CorePackages.Packages.Foundation) else nil :: never
local useCursor = if FFlagAdaptUnibarAndTiltSizing then Foundation.Hooks.useCursor else nil :: never

local ChromeService = require(Root.Service)
local ChromeTypes = require(Root.Service.Types)
local ChromeAnalytics = require(Root.Analytics.ChromeAnalytics)
local ViewportUtil = require(Root.Service.ViewportUtil)
local Constants = require(Root.Unibar.Constants)
local MenuIconContext = if FFlagFocusNavOutOfSubmenu
	then require(Root.Parent.Parent.TopBar.Components.MenuIconContext)
	else nil :: never
local SubMenuContext = require(Root.Unibar.SubMenuContext)

local UserInputService = game:GetService("UserInputService")

local useChromeMenuItems = require(Root.Hooks.useChromeMenuItems)
local useObservableValue = require(Root.Hooks.useObservableValue)
local useTopbarInsetHeight = require(Root.Hooks.useTopbarInsetHeight)
local useMappedObservableValue = require(Root.Hooks.useMappedObservableValue)

local FFlagFixChromeIntegrationLayoutBug = game:DefineFastFlag("FixChromeIntegrationLayoutBug", false)
local FFlagSubmenuFixInvisibleButtons = game:DefineFastFlag("SubmenuFixInvisibleButtons", false)
local FFlagSubmenuFixVectorConversion = game:DefineFastFlag("SubmenuFixVectorConversion", false)

local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled

local UIManager
if isInExperienceUIVREnabled then
	local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
	UIManager = VrSpatialUi.UIManager
end

local IconHost = require(Root.Unibar.ComponentHosts.IconHost)
local ROW_HEIGHT = Constants.SUB_MENU_ROW_HEIGHT
local SCROLL_OFFSET = ROW_HEIGHT * 0.5
-- remove any casts after FFlagAdaptUnibarAndTiltSizing cleanup
local CURSOR_TYPE = if FFlagAdaptUnibarAndTiltSizing then Foundation.Enums.CursorType.RoundedSlot else nil :: never

local PINNED_ICON = nil
local UNPINNED_ICON = nil
if GetFFlagUseNewPinIcon() then
	PINNED_ICON = Images["icons/controls/pinned_small"]
	UNPINNED_ICON = Images["icons/controls/unpinned_small"]
else
	PINNED_ICON = Images["icons/actions/edit/remove"]
	UNPINNED_ICON = Images["icons/actions/edit/add"]
end

local hasOpened9Dot = false
local TIMES_SEEN = "TimesSeenNewFeatures"
local NEW_BADGE_TEXT = "NEW"
local newFeatures = {}

local pinPressed = false
local lastTouchPosition = Vector2.new(0, 0)

local AnimationStatus = { Closed = 0, Open = 1 }
local lastItemList = {}
local lastSubMenu = nil

for feature in string.gmatch(GetFStringNewFeatureList(), "([^, ]+)") do
	newFeatures[feature] = true
end

type Table = { [any]: any }

export type SubMenuProps = {
	items: { [number]: ChromeTypes.IntegrationComponentProps },
	menuTransition: any?,
}

function ClearBadge(id)
	if newFeatures[id] then
		newFeatures[id] = false
		if LocalStore.isEnabled() then
			local current = LocalStore.loadForLocalPlayer(TIMES_SEEN) or {}
			current[id] = GetFIntNumTimesNewBadgeIsDisplayed()
			LocalStore.storeForLocalPlayer(TIMES_SEEN, current)
		end
	end
end

function MenuRow(props: ChromeTypes.IntegrationComponentProps)
	local style = useStyle()
	local theme = style.Theme
	local font = if FFlagAdaptUnibarAndTiltSizing then nil else style.Font
	local defaultBgColor = {
		Color = Color3.new(0, 0, 0),
		Transparency = 1,
	}

	local menuTransition = React.useContext(SubMenuContext)
	local menuIconContext = if FFlagFocusNavOutOfSubmenu then React.useContext(MenuIconContext) else nil :: never

	local useTouchTargets = GetFFlagNewSubmenuTouchTargets()
	local currenlyPinned = if GetFFlagEnableChromePinIntegrations() then ChromeService:isUserPinned(props.id) else nil
	local pinDisabled = if GetFFlagEnableChromePinIntegrations()
		then ChromeService:areUserPinsFull() and not currenlyPinned
		else nil

	local highlightColor, setHighlightColor = React.useBinding(defaultBgColor)
	local pinHighlightColor, setPinHighlightColor = React.useBinding(defaultBgColor)

	local stateChange = React.useCallback(function(_, newState)
		if newState == ControlState.Pressed then
			setHighlightColor(theme.BackgroundOnPress)
		elseif newState == ControlState.Hover then
			setHighlightColor(theme.BackgroundOnHover)
		else
			setHighlightColor(defaultBgColor)
		end
	end)

	local pinStateChange = React.useCallback(function(_, newState)
		if newState == ControlState.Pressed then
			setPinHighlightColor(theme.BackgroundOnPress)
		elseif newState == ControlState.Hover then
			setPinHighlightColor(theme.BackgroundOnHover)
		else
			setPinHighlightColor(defaultBgColor)
		end
	end)

	local onMenuRowActivated = React.useCallback(function()
		if GetFFlagEnableCaptureBadge() then
			ClearBadge(props.id)
		end
		if FFlagChromeFixStopFocusBeforeMenuRowActive then
			if FFlagConsoleChatOnExpControls or FFlagEnableChromeShortcutBar then
				ChromeService:disableFocusNav()
				GuiService.SelectedCoreObject = nil
				ChromeService:setShortcutBar(nil)
			end
			props.activated()
		else
			props.activated()
			if FFlagConsoleChatOnExpControls or FFlagEnableChromeShortcutBar then
				ChromeService:disableFocusNav()
				GuiService.SelectedCoreObject = nil
			end
		end
	end, { props.id })

	local rowFragment = React.createElement(React.Fragment, nil, {
		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, Constants.SUBMENU_PADDING_LEFT),
			PaddingRight = UDim.new(0, Constants.SUBMENU_PADDING_RIGHT),
		}),

		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, Constants.SUBMENU_ROW_PADDING),
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
					then -Constants.ICON_SIZE - Constants.SUBMENU_PADDING_LEFT - Constants.SUBMENU_PADDING_RIGHT
					else -Constants.ICON_SIZE - Constants.SUBMENU_PADDING_LEFT * 2,
				1,
				0
			),
			lineHeight = 1,
			fontStyle = if FFlagAdaptUnibarAndTiltSizing then Constants.SUBMENU_ROW_LABEL_FONT else font.Header2,
			colorStyle = if GetFFlagAnimateSubMenu() and menuTransition
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
			fluidSizing = if GetFFlagEnableChromePinIntegrations() then false else true,
			richText = if GetFFlagEnableChromePinIntegrations() then false else true,
		}),
	})
	local heightScale = if isInExperienceUIVREnabled
		then UIManager.getInstance():getAdditionalCameraScaleIfNeeded()
		else 1
	return React.createElement(Interactable, {
		Size = UDim2.new(1, 0, 0, ROW_HEIGHT * heightScale),
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
		AutoButtonColor = if GetFFlagKeepSubmenuOpenOnPin() or useTouchTargets then false else nil,
		[React.Event.Activated] = onMenuRowActivated,
		LayoutOrder = props.order,
		onStateChanged = if useTouchTargets then nil else stateChange,
		NextSelectionLeft = if FFlagFocusNavOutOfSubmenu then menuIconContext.menuIconRef else nil,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, Constants.SUBMENU_ROW_CORNER_RADIUS),
		}),
		ButtonTouchTarget = if useTouchTargets
			then React.createElement(Interactable, {
				Size = UDim2.new(1, -Constants.PIN_BUTTON_SIZE - Constants.PIN_RIGHT_PADDING * 2, 0, ROW_HEIGHT),
				BackgroundTransparency = 1,
				AutoButtonColor = false,
				[React.Event.Activated] = onMenuRowActivated,
				Selectable = false,
				onStateChanged = stateChange,
			})
			else nil,
		RowLabel = if FFlagFixChromeIntegrationLayoutBug or GetFFlagEnableChromePinIntegrations()
			then React.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				LayoutOrder = props.order,
			}, {
				rowFragment,
			})
			else rowFragment,
		UserPin = if GetFFlagEnableChromePinIntegrations()
			then React.createElement(Interactable, {
				Size = if GetFFlagEnableCaptureBadge() and newFeatures[props.id]
					then UDim2.new(0, Constants.NEW_BADGE_SIZE, 0, Constants.PIN_BUTTON_SIZE)
					else UDim2.new(0, Constants.PIN_BUTTON_SIZE, 0, Constants.PIN_BUTTON_SIZE),
				AnchorPoint = Vector2.new(0, 0.5),
				Position = if GetFFlagEnableCaptureBadge() and newFeatures[props.id]
					then UDim2.new(1, -Constants.NEW_BADGE_SIZE - Constants.PIN_RIGHT_PADDING, 0.5, 0)
					else UDim2.new(1, -Constants.PIN_BUTTON_SIZE - Constants.PIN_RIGHT_PADDING, 0.5, 0),
				BorderSizePixel = 0,
				SelectionImageObject = if FFlagAdaptUnibarAndTiltSizing
					then useCursor(CURSOR_TYPE :: any)
					else useSelectionCursor(CursorKind.RoundedRectNoInset),
				isDisabled = if GetFFlagKeepSubmenuOpenOnPin() then nil else pinDisabled,
				Selectable = if GetFFlagKeepSubmenuOpenOnPin() then not pinDisabled else nil,
				[React.Event.Activated] = function()
					if GetFFlagKeepSubmenuOpenOnPin() then
						pinPressed = true
						if not pinDisabled then
							ClearBadge(props.id)
							pinActivated(props.id)
						end
					else
						ClearBadge(props.id)
						pinActivated(props.id)
					end
				end,
				BackgroundTransparency = pinHighlightColor:map(function(v)
					return if GetFFlagKeepSubmenuOpenOnPin() and pinDisabled then 1 else v.Transparency
				end),
				BackgroundColor3 = pinHighlightColor:map(function(v)
					return v.Color
				end),
				LayoutOrder = 2,
				AutoButtonColor = if GetFFlagNewSubmenuTouchTargets() then false else nil,
				onStateChanged = if GetFFlagNewSubmenuTouchTargets() then nil else pinStateChange,
			}, {
				PinTouchTarget = if GetFFlagNewSubmenuTouchTargets()
					then React.createElement(Interactable, {
						Size = UDim2.new(0, Constants.PIN_BUTTON_SIZE + Constants.PIN_RIGHT_PADDING * 2, 0, ROW_HEIGHT),
						Position = UDim2.new(
							0,
							1 - Constants.PIN_RIGHT_PADDING,
							0,
							-(Constants.SUB_MENU_ROW_HEIGHT - Constants.PIN_BUTTON_SIZE) / 2
						),
						BackgroundTransparency = 1,
						AutoButtonColor = false,
						Selectable = false,
						[React.Event.Activated] = function()
							if GetFFlagKeepSubmenuOpenOnPin() then
								pinPressed = true
								if not pinDisabled then
									ClearBadge(props.id)
									pinActivated(props.id)
								end
							else
								ClearBadge(props.id)
								pinActivated(props.id)
							end
						end,
						onStateChanged = pinStateChange,
					})
					else nil,
				UICorner = React.createElement("UICorner", {
					CornerRadius = UDim.new(0, Constants.PIN_CORNER_RADIUS),
				}),
				UserPinIcon = if GetFFlagEnableCaptureBadge() and newFeatures[props.id]
					then nil
					else React.createElement(ImageSetLabel, {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						BackgroundTransparency = 1,
						Image = if currenlyPinned then PINNED_ICON else UNPINNED_ICON,
						Size = Constants.PIN_ICON_SIZE,
						ImageColor3 = style.Theme.IconEmphasis.Color,
						ImageTransparency = if GetFFlagAnimateSubMenu() and menuTransition
							then menuTransition:map(function(v)
								local transparency = if pinDisabled
									then style.Theme.UIEmphasis.Transparency
									else style.Theme.IconEmphasis.Transparency
								return transparency + (1 - transparency) * (1 - v)
							end)
							elseif pinDisabled then style.Theme.UIEmphasis.Transparency
							else style.Theme.IconEmphasis.Transparency,
					}),
				NewBadge = if GetFFlagEnableCaptureBadge() and newFeatures[props.id]
					then React.createElement(Badge, {
						anchorPoint = Vector2.new(0.5, 0.5),
						position = UDim2.new(0.5, 0, 0.5, 0),
						value = NEW_BADGE_TEXT,
					})
					else nil,
			})
			else nil,
	})
end

function isLeft(alignment)
	return alignment == Enum.HorizontalAlignment.Left
end

function pinActivated(componentId: string)
	if not GetFFlagEnableChromePinIntegrations() then
		return
	end

	if ChromeService:isUserPinned(componentId) then
		ChromeService:removeUserPin(componentId)
		ChromeAnalytics.default:setPin(componentId, false, ChromeService:userPins())
	else
		ChromeService:setUserPin(componentId)
		ChromeAnalytics.default:setPin(componentId, true, ChromeService:userPins())
	end
end

function SubMenu(props: SubMenuProps)
	if GetFFlagEnableCaptureBadge() then
		if not hasOpened9Dot then
			hasOpened9Dot = true
			if LocalStore.isEnabled() then
				local current = LocalStore.loadForLocalPlayer(TIMES_SEEN) or {}

				for feature, enabled in pairs(newFeatures) do
					if not enabled then
						continue
					end

					local timesViewed = current[feature] or 0
					current[feature] = timesViewed + 1

					if current[feature] > GetFIntNumTimesNewBadgeIsDisplayed() then
						newFeatures[feature] = false
					end
				end
				LocalStore.storeForLocalPlayer(TIMES_SEEN, current)
			end
		end
	end
	local style = useStyle()
	local theme = style.Theme
	local menuRef = React.useRef(nil)
	local screenSize = useObservableValue(ViewportUtil.screenSize) :: Vector2
	local topbarInsetHeight = useTopbarInsetHeight()
	local unibarLeftMargin = Constants.UNIBAR_LEFT_MARGIN

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
		if FFlagFocusNavOutOfSubmenu then
			-- A manual Left, Right exit out of the sub-menu, back into Unibar
			-- Need two events since thumbstick and DPad trigger on different events
			connInputChanged = UserInputService.InputChanged:Connect(function(input)
				local gamepadState = UserInputService:GetGamepadState(Enum.UserInputType.Gamepad1)
				for _, input in gamepadState do
					local key = input.KeyCode
					if key == Enum.KeyCode.Thumbstick1 then
						-- Never is meant to work around a typing issue.
						local thumbstickVector = GamepadUtils.normalizeStickByDeadzone(
							if FFlagSubmenuFixVectorConversion
								then Vector2.new(input.Position.X, input.Position.Y)
								else input.Position :: never
						)
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
			if FFlagFocusNavOutOfSubmenu then
				connInputChanged:Disconnect()
			end
			conn:Disconnect()
		end
	end, {})

	local topBuffer = topbarInsetHeight + Constants.ICON_CELL_WIDTH
	local canvasSize = if props and props.items then ROW_HEIGHT * #props.items else 0
	local minSize = math.min(screenSize.Y - topBuffer, canvasSize)

	-- scroll affordance: if submenu does not fully fit, shrink height to half of last integration that partially fits
	if screenSize.Y - topBuffer < canvasSize then
		local numberItemsFullyFit = math.floor((screenSize.Y - topBuffer) / ROW_HEIGHT)
		if (ROW_HEIGHT * numberItemsFullyFit) + SCROLL_OFFSET <= (screenSize.Y - topBuffer) then
			minSize = ROW_HEIGHT * numberItemsFullyFit + SCROLL_OFFSET
		else
			minSize = ROW_HEIGHT * numberItemsFullyFit - SCROLL_OFFSET
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
			MinSize = if GetFFlagAnimateSubMenu()
					and not UserGameSettings.ReducedMotion
					and props.menuTransition
				then props.menuTransition:map(function(v)
					return Vector2.new(0, minSize * v)
				end)
				else Vector2.new(0, minSize),
		}),
		-- extra padding to account for broken AutomaticSize + Padding
		BottomPadding = React.createElement("Frame", {
			Size = UDim2.new(0, 0, 0, Constants.SUBMENU_BOTTOM_PADDING),
			BackgroundTransparency = 1,
			LayoutOrder = 10000,
		}),
	}
	for _, item in props.items do
		rows[item.id] = React.createElement(MenuRow, item)
	end

	local leftAlign = useMappedObservableValue(ChromeService:orderAlignment(), isLeft)

	local preferredTransparency = if GetFFlagChromeUsePreferredTransparency()
		then style.Theme.BackgroundUIContrast.Transparency * style.Settings.PreferredTransparency
		else style.Theme.BackgroundUIContrast.Transparency
	local heightScale = if isInExperienceUIVREnabled
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
			else UDim2.new(
				0,
				Constants.ICON_CELL_WIDTH * 4 + unibarLeftMargin + Constants.UNIBAR_END_PADDING * 2,
				0,
				0
			),
		AnchorPoint = anchorPoint,
		Position = if isInExperienceUIVREnabled and isSpatial()
			then UDim2.new(0, 0, 1, 0)
			else UDim2.new(0, -topbarInsetHeight - 2 + unibarLeftMargin, 0, 0),
		BackgroundColor3 = theme.BackgroundUIContrast.Color,
		BackgroundTransparency = if GetFFlagAnimateSubMenu() and props.menuTransition
			then props.menuTransition:map(function(v)
				return preferredTransparency + (1 - preferredTransparency) * (1 - v)
			end)
			else preferredTransparency,
		AutomaticSize = if isInExperienceUIVREnabled and isSpatial() then nil else Enum.AutomaticSize.Y,
		ref = menuRef,
		SelectionGroup = if FFlagSubmenuFocusNavFixes then true else nil,
		SelectionBehaviorDown = if FFlagSubmenuFocusNavFixes then Enum.SelectionBehavior.Stop else nil,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, Constants.SUBMENU_CORNER_RADIUS),
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
		if GetFFlagAnimateSubMenu() then
			lastItemList = subMenuItems
			lastSubMenu = currentSubMenu
		end

		if currentSubMenu then
			if GetFFlagAnimateSubMenu() then
				if FFlagSubmenuFixInvisibleButtons then
					setOpenState(AnimationStatus.Closed)
				end
				setMenuTransition(ReactOtter.spring(AnimationStatus.Open, Constants.MENU_ANIMATION_SPRING))
			end

			if GetFFlagFixSubmenuCloseIOS() then
				connectionTapStart.current = UserInputService.TouchStarted:Connect(function(touch)
					lastTouchPosition = Vector2.new(touch.Position.X, touch.Position.Y)
				end)
			end

			connectionTapped.current = UserInputService.TouchTap:Connect(function(evt)
				if GetFFlagFixSubmenuCloseIOS() then
					if evt[1] - lastTouchPosition ~= Vector2.zero then
						return
					end
				end
				local subMenuId = ChromeService:currentSubMenu():get()
				if subMenuId then
					if GetFFlagKeepSubmenuOpenOnPin() and pinPressed then
						pinPressed = false
					else
						ChromeService:toggleSubMenu(subMenuId)
					end
				end
			end)

			connection.current = UserInputService.InputEnded:Connect(function(inputChangedObj: InputObject, _)
				if isInExperienceUIVREnabled and isSpatial() then
					-- drag SubMenu in SpatialUI should not dismiss SubMenu
					return
				end
				local pressed = inputChangedObj.UserInputType == Enum.UserInputType.MouseButton1

				local subMenuId = ChromeService:currentSubMenu():get()
				if subMenuId and pressed then
					if GetFFlagKeepSubmenuOpenOnPin() and pinPressed then
						pinPressed = false
					else
						ChromeService:toggleSubMenu(subMenuId)
					end
				end
			end)
		else
			if GetFFlagAnimateSubMenu() then
				if FFlagSubmenuFixInvisibleButtons then
					setOpenState(AnimationStatus.Open)
				end
				setMenuTransition(ReactOtter.spring(AnimationStatus.Closed, Constants.MENU_ANIMATION_SPRING))
			end
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
			menuTransition = if GetFFlagAnimateSubMenu() then menuTransition else nil,
		})
	elseif GetFFlagAnimateSubMenu() and #lastItemList > 0 then
		children[lastSubMenu] = React.createElement(SubMenu, {
			items = lastItemList,
			menuTransition = menuTransition,
		})
	end

	return React.createElement(
		"Frame",
		{
			Name = "SubMenuHost",
			Size = if isInExperienceUIVREnabled and isSpatial() then UDim2.new(1, 0, 1, 0) else UDim2.new(0, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			ref = if FFlagUnibarMenuOpenSubmenu then props.subMenuHostRef else nil,
		},
		if GetFFlagAnimateSubMenu()
			then React.createElement(SubMenuContext.Provider, { value = menuTransition }, children)
			else children
	)
end
