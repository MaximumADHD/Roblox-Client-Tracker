local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local ContextActionService = game:GetService("ContextActionService")
local React = require(CorePackages.Packages.React)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local GetFFlagDebugEnableUnibarDummyIntegrations = SharedFlags.GetFFlagDebugEnableUnibarDummyIntegrations
local GetFIntIconSelectionTimeout = SharedFlags.GetFIntIconSelectionTimeout
local GetFFlagChromeCentralizedConfiguration = SharedFlags.GetFFlagChromeCentralizedConfiguration
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local GetFFlagSimpleChatUnreadMessageCount = SharedFlags.GetFFlagSimpleChatUnreadMessageCount
local FFlagAddUILessMode = SharedFlags.FFlagAddUILessMode
local FIntAddUILessModeVariant = SharedFlags.FIntAddUILessModeVariant
local FFlagEnableInExperienceAvatarSwitcher = SharedFlags.FFlagEnableInExperienceAvatarSwitcher

local ChromeFlags = require(script.Parent.Parent.Parent.Flags)
local FFlagUnibarMenuOpenSubmenu = ChromeFlags.FFlagUnibarMenuOpenSubmenu

local ChromeSharedFlags = require(Root.Flags)
local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider

local UIBlox = require(CorePackages.Packages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local ChromeService = require(Root.Service)
local UnibarStyle = require(Root.Unibar.UnibarStyle)

local _integrations = if GetFFlagChromeCentralizedConfiguration() then nil else require(Root.Parent.Integrations)
local SubMenu = require(Root.Unibar.SubMenu)
local WindowManager = require(Root.Unibar.WindowManager)
local ShortcutBar = require(Root.Shortcuts.ShortcutBar)
local Constants = require(Root.Unibar.Constants)

local useChromeMenuItems = require(Root.Hooks.useChromeMenuItems)
local useObservableValue = require(Root.Hooks.useObservableValue)
local useMappedObservableValue = require(Root.Hooks.useMappedObservableValue)

local IconHost = require(Root.Unibar.ComponentHosts.IconHost)

local ReactOtter = require(CorePackages.Packages.ReactOtter)
local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local FFlagReduceTopBarInsetsWhileHidden = SharedFlags.FFlagReduceTopBarInsetsWhileHidden

local CoreGuiCommonStores = require(CorePackages.Workspace.Packages.CoreGuiCommon).Stores
local Signals = require(CorePackages.Packages.Signals)
local createEffect = Signals.createEffect

-- APPEXP-2053 TODO: Remove all use of RobloxGui from ChromeShared
local PartyConstants = require(Root.Parent.Integrations.Party.Constants)
local isConnectUnibarEnabled = require(Root.Parent.Integrations.Connect.isConnectUnibarEnabled)
local isConnectDropdownEnabled = require(Root.Parent.Integrations.Connect.isConnectDropdownEnabled)

local GamepadConnector = if FFlagEnableConsoleExpControls
	then require(Root.Parent.Parent.TopBar.Components.GamepadConnector)
	else nil
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled

local Panel3DInSpatialUI
local PanelType
local SubMenuVisibilitySignal
if isInExperienceUIVREnabled then
	local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
	Panel3DInSpatialUI = VrSpatialUi.Panel3DInSpatialUI
	PanelType = VrSpatialUi.Constants.PanelType
	local Observable = require(CorePackages.Workspace.Packages.Observable)
	SubMenuVisibilitySignal = Observable.ObservableValue.new(true)
end

type Array<T> = { [number]: T }
type Table = { [any]: any }

if not GetFFlagChromeCentralizedConfiguration() then
	function configureUnibar()
		-- Configure the menu.  Top level ordering, integration availability.
		-- Integration availability signals will ultimately filter items out so no need for granular filtering here.
		-- ie. Voice Mute integration will only be shown is voice is enabled/active
		local nineDot = { "leaderboard", "emotes", "backpack" }

		-- append to end of nine-dot
		table.insert(nineDot, "respawn")
		-- prepend trust_and_safety to nine-dot menu
		table.insert(nineDot, 1, "trust_and_safety")

		if isConnectDropdownEnabled() then
			table.insert(nineDot, 1, "connect_dropdown")
		end

		local v4Ordering = { "toggle_mic_mute", "chat", "nine_dot" }
		table.insert(v4Ordering, 2, "join_voice")

		if GetFFlagDebugEnableUnibarDummyIntegrations() then
			table.insert(v4Ordering, 1, "dummy_window")
			table.insert(v4Ordering, 1, "dummy_window_2")
		end

		if isConnectUnibarEnabled() then
			table.insert(v4Ordering, 1, "connect_unibar")
		end

		local toggleMicIndex = table.find(v4Ordering, "toggle_mic_mute")
		if toggleMicIndex then
			table.insert(v4Ordering, toggleMicIndex + 1, PartyConstants.TOGGLE_MIC_INTEGRATION_ID)
		end

		if isInExperienceUIVREnabled and isSpatial() then
			local vrControls = { "vr_toggle_button", "vr_safety_bubble" }
			ChromeService:configureMenu({ vrControls, v4Ordering })
		else
			ChromeService:configureMenu({ v4Ordering })
		end

		if isInExperienceUIVREnabled then
			if not isSpatial() then
				table.insert(nineDot, 2, "camera_entrypoint")
				table.insert(nineDot, 2, "selfie_view")
			end
		else
			table.insert(nineDot, 2, "camera_entrypoint")
			table.insert(nineDot, 2, "selfie_view")
		end

		if FFlagEnableInExperienceAvatarSwitcher then
			table.insert(nineDot, 3, Constants.AVATAR_SWITCHER_ID)
		end

		-- TO-DO: Replace GuiService:IsTenFootInterface() once APPEXP-2014 has been merged
		-- selene: allow(denylist_filter)
		local isNotVROrConsole = not isSpatial() and not GuiService:IsTenFootInterface()
		if isNotVROrConsole then
			table.insert(nineDot, 4, "music_entrypoint")
		end

		ChromeService:configureSubMenu("nine_dot", nineDot)
	end

	configureUnibar()

	if FFlagEnableConsoleExpControls then
		-- initialize shortcuts
		require(script.Parent.Parent.Shortcuts.ConfigureShortcuts)()
	end
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
	local unibarStyle
	local iconDividerPosition
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		iconDividerPosition = unibarStyle.ICON_DIVIDER_POSITION
	else
		iconDividerPosition = Constants.ICON_DIVIDER_POSITION
	end

	return React.createElement("Frame", {
		Position = props.position,
		Size = UDim2.new(0, Constants.DIVIDER_CELL_WIDTH, 1, 0),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, {
		DividerBar = React.createElement("Frame", {
			Position = iconDividerPosition,
			AnchorPoint = Vector2.new(0, 0.5),
			Size = Constants.ICON_DIVIDER_SIZE,
			BorderSizePixel = 0,
			BackgroundColor3 = style.Theme.Divider.Color,
			BackgroundTransparency = if props.toggleTransition
				then props.toggleTransition:map(function(value)
					return style.Theme.Divider.Transparency + ((1 - value) * (1 - style.Theme.Divider.Transparency))
				end)
				else style.Theme.Divider.Transparency,
			Visible = props.visible or true,
		}),
	})
end

local function getSelectedChild(menuRef: { [any]: any }, integrationId: string?)
	return menuRef.current:FindFirstChild((Constants.ICON_NAME_PREFIX :: string) .. tostring(integrationId), true)
end

-- Non-visible helper child component to avoid parent re-renders
-- Updates animation targets based Chrome status
function AnimationStateHelper(props)
	local currentSubmenu = useObservableValue(ChromeService:currentSubMenu())

	local selectedItem = useObservableValue(ChromeService:selectedItem())
	local inFocusNav = useObservableValue(ChromeService:inFocusNav())

	React.useEffect(function()
		if inFocusNav then
			if not FFlagEnableConsoleExpControls then
				ContextActionService:BindCoreAction("RBXEscapeUnibar", function(actionName, userInputState, input)
					if FFlagEnableConsoleExpControls then
						if userInputState == Enum.UserInputState.End then
							ChromeService:disableFocusNav()
							GuiService.SelectedCoreObject = nil
						end
					else
						ChromeService:disableFocusNav()
					end
				end, false, Enum.KeyCode.ButtonB)
			end

			if FFlagEnableConsoleExpControls then
				if props.menuFrameRef.current then
					local selectedChild = getSelectedChild(props.menuFrameRef, selectedItem)
					if selectedChild then
						GuiService.SelectedCoreObject = selectedChild
					else
						if FFlagUnibarMenuOpenSubmenu then
							if FFlagEnableConsoleExpControls then
								ChromeService:selectedItem():set("nine_dot")
							end
							ChromeService:toggleSubMenu("nine_dot")
						else
							GuiService:Select(props.menuFrameRef.current)
						end
					end
				end
			else
				if props.menuFrameRef.current then
					GuiService:Select(props.menuFrameRef.current)
				end
			end
		else
			ContextActionService:UnbindCoreAction("RBXEscapeUnibar")

			if GuiService.SelectedCoreObject then
				local selectedWithinUnibar = props.menuFrameRef.current:IsAncestorOf(GuiService.SelectedCoreObject)
				if selectedWithinUnibar then
					GuiService.SelectedCoreObject = nil
				end
			end
		end
	end, { inFocusNav })

	React.useEffect(function()
		if currentSubmenu == "nine_dot" then
			if FFlagUnibarMenuOpenSubmenu and inFocusNav then
				GuiService:Select(props.subMenuHostRef.current)
			end
			props.setToggleSubmenuTransition(ReactOtter.spring(1, Constants.MENU_ANIMATION_SPRING) :: any)
		else
			props.setToggleSubmenuTransition(ReactOtter.spring(0, Constants.MENU_ANIMATION_SPRING) :: any)
		end
	end, { currentSubmenu })

	React.useEffect(function()
		if FFlagEnableConsoleExpControls and currentSubmenu == selectedItem then
			return
		end

		local updateSelection = coroutine.create(function()
			local counter = 0
			-- React can sometimes take a few frames to update, so retry until successful
			while counter < GetFIntIconSelectionTimeout() do
				counter += 1
				task.wait()
				if props.menuFrameRef.current and selectedItem then
					local selectChild: any?
					if FFlagEnableConsoleExpControls then
						selectChild = getSelectedChild(props.menuFrameRef, selectedItem)
					else
						selectChild = props.menuFrameRef.current:FindFirstChild("IconHitArea_" .. selectedItem, true)
					end
					if selectChild then
						GuiService.SelectedCoreObject = selectChild
						return
					end
				end
			end
		end)
		coroutine.resume(updateSelection)
	end, { selectedItem, if FFlagEnableConsoleExpControls then currentSubmenu else nil })

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
	local unibarStyle
	local unibarEndPadding
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		unibarEndPadding = unibarStyle.UNIBAR_END_PADDING
	else
		unibarEndPadding = Constants.UNIBAR_END_PADDING
	end
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

				return UDim2.new(0, unibarEndPadding + closedPos + openDelta * val[1], 0, 0)
			end) :: any
end

local function onUnibarSelectionChanged(
	this: GuiObject,
	isThisSelected: boolean,
	oldSelection: GuiObject,
	newSelection: GuiObject
)
	-- update inFocusNav if GuiSelection is outside Unibar
	if not this:IsAncestorOf(newSelection) then
		ChromeService:disableFocusNav()
	end
end

type UnibarProp = {
	menuFrameRef: any,
	subMenuHostRef: any,
	onAreaChanged: (id: string, position: Vector2, size: Vector2) -> nil,
	onMinWidthChanged: (width: number) -> (),
}

function isLeft(alignment)
	return alignment == Enum.HorizontalAlignment.Left
end

function Unibar(props: UnibarProp)
	local unibarStyle
	local iconCellWidth
	local unibarEndPadding
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		iconCellWidth = unibarStyle.ICON_CELL_WIDTH
		unibarEndPadding = unibarStyle.UNIBAR_END_PADDING
	else
		iconCellWidth = Constants.ICON_CELL_WIDTH
		unibarEndPadding = Constants.UNIBAR_END_PADDING
	end
	local currentOpenPositions = {}
	local priorOpenPositions = React.useRef({})
	local priorAbsolutePosition = React.useRef(Vector2.zero)

	local priorAbsoluteSize = React.useRef(Vector2.zero)

	local uiLessStore
	if FFlagAddUILessMode and FIntAddUILessModeVariant ~= 0 and CoreGuiCommonStores.GetUILessStore then
		uiLessStore = React.useRef(CoreGuiCommonStores.GetUILessStore(false))
	end

	local updatePositions = false
	local priorPositions = priorOpenPositions.current or {}

	-- Tree of menu items to display
	local menuItems = useChromeMenuItems()

	local toggleIconTransition, setToggleIconTransition = ReactOtter.useAnimatedBinding(1)
	local toggleWidthTransition, setToggleWidthTransition = ReactOtter.useAnimatedBinding(1)
	local unibarWidth, setUnibarWidth = ReactOtter.useAnimatedBinding(0)
	local lastUnibarGoal = React.useRef(0)
	local iconReflow, setIconReflow = ReactOtter.useAnimatedBinding(1)
	local flipLerp = React.useRef(false)
	local positionUpdateCount = React.useRef(0)

	local submenuOpen = ChromeService:currentSubMenu():get() == "nine_dot"
	local toggleSubmenuTransition, setToggleSubmenuTransition =
		ReactOtter.useAnimatedBinding(if submenuOpen then 1 else 0)

	local children: Table = {} -- Icons and Dividers to be rendered
	local pinnedCount = 0 -- number of icons to support when closed
	local xOffset = 0 -- x advance layout / overall width
	local xOffsetPinned = 0 -- x advance layout for pinned items (used when closed)
	local minSize: number = 0
	local expandSize: number = 0

	local onAreaChanged = React.useCallback(function(rbx)
		local absolutePosition = Vector2.zero
		local absoluteSize = Vector2.zero
		if rbx then
			absolutePosition = rbx.AbsolutePosition
			absoluteSize = rbx.AbsoluteSize
			if absolutePosition ~= priorAbsolutePosition.current then
				priorAbsolutePosition.current = absolutePosition
				ChromeService:setMenuAbsolutePosition(absolutePosition)
			end
			if FFlagReduceTopBarInsetsWhileHidden and absoluteSize ~= priorAbsoluteSize.current then
				priorAbsoluteSize.current = absoluteSize
			end

			if
				FFlagAddUILessMode
				and FIntAddUILessModeVariant ~= 0
				and uiLessStore.current.getUILessModeEnabled(false)
			then
				if absolutePosition ~= priorAbsolutePosition.current then
					priorAbsolutePosition.current = absolutePosition
					ChromeService:setMenuAbsolutePosition(absolutePosition)
				end
				if absoluteSize ~= priorAbsoluteSize.current then
					priorAbsoluteSize.current = absoluteSize
				end
			end
		end

		if FFlagReduceTopBarInsetsWhileHidden and GamepadConnector then
			if rbx and props.onAreaChanged and GamepadConnector:getShowTopBar():get() then
				props.onAreaChanged(Constants.UNIBAR_KEEP_OUT_AREA_ID, absolutePosition, absoluteSize)
			end
		elseif
			FFlagAddUILessMode
			and FIntAddUILessModeVariant ~= 0
			and uiLessStore.current.getUILessModeEnabled(false)
		then
			if rbx and props.onAreaChanged and uiLessStore.current.getUIVisible(false) then
				props.onAreaChanged(Constants.UNIBAR_KEEP_OUT_AREA_ID, absolutePosition, absoluteSize)
			end
		else
			if rbx and props.onAreaChanged then
				props.onAreaChanged(Constants.UNIBAR_KEEP_OUT_AREA_ID, absolutePosition, rbx.AbsoluteSize)
			end
		end
	end, {})

	local unibarSizeBinding = React.joinBindings({ toggleWidthTransition, unibarWidth })
		:map(function(val: { [number]: number })
			return UDim2.new(0, linearInterpolation(minSize, val[2], val[1]), 0, iconCellWidth)
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
			local closedPos = xOffset + iconCellWidth * extraPinnedCount
			closedPos = closedPos

			local prior = priorPositions[item.id] or xOffset
			currentOpenPositions[item.id] = xOffset
			updatePositions = updatePositions or (prior ~= xOffset)
			local positionBinding = IconPositionBinding(
				toggleIconTransition,
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
					return position.X.Offset >= (iconCellWidth * 0.5)
				end)
			else
				visibleBinding = React.joinBindings({ positionBinding, unibarSizeBinding }):map(function(values)
					local position: UDim2 = values[1]
					local size: UDim2 = values[2]
					return position.X.Offset <= (size.X.Offset - iconCellWidth)
				end)
			end

			children[item.id or ("icon" .. k)] = React.createElement(IconDivider, {
				position = positionBinding,
				visible = visibleBinding,
				toggleTransition = toggleWidthTransition,
			})
			xOffset += Constants.DIVIDER_CELL_WIDTH
		elseif item.integration then
			local pinned = false
			local closedPos = xOffset + iconCellWidth * extraPinnedCount
			if item.integration.availability:get() == ChromeService.AvailabilitySignal.Pinned then
				pinned = true
				closedPos = xOffsetPinned
			end

			local prior = if priorPositions[item.id] == nil then xOffset else priorPositions[item.id]
			currentOpenPositions[item.id] = xOffset
			updatePositions = updatePositions or (prior ~= xOffset)
			local positionBinding = IconPositionBinding(
				toggleIconTransition,
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
					return position.X.Offset >= (iconCellWidth * 0.5)
				end)
			else
				visibleBinding = React.joinBindings({ positionBinding, unibarSizeBinding }):map(function(values)
					local position: UDim2 = values[1]
					local size: UDim2 = values[2]
					return position.X.Offset <= (size.X.Offset - iconCellWidth * 1.5)
				end)
			end

			children[item.id or ("icon" .. k)] = React.createElement(IconHost, {
				position = positionBinding :: any,
				visible = pinned or visibleBinding :: any,
				toggleTransition = toggleSubmenuTransition,
				integration = item,
				disableBadgeNumber = if GetFFlagSimpleChatUnreadMessageCount() and item.id == "chat"
					then true
					else false,
			}) :: any
			xOffset += iconCellWidth
			if pinned then
				xOffsetPinned += iconCellWidth
			end
		end
	end

	minSize = xOffset
	if props.onMinWidthChanged then
		props.onMinWidthChanged(minSize)
	end
	expandSize = unibarEndPadding * 2 + xOffset

	React.useEffect(function()
		local lastUnibarWidth = lastUnibarGoal.current

		if unibarWidth:getValue() == 0 then
			setUnibarWidth(ReactOtter.instant(expandSize) :: any)
			lastUnibarGoal.current = expandSize
		elseif lastUnibarWidth ~= expandSize then
			setUnibarWidth(ReactOtter.spring(expandSize, Constants.MENU_ANIMATION_SPRING))
			lastUnibarGoal.current = expandSize
		end
		ChromeService:setMenuAbsoluteSize(Vector2.new(expandSize, iconCellWidth))
	end, { expandSize })

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

	React.useEffect(function()
		if FFlagReduceTopBarInsetsWhileHidden and GamepadConnector then
			local showTopBarSignal = GamepadConnector:getShowTopBar()
			showTopBarSignal:connect(function()
				if showTopBarSignal:get() then
					props.onAreaChanged(
						Constants.UNIBAR_KEEP_OUT_AREA_ID,
						priorAbsolutePosition.current,
						priorAbsoluteSize.current
					)
				else
					props.onAreaChanged(Constants.UNIBAR_KEEP_OUT_AREA_ID, Vector2.zero, Vector2.zero)
				end
			end)
			props.onAreaChanged(Constants.UNIBAR_KEEP_OUT_AREA_ID, Vector2.zero, Vector2.zero)
		end
	end, {})

	React.useEffect(function()
		local disposeEffect
		if FFlagAddUILessMode and FIntAddUILessModeVariant ~= 0 and uiLessStore.current.getUILessModeEnabled(false) then
			disposeEffect = createEffect(function(scope)
				if uiLessStore.current.getUIVisible(scope) then
					props.onAreaChanged(
						Constants.UNIBAR_KEEP_OUT_AREA_ID,
						priorAbsolutePosition.current,
						priorAbsoluteSize.current
					)
				else
					props.onAreaChanged(Constants.UNIBAR_KEEP_OUT_AREA_ID, Vector2.zero, Vector2.zero)
				end
			end)
			props.onAreaChanged(Constants.UNIBAR_KEEP_OUT_AREA_ID, Vector2.zero, Vector2.zero)
		end

		return function()
			if disposeEffect then
				disposeEffect()
			end
		end
	end, {})

	local style = useStyle()

	return React.createElement(
		"Frame",
		{
			Size = unibarSizeBinding,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			SelectionGroup = true,
			ref = props.menuFrameRef,
			[React.Change.AbsoluteSize] = onAreaChanged,
			[React.Change.AbsolutePosition] = onAreaChanged,
		},
		{
			React.createElement(AnimationStateHelper, {
				setToggleIconTransition = setToggleIconTransition,
				setToggleWidthTransition = setToggleWidthTransition,
				setToggleSubmenuTransition = setToggleSubmenuTransition,
				menuFrameRef = props.menuFrameRef,
				subMenuHostRef = if FFlagUnibarMenuOpenSubmenu then props.subMenuHostRef else nil,
			}),
			-- Background
			React.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
				BackgroundTransparency = style.Theme.BackgroundUIContrast.Transparency
					* style.Settings.PreferredTransparency,
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
		} :: Array<any>
	)
end

type UnibarPillsProp = {
	menuFrameRef: any,
	subMenuHostRef: any,
}

local function UnibarPills(props: UnibarPillsProp)
	local style = useStyle()
	local unibarStyle
	local unibarEndPadding
	local menuSubmenuPadding
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		unibarEndPadding = unibarStyle.UNIBAR_END_PADDING
		menuSubmenuPadding = unibarStyle.MENU_SUBMENU_PADDING
	else
		unibarEndPadding = Constants.UNIBAR_END_PADDING
		menuSubmenuPadding = Constants.MENU_SUBMENU_PADDING
	end

	-- Tree of menu items to display
	local menuItems = useChromeMenuItems()

	local submenuOpen = ChromeService:currentSubMenu():get() == "nine_dot"
	local toggleSubmenuTransition, setToggleSubmenuTransition =
		ReactOtter.useAnimatedBinding(if submenuOpen then 1 else 0)

	assert(menuItems ~= nil, "Menu items should not be nil")
	local pillListItems = {}
	local iconHostItems = {}
	for k, item in menuItems do
		if item.integration and item.isDivider == false then
			-- add to existing pillItemsTable
			iconHostItems["icon_host" .. k] = React.createElement(IconHost, {
				toggleTransition = toggleSubmenuTransition,
				integration = item,
			}) :: any
		end
		if item.isDivider or k == #menuItems then
			-- create a pill for remaining items
			local pillContainer = React.createElement("Frame", {
				Size = UDim2.new(0, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.XY,
				BorderSizePixel = 0,
				BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
				BackgroundTransparency = style.Theme.BackgroundUIContrast.Transparency
					* style.Settings.PreferredTransparency,
			}, {
				UICorner = React.createElement("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}),
				Padding = React.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, unibarEndPadding),
					PaddingRight = UDim.new(0, unibarEndPadding),
				}),
				PillsHorizontalList = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
			}, iconHostItems)
			pillListItems["pill_" .. k] = pillContainer :: any
			iconHostItems = {}
		end
	end
	return React.createElement(
		"Frame",
		{
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			SelectionGroup = true,
			ref = props.menuFrameRef,
			AutomaticSize = Enum.AutomaticSize.XY,
		},
		{
			React.createElement(AnimationStateHelper, {
				setToggleSubmenuTransition = setToggleSubmenuTransition,
				menuFrameRef = props.menuFrameRef,
				subMenuHostRef = props.subMenuHostRef,
			}),
			React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, menuSubmenuPadding),
			}),
		} :: Array<any>,
		pillListItems
	)
end

export type UnibarMenuProp = {
	layoutOrder: number,
	onAreaChanged: (id: string, position: Vector2, size: Vector2) -> nil,
	onMinWidthChanged: (width: number) -> (),
	menuRef: any,
}

local function SubMenuWrapper(props)
	if isInExperienceUIVREnabled and isSpatial() and Panel3DInSpatialUI then
		local currentSubMenu = useObservableValue(ChromeService:currentSubMenu())
		SubMenuVisibilitySignal:set(currentSubMenu ~= nil)
	end
	local renderFunc = React.useCallback(function()
		return React.createElement(SubMenu, { subMenuHostRef = props.subMenuHostRef }) :: any
	end, {
		props.subMenuHostRef,
	})
	return if isInExperienceUIVREnabled
			and isSpatial()
			and Panel3DInSpatialUI
		then React.createElement(Panel3DInSpatialUI, {
			panelType = PanelType.ChromeSubMenu,
			renderFunction = renderFunc,
			visibilityObservable = SubMenuVisibilitySignal,
		})
		else React.createElement(SubMenu, { subMenuHostRef = props.subMenuHostRef }) :: any
end

local UnibarMenu = function(props: UnibarMenuProp)
	local unibarStyle
	local menuSubmenuPadding
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		menuSubmenuPadding = unibarStyle.MENU_SUBMENU_PADDING
	else
		menuSubmenuPadding = Constants.MENU_SUBMENU_PADDING
	end
	local menuFrame = React.useRef(nil)
	if FFlagEnableConsoleExpControls and props.menuRef then
		menuFrame = props.menuRef
	end
	local menuOutterFrame = React.useRef(nil)
	local subMenuHostRef
	if FFlagUnibarMenuOpenSubmenu then
		-- APPEXP-2400: Not ideal to use this if we want to support multiple submenus -- improve
		subMenuHostRef = React.useRef(nil)
	end

	-- AutomaticSize isn't working for this use-case
	-- Update size manually
	local function updateSize()
		if menuOutterFrame.current and menuFrame.current then
			menuOutterFrame.current.Size = menuFrame.current.Size
		end
	end

	local leftAlign = useMappedObservableValue(ChromeService:orderAlignment(), isLeft)

	local showUnibar, setShowUnibar
	local showTopBarSignal

	if FFlagEnableConsoleExpControls and GamepadConnector then
		showUnibar, setShowUnibar = React.useBinding(GamepadConnector:getShowTopBar():get())
		showTopBarSignal = GamepadConnector:getShowTopBar()
	end

	local uiLessStore
	if FFlagAddUILessMode and FIntAddUILessModeVariant ~= 0 and CoreGuiCommonStores.GetUILessStore then
		uiLessStore = React.useRef(CoreGuiCommonStores.GetUILessStore(false))

		if uiLessStore.current.getUILessModeEnabled(false) then
			showUnibar, setShowUnibar = React.useBinding(true)
		end
	end

	React.useEffect(function()
		local conn
		if menuFrame and menuFrame.current then
			conn = menuFrame.current:GetPropertyChangedSignal("Size"):Connect(updateSize)
		end

		updateSize()

		if FFlagEnableConsoleExpControls then
			showTopBarSignal:connect(function()
				setShowUnibar(showTopBarSignal:get())
			end)
		end

		return function()
			if conn then
				conn:disconnect()
			end
		end
	end)

	React.useEffect(function()
		local disposeEffect
		if FFlagAddUILessMode and FIntAddUILessModeVariant ~= 0 and uiLessStore.current.getUILessModeEnabled(false) then
			disposeEffect = createEffect(function(scope)
				setShowUnibar(uiLessStore.current.getUIVisible(scope))
			end)
		end

		return function()
			if disposeEffect then
				disposeEffect()
			end
		end
	end, {})

	return {
		React.createElement("Frame", {
			Name = "UnibarMenu",
			AutomaticSize = Enum.AutomaticSize.Y,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
			SelectionGroup = true,
			SelectionBehaviorUp = Enum.SelectionBehavior.Stop,
			SelectionBehaviorLeft = if FFlagEnableConsoleExpControls then nil else Enum.SelectionBehavior.Stop,
			SelectionBehaviorRight = Enum.SelectionBehavior.Stop,
			ref = menuOutterFrame,
			[React.Event.SelectionChanged] = if FFlagEnableConsoleExpControls then onUnibarSelectionChanged else nil,
			Visible = if FFlagEnableConsoleExpControls
					or (
						FFlagAddUILessMode
						and FIntAddUILessModeVariant ~= 0
						and uiLessStore.current.getUILessModeEnabled(false)
					)
				then showUnibar
				else nil,
		}, {
			React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = if leftAlign
					then Enum.HorizontalAlignment.Left
					else Enum.HorizontalAlignment.Right,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Padding = UDim.new(0, menuSubmenuPadding),
			}) :: any,
			if isInExperienceUIVREnabled and isSpatial()
				then React.createElement(UnibarPills, {
					menuFrameRef = menuFrame,
					subMenuHostRef = subMenuHostRef,
				}) :: any
				else React.createElement(Unibar, {
					menuFrameRef = menuFrame,
					subMenuHostRef = if FFlagUnibarMenuOpenSubmenu then subMenuHostRef else nil,
					onAreaChanged = props.onAreaChanged,
					onMinWidthChanged = props.onMinWidthChanged,
				}) :: any,
			if isInExperienceUIVREnabled
				then React.createElement(SubMenuWrapper, { subMenuHostRef = subMenuHostRef }) :: any
				else React.createElement(SubMenu, { subMenuHostRef = subMenuHostRef }) :: any,
			if FFlagEnableConsoleExpControls then React.createElement(ShortcutBar) else nil,
			React.createElement(WindowManager) :: React.React_Element<any>,
		}),
	}
end

-- Unibar should never have to be rerendered
return React.memo(UnibarMenu :: any, function(_, _)
	return true
end)
