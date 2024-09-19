local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local LocalStore = require(script.Parent.Parent.Service.LocalStore)
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle
local Interactable = UIBlox.Core.Control.Interactable
local ControlState = UIBlox.Core.Control.Enum.ControlState
local useSelectionCursor = UIBlox.App.SelectionImage.useSelectionCursor
local CursorKind = UIBlox.App.SelectionImage.CursorKind
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local Images = UIBlox.App.ImageSet.Images
local Badge = UIBlox.App.Indicator.Badge
local VerticalScrollView = UIBlox.App.Container.VerticalScrollView
local ScrollBarType = UIBlox.App.Container.Enum.ScrollBarType
local ReactOtter = require(CorePackages.Packages.ReactOtter)

local Chrome = script.Parent.Parent
local ChromeService = require(Chrome.Service)
local ChromeTypes = require(Chrome.Service.Types)
local ChromeAnalytics = require(Chrome.Analytics.ChromeAnalytics)
local ViewportUtil = require(Chrome.Service.ViewportUtil)
local Constants = require(Chrome.Unibar.Constants)
local TopBarConstants = require(Chrome.Parent.TopBar.Constants)
local SubMenuContext = require(script.Parent.SubMenuContext)

local UserInputService = game:GetService("UserInputService")

local useChromeMenuItems = require(Chrome.Hooks.useChromeMenuItems)
local useObservableValue = require(Chrome.Hooks.useObservableValue)

local GetFFlagUnibarRespawn = require(Chrome.Flags.GetFFlagUnibarRespawn)
local GetFFlagEnableChromePinIntegrations = require(Chrome.Flags.GetFFlagEnableChromePinIntegrations)
local GetFFlagUseNewPinIcon = require(Chrome.Flags.GetFFlagUseNewPinIcon)
local GetFFlagEnableSubmenuTruncationFix = require(Chrome.Flags.GetFFlagEnableSubmenuTruncationFix)
local GetFFlagKeepSubmenuOpenOnPin = require(Chrome.Flags.GetFFlagKeepSubmenuOpenOnPin)
local GetFFlagNewSubmenuTouchTargets = require(Chrome.Flags.GetFFlagNewSubmenuTouchTargets)
local GetFFlagFixSubmenuCloseIOS = require(Chrome.Flags.GetFFlagFixSubmenuCloseIOS)
local GetFFlagEnableCaptureBadge = require(Chrome.Flags.GetFFlagEnableCaptureBadge)
local GetFIntNumTimesNewBadgeIsDisplayed = require(Chrome.Flags.GetFIntNumTimesNewBadgeIsDisplayed)
local GetFStringNewFeatureList = require(Chrome.Flags.GetFStringNewFeatureList)
local GetFFlagAnimateSubMenu = require(Chrome.Flags.GetFFlagAnimateSubMenu)
local GetFFlagEnableChromePinAnalytics = require(Chrome.Flags.GetFFlagEnableChromePinAnalytics)
local useMappedObservableValue = require(Chrome.Hooks.useMappedObservableValue)
local GetFFlagChromeUsePreferredTransparency =
	require(CoreGui.RobloxGui.Modules.Flags.GetFFlagChromeUsePreferredTransparency)

local FFlagFixChromeIntegrationLayoutBug = game:DefineFastFlag("FixChromeIntegrationLayoutBug", false)
local FFlagSubmenuV4Layout = game:DefineFastFlag("SubmenuV4Layout2", false)

local IconHost = require(script.Parent.ComponentHosts.IconHost)
local ROW_HEIGHT = Constants.SUB_MENU_ROW_HEIGHT
local SCROLL_OFFSET = ROW_HEIGHT * 0.5

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
	local font = style.Font
	local defaultBgColor = {
		Color = Color3.new(0, 0, 0),
		Transparency = 1,
	}

	local menuTransition = React.useContext(SubMenuContext)

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

	local activateTouchTarget = React.useCallback(function()
		ClearBadge(props.id)
		props.activated()
	end)

	local rowFragment = React.createElement(React.Fragment, nil, {
		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = if FFlagSubmenuV4Layout
				then UDim.new(0, Constants.SUBMENU_PADDING)
				elseif GetFFlagEnableChromePinIntegrations() then UDim.new(0, 12)
				else UDim.new(0, 24),
			PaddingRight = UDim.new(0, 8),
		}),

		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, 8),
		}),

		IconHost = React.createElement(IconHost, {
			integration = props,
			disableButtonBehaviors = true,
		} :: any),

		StyledTextLabel = React.createElement(StyledTextLabel, {
			size = if FFlagSubmenuV4Layout
				then UDim2.new(1, -Constants.ICON_SIZE - Constants.SUBMENU_PADDING * 2, 1, 0)
				else nil,
			lineHeight = if FFlagSubmenuV4Layout then 1 else nil,
			fontStyle = font.Header2,
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

	return React.createElement(Interactable, {
		Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
		BorderSizePixel = 0,
		BackgroundTransparency = highlightColor:map(function(v)
			return v.Transparency
		end),
		BackgroundColor3 = highlightColor:map(function(v)
			return v.Color
		end),
		SelectionImageObject = useSelectionCursor(CursorKind.RoundedRectNoInset),
		AutoButtonColor = if GetFFlagKeepSubmenuOpenOnPin() or useTouchTargets then false else nil,
		[React.Event.Activated] = if GetFFlagEnableCaptureBadge() then activateTouchTarget else props.activated,
		LayoutOrder = props.order,
		onStateChanged = if useTouchTargets then nil else stateChange,
	}, {
		ButtonTouchTarget = if useTouchTargets
			then React.createElement(Interactable, {
				Size = UDim2.new(1, -Constants.PIN_BUTTON_SIZE - Constants.PIN_RIGHT_PADDING * 2, 0, ROW_HEIGHT),
				BackgroundTransparency = 1,
				AutoButtonColor = false,
				[React.Event.Activated] = if GetFFlagEnableCaptureBadge() then activateTouchTarget else props.activated,
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
				SelectionImageObject = useSelectionCursor(CursorKind.RoundedRectNoInset),
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
					CornerRadius = UDim.new(0, 8),
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
		if GetFFlagEnableChromePinAnalytics() then
			ChromeAnalytics.default:setPin(componentId, false, ChromeService:userPins())
		end
	else
		ChromeService:setUserPin(componentId)
		if GetFFlagEnableChromePinAnalytics() then
			ChromeAnalytics.default:setPin(componentId, true, ChromeService:userPins())
		end
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

	React.useEffect(function()
		-- A manual Left, Right exit out of the sub-menu, back into Unibar
		local conn = UserInputService.InputBegan:Connect(function(input)
			local key = input.KeyCode
			if key == Enum.KeyCode.Left or key == Enum.KeyCode.DPadLeft then
				local selectedWithinMenu = menuRef.current
					and menuRef.current:IsAncestorOf(GuiService.SelectedCoreObject)
				if selectedWithinMenu then
					ChromeService:setSelectedByOffset(-1)
				end
			elseif key == Enum.KeyCode.Right or key == Enum.KeyCode.DPadRight then
				local selectedWithinMenu = menuRef.current
					and menuRef.current:IsAncestorOf(GuiService.SelectedCoreObject)
				if selectedWithinMenu then
					ChromeService:setSelectedByOffset(1)
				end
			end
		end)
		return function()
			conn:Disconnect()
		end
	end, {})

	local EnableScrollingSubmenu = GetFFlagUnibarRespawn() or GetFFlagEnableSubmenuTruncationFix()
	local topBuffer = TopBarConstants.TopBarHeight + Constants.ICON_CELL_WIDTH
	local canvasSize = if props and props.items then ROW_HEIGHT * #props.items else 0
	local minSize = math.min(screenSize.Y - topBuffer, canvasSize)

	-- scroll affordance: if submenu does not fully fit, shrink height to half of last integration that partially fits
	if GetFFlagEnableSubmenuTruncationFix() and screenSize.Y - topBuffer < canvasSize then
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
			MaxSize = if EnableScrollingSubmenu then nil else Vector2.new(math.huge, 232),
			MinSize = if EnableScrollingSubmenu
				then if GetFFlagAnimateSubMenu()
						and not UserGameSettings.ReducedMotion
						and props.menuTransition
					then props.menuTransition:map(function(v)
						return Vector2.new(0, minSize * v)
					end)
					else Vector2.new(0, minSize)
				else nil,
		}),
		-- extra padding to account for broken AutomaticSize + Padding
		BottomPadding = React.createElement("Frame", {
			Size = UDim2.new(0, 0, 0, 20),
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

	return React.createElement("Frame", {

		Size = if FFlagSubmenuV4Layout
			then UDim2.new(0, TopBarConstants.TopBarHeight + Constants.ICON_CELL_WIDTH * 3, 0, 0)
			else UDim2.new(0, 240, 0, 0),
		AnchorPoint = if leftAlign then Vector2.zero else Vector2.new(1, 0),
		Position = if FFlagSubmenuV4Layout
			then UDim2.new(0, -TopBarConstants.TopBarHeight + 2, 0, 0)
			elseif leftAlign then UDim2.new(0, 0, 0, 0)
			else UDim2.new(1, 0, 0, 0),
		BackgroundColor3 = theme.BackgroundUIContrast.Color,
		BackgroundTransparency = if GetFFlagAnimateSubMenu() and props.menuTransition
			then props.menuTransition:map(function(v)
				return preferredTransparency + (1 - preferredTransparency) * (1 - v)
			end)
			else preferredTransparency,
		AutomaticSize = Enum.AutomaticSize.Y,
		ref = menuRef,
	}, {
		UIPadding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 8),
			PaddingBottom = UDim.new(0, 8),
		}),
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, 10),
		}),
		ScrollingFrame = if GetFFlagEnableSubmenuTruncationFix()
			then React.createElement(VerticalScrollView, {
				size = UDim2.new(1, 0, 1, 0),
				useAutomaticCanvasSize = if EnableScrollingSubmenu then nil else Enum.AutomaticSize.XY,
				canvasSizeY = if EnableScrollingSubmenu then UDim.new(0, canvasSize) else nil,
				selectable = false,
				scrollBarType = ScrollBarType.Compact,
			}, rows)
			else React.createElement("ScrollingFrame", {
				ScrollBarThickness = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 0),
				CanvasSize = if EnableScrollingSubmenu then UDim2.new(0, 0, 0, canvasSize) else nil,
				AutomaticSize = if EnableScrollingSubmenu then nil else Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				AutomaticCanvasSize = if EnableScrollingSubmenu then nil else Enum.AutomaticSize.XY,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				SelectionGroup = true,
				SelectionBehaviorLeft = Enum.SelectionBehavior.Stop,
				SelectionBehaviorRight = Enum.SelectionBehavior.Stop,
				SelectionBehaviorDown = Enum.SelectionBehavior.Stop,
				Selectable = false,
			}, rows),
	})
end

export type SubMenuHostProps = {}

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
				setMenuTransition(ReactOtter.spring(AnimationStatus.Open, Constants.MENU_ANIMATION_SPRING))
			end

			if GetFFlagFixSubmenuCloseIOS() then
				connectionTapStart.current = UserInputService.TouchStarted:Connect(function(touch)
					lastTouchPosition = Vector2.new(touch.Position.X, touch.Position.Y)
				end)
			end

			if GetFFlagUnibarRespawn() then
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
			end

			connection.current = UserInputService.InputEnded:Connect(function(inputChangedObj: InputObject, _)
				local pressed = false
				if GetFFlagUnibarRespawn() then
					pressed = inputChangedObj.UserInputType == Enum.UserInputType.MouseButton1
				else
					pressed = inputChangedObj.UserInputType == Enum.UserInputType.MouseButton1
						or inputChangedObj.UserInputType == Enum.UserInputType.Touch
				end

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
			Size = UDim2.new(0, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
		},
		if GetFFlagAnimateSubMenu()
			then React.createElement(SubMenuContext.Provider, { value = menuTransition }, children)
			else children
	)
end
