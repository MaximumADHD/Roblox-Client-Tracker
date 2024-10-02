local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local ContextActionService = game:GetService("ContextActionService")
local React = require(CorePackages.Packages.React)

local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local Chrome = script.Parent.Parent
local ChromeService = require(Chrome.Service)
local ChromeUtils = require(Chrome.Service.ChromeUtils)
local ChromeAnalytics = require(Chrome.Analytics.ChromeAnalytics)

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
local ContainerHost = require(script.Parent.ComponentHosts.ContainerHost)

local ReactOtter = require(CorePackages.Packages.ReactOtter)

local FFlagEnableUnibarV4IA = game:DefineFastFlag("EnableUnibarV4IA", false)
local GetFFlagDebugEnableUnibarDummyIntegrations = require(Chrome.Flags.GetFFlagDebugEnableUnibarDummyIntegrations)
local GetFFlagDisableCompactUtilityCore = require(Chrome.Flags.GetFFlagDisableCompactUtilityCore)
local GetFFlagUnibarRespawn = require(Chrome.Flags.GetFFlagUnibarRespawn)
local GetFFlagEnableSaveUserPins = require(Chrome.Flags.GetFFlagEnableSaveUserPins)
local GetFFlagEnableChromePinAnalytics = require(Chrome.Flags.GetFFlagEnableChromePinAnalytics)
local GetFFlagEnableUnibarSneakPeak = require(Chrome.Flags.GetFFlagEnableUnibarSneakPeak)
local GetFFlagEnableChromePinIntegrations = require(Chrome.Flags.GetFFlagEnableChromePinIntegrations)
local GetFFlagOpenControlsOnMenuOpen = require(Chrome.Flags.GetFFlagOpenControlsOnMenuOpen)
local GetFFlagEnableSubmenuTruncationFix = require(Chrome.Flags.GetFFlagEnableSubmenuTruncationFix)
local GetFFlagSupportCompactUtility = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSupportCompactUtility
local GetFFlagEnablePartyIconInChrome =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnablePartyIconInChrome
local GetFFlagUsePolishedAnimations = require(Chrome.Flags.GetFFlagUsePolishedAnimations)
local GetFFlagEnableScreenshotUtility =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableScreenshotUtility
local GetFFlagAnimateSubMenu = require(Chrome.Flags.GetFFlagAnimateSubMenu)
local GetFIntIconSelectionTimeout = require(Chrome.Flags.GetFIntIconSelectionTimeout)
local GetFFlagEnableCapturesInChrome = require(Chrome.Flags.GetFFlagEnableCapturesInChrome)
local GetFFlagEnableSongbirdInChrome = require(Chrome.Flags.GetFFlagEnableSongbirdInChrome)
local GetFStringChromeMusicIntegrationId =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFStringChromeMusicIntegrationId
local GetFFlagSupportChromeContainerSizing = require(Chrome.Flags.GetFFlagSupportChromeContainerSizing)
local GetFFlagEnableJoinVoiceOnUnibar = require(Chrome.Flags.GetFFlagEnableJoinVoiceOnUnibar)
local GetFFlagEnableHamburgerIcon = require(Chrome.Flags.GetFFlagEnableHamburgerIcon)
local GetFFlagEnableAlwaysOpenUnibar = require(RobloxGui.Modules.Flags.GetFFlagEnableAlwaysOpenUnibar)
local GetFFlagChromeUsePreferredTransparency =
	require(CoreGui.RobloxGui.Modules.Flags.GetFFlagChromeUsePreferredTransparency)
local GetFFlagSongbirdTranslationStrings =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSongbirdTranslationStrings

local GetFFlagEnableAppChatInExperience =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableAppChatInExperience
local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChatExperimentation = AppChat.App.InExperienceAppChatExperimentation

local PartyConstants = require(Chrome.Integrations.Party.Constants)

type Array<T> = { [number]: T }
type Table = { [any]: any }

function configureUnibar()
	-- Configure the menu.  Top level ordering, integration availability.
	-- Integration availability signals will ultimately filter items out so no need for granular filtering here.
	-- ie. Voice Mute integration will only be shown is voice is enabled/active
	local nineDot = { "leaderboard", "emotes", "backpack" }
	local partyMenu = if GetFFlagEnablePartyIconInChrome()
		then { PartyConstants.TOGGLE_MIC_INTEGRATION_ID, PartyConstants.INTEGRATION_ID }
		else {}
	if GetFFlagUnibarRespawn() then
		-- append to end of nine-dot
		table.insert(nineDot, "respawn")
	end
	-- prepend trust_and_safety to nine-dot menu
	table.insert(nineDot, 1, "trust_and_safety")

	if
		GetFFlagEnableAppChatInExperience()
		and InExperienceAppChatExperimentation.default.variant.ShowPlatformChatChromeDropdownEntryPoint
	then
		table.insert(nineDot, 1, "connect")
	end

	-- insert leaderboard into MRU if it's shown on startup and not already a pin
	if PlayerListInitialVisibleState() then
		if
			(not GetFFlagEnableChromePinIntegrations() or not ChromeService:isUserPinned("leaderboard"))
			and not GetFFlagEnableSaveUserPins()
		then
			ChromeService:setRecentlyUsed("leaderboard", true)
		end
	end

	-- insert trust and safety into MRU/pin, prioritize over leaderboard
	if GetFFlagEnableChromePinIntegrations() and not ChromeService:isUserPinned("trust_and_safety") then
		if not GetFFlagEnableSaveUserPins() then
			ChromeService:setUserPin("trust_and_safety", true)

			if GetFFlagEnableChromePinAnalytics() then
				ChromeAnalytics.default:setPin("trust_and_safety", true, ChromeService:userPins())
			end
		end
	elseif not ChromeService:isMostRecentlyUsed("trust_and_safety") then
		ChromeService:setRecentlyUsed("trust_and_safety", true)
	end

	-- This codepath is the source of truth for Unibar v4 experiment. Other paths will be deprecated if successful.
	if FFlagEnableUnibarV4IA then
		local v4Ordering = { "toggle_mic_mute", "chat", "nine_dot" }
		if not GetFFlagEnableAlwaysOpenUnibar() then
			table.insert(v4Ordering, "chrome_toggle")
		end

		if GetFFlagEnableJoinVoiceOnUnibar() then
			table.insert(v4Ordering, 2, "join_voice")
		end

		if GetFFlagDebugEnableUnibarDummyIntegrations() then
			table.insert(v4Ordering, 1, "dummy_window")
			table.insert(v4Ordering, 1, "dummy_window_2")
			if GetFFlagSupportChromeContainerSizing() then
				table.insert(v4Ordering, 1, "dummy_container")
			end
		end

		if
			GetFFlagEnableAppChatInExperience()
			and InExperienceAppChatExperimentation.default.variant.ShowPlatformChatChromeUnibarEntryPoint
			and not InExperienceAppChatExperimentation.default.variant.ShowPlatformChatChromeDropdownEntryPoint
		then
			-- TODO: this integration will replace logic related to `partyMenu`
			local experienceChatIndex = table.find(v4Ordering, "chat")
			if experienceChatIndex then
				-- insert Connect(a.k.a AppChat) after ExperienceChat, so it appears in front of ExpChat
				table.insert(v4Ordering, experienceChatIndex + 1, "connect")
			end
		end
		ChromeService:configureMenu({
			partyMenu,
			v4Ordering,
		})
	elseif GetFFlagEnableChromePinIntegrations() then
		if GetFFlagSupportChromeContainerSizing() then
			ChromeService:configureMenu({
				partyMenu,
				if GetFFlagEnableJoinVoiceOnUnibar()
					then {
						"selfie_view",
						"toggle_mic_mute",
						"join_voice",
						"chat",
						"dummy_window",
						"dummy_window_2",
						"dummy_container",
					}
					else {
						"selfie_view",
						"toggle_mic_mute",
						"chat",
						"dummy_window",
						"dummy_window_2",
						"dummy_container",
					},
				{ ChromeService.Key.UserPinned, ChromeService.Key.MostRecentlyUsed, "nine_dot", "chrome_toggle" },
			})
		else
			ChromeService:configureMenu({
				partyMenu,
				if GetFFlagEnableJoinVoiceOnUnibar()
					then { "selfie_view", "toggle_mic_mute", "join_voice", "chat", "dummy_window", "dummy_window_2" }
					else { "selfie_view", "toggle_mic_mute", "chat", "dummy_window", "dummy_window_2" },
				{ ChromeService.Key.UserPinned, ChromeService.Key.MostRecentlyUsed, "nine_dot", "chrome_toggle" },
			})
		end
	else
		ChromeService:configureMenu({
			partyMenu,
			{ "selfie_view", "toggle_mic_mute", "chat", "dummy_window", "dummy_window_2" },
			{ ChromeService.Key.MostRecentlyUsed, "nine_dot", "chrome_toggle" },
		})
	end

	if GetFFlagEnableScreenshotUtility() and GetFFlagEnableCapturesInChrome() then
		if GetFFlagEnableSubmenuTruncationFix() then
			table.insert(nineDot, 2, "camera_entrypoint")
		else
			table.insert(nineDot, "camera_entrypoint")
		end

		if not GetFFlagDisableCompactUtilityCore() then
			ChromeService:configureCompactUtility("camera_utility", {
				{
					"captures",
					"screenshot",
					if GetFFlagUsePolishedAnimations() then "compact_utility_back" else "chrome_toggle",
				},
			})
		end
	end

	if FFlagEnableUnibarV4IA then
		table.insert(nineDot, 2, "selfie_view")
	end

	if GetFFlagEnableSongbirdInChrome() then
		table.insert(nineDot, "music_entrypoint")
		-- MUS-1214 TODO: Determine placement order in menu
		if not GetFFlagDisableCompactUtilityCore() then
			ChromeService:configureCompactUtility("music_utility", {
				{
					if GetFFlagSongbirdTranslationStrings()
						then "now_playing"
						else GetFStringChromeMusicIntegrationId(),
					"compact_utility_back",
				},
			})
		end
	end

	ChromeService:configureSubMenu("nine_dot", nineDot)
end

configureUnibar()

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
			BackgroundTransparency = if GetFFlagUsePolishedAnimations() and props.toggleTransition
				then props.toggleTransition:map(function(value)
					return style.Theme.Divider.Transparency + ((1 - value) * (1 - style.Theme.Divider.Transparency))
				end)
				else style.Theme.Divider.Transparency,
			Visible = props.visible or true,
		}),
	})
end

-- Non-visible helper child component to avoid parent re-renders
-- Updates animation targets based Chrome status
function AnimationStateHelper(props)
	local wasUnibarForcedOpen = React.useRef(false)
	local wasUnibarClosedByUser = React.useRef(false)
	local menuStatusOpen = useChromeMenuStatus() == ChromeService.MenuStatus.Open
	local currentSubmenu
	if GetFFlagEnableHamburgerIcon() then
		currentSubmenu = useObservableValue(ChromeService:currentSubMenu())
	end

	local selectedItem = useObservableValue(ChromeService:selectedItem())
	local utility = useObservableValue(ChromeService:getCurrentUtility())
	local inFocusNav
	if GetFFlagEnableAlwaysOpenUnibar() then
		inFocusNav = useObservableValue(ChromeService:inFocusNav())
	end

	if GetFFlagEnableAlwaysOpenUnibar() then
		React.useEffect(function()
			if inFocusNav then
				ContextActionService:BindCoreAction("RBXEscapeUnibar", function()
					ChromeService:disableFocusNav()
				end, false, Enum.KeyCode.ButtonB)

				if props.menuFrameRef.current then
					GuiService:Select(props.menuFrameRef.current)
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
	else
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
					end

					if props.menuFrameRef.current then
						GuiService:Select(props.menuFrameRef.current)
					end
				end

				-- if user closes and opens unibar while IGM is open, do not force close unibar
				if GetFFlagOpenControlsOnMenuOpen() and GuiService.MenuIsOpen and wasUnibarClosedByUser.current then
					wasUnibarForcedOpen.current = false
					wasUnibarClosedByUser.current = false
				end

				if GetFFlagUsePolishedAnimations() then
					props.setToggleIconTransition(ReactOtter.instant(0))
					task.wait()
					props.setToggleIconTransition(ReactOtter.spring(1, Constants.MENU_ANIMATION_SPRING) :: any)
					props.setToggleWidthTransition(ReactOtter.spring(1, Constants.MENU_ANIMATION_SPRING) :: any)
				else
					props.setToggleTransition(ReactOtter.spring(1, Constants.MENU_ANIMATION_SPRING))
				end
			else
				if not GetFFlagOpenControlsOnMenuOpen() then
					ContextActionService:UnbindCoreAction("RBXEscapeUnibar")
				end

				if GuiService.SelectedCoreObject then
					local selectedWithinUnibar = props.menuFrameRef.current:IsAncestorOf(GuiService.SelectedCoreObject)
					if selectedWithinUnibar then
						GuiService.SelectedCoreObject = nil
					end
				end

				if GetFFlagOpenControlsOnMenuOpen() and GuiService.MenuIsOpen and wasUnibarForcedOpen.current then
					wasUnibarClosedByUser.current = true
				end

				if GetFFlagUsePolishedAnimations() then
					props.setToggleIconTransition(ReactOtter.spring(0, Constants.MENU_ANIMATION_SPRING) :: any)
					props.setToggleWidthTransition(ReactOtter.spring(0, Constants.MENU_ANIMATION_SPRING) :: any)
				else
					props.setToggleTransition(ReactOtter.spring(0, Constants.MENU_ANIMATION_SPRING))
				end
			end

			local openMenuConn, closeMenuConn
			if GetFFlagOpenControlsOnMenuOpen() then
				-- force open unibar when IGM is opened
				openMenuConn = GuiService.MenuOpened:Connect(function()
					if ChromeService:status():get() ~= ChromeService.MenuStatus.Open then
						if GetFFlagSupportCompactUtility() then
							ChromeService:open(true)
							wasUnibarForcedOpen.current = true
						end
					end
				end)

				-- force close unibar when IGM closed
				closeMenuConn = GuiService.MenuClosed:Connect(function()
					-- if the user had unibar open before IGM opened, do not force close unibar
					-- if a screenshot is being taken (i.e. by report menu), do not force close unibar
					-- if a compact utility is open, do not force close unibar (as it cannot normally be closed from that state)
					if
						wasUnibarForcedOpen.current
						and not ChromeUtils.isTakingScreenshot()
						and (not GetFFlagSupportCompactUtility() or not ChromeService:getCurrentUtility():get())
					then
						if GetFFlagSupportCompactUtility() then
							ChromeService:close()
							wasUnibarForcedOpen.current = false
							wasUnibarClosedByUser.current = false
						end
					end
				end)
			end

			return function()
				if GetFFlagOpenControlsOnMenuOpen() and openMenuConn then
					openMenuConn:Disconnect()
				end
				if GetFFlagOpenControlsOnMenuOpen() and closeMenuConn then
					closeMenuConn:Disconnect()
				end
			end
		end, { menuStatusOpen, utility ~= nil })
	end

	if GetFFlagEnableHamburgerIcon() then
		React.useEffect(function()
			if currentSubmenu == "nine_dot" then
				props.setToggleSubmenuTransition(ReactOtter.spring(1, Constants.MENU_ANIMATION_SPRING) :: any)
			else
				props.setToggleSubmenuTransition(ReactOtter.spring(0, Constants.MENU_ANIMATION_SPRING) :: any)
			end
		end, { currentSubmenu })
	end

	React.useEffect(function()
		if GetFFlagUsePolishedAnimations() then
			local updateSelection = coroutine.create(function()
				local counter = 0
				-- React can sometimes take a few frames to update, so retry until successful
				while counter < GetFIntIconSelectionTimeout() do
					counter += 1
					task.wait()
					if props.menuFrameRef.current and selectedItem then
						local selectChild: any? =
							props.menuFrameRef.current:FindFirstChild("IconHitArea_" .. selectedItem, true)
						if selectChild then
							GuiService.SelectedCoreObject = selectChild
							return
						end
					end
				end
			end)
			coroutine.resume(updateSelection)
		else
			if props.menuFrameRef.current and selectedItem then
				local selectChild: any? =
					props.menuFrameRef.current:FindFirstChild("IconHitArea_" .. selectedItem, true)
				if selectChild then
					GuiService.SelectedCoreObject = selectChild
				end
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
	local toggleIconTransition, setToggleIconTransition = ReactOtter.useAnimatedBinding(if menuOpen then 1 else 0)
	local toggleWidthTransition, setToggleWidthTransition = ReactOtter.useAnimatedBinding(if menuOpen then 1 else 0)
	local unibarWidth, setUnibarWidth = ReactOtter.useAnimatedBinding(0)
	local iconReflow, setIconReflow = ReactOtter.useAnimatedBinding(1)
	local flipLerp = React.useRef(false)
	local positionUpdateCount = React.useRef(0)

	local submenuOpen, toggleSubmenuTransition, setToggleSubmenuTransition
	if GetFFlagEnableHamburgerIcon() then
		submenuOpen = ChromeService:currentSubMenu():get() == "nine_dot"
		toggleSubmenuTransition, setToggleSubmenuTransition =
			ReactOtter.useAnimatedBinding(if submenuOpen then 1 else 0)
	end

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

	local unibarSizeBinding = React.joinBindings({
		if GetFFlagUsePolishedAnimations() then toggleWidthTransition else toggleTransition,
		unibarWidth,
	}):map(function(val: { [number]: number })
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
				if GetFFlagUsePolishedAnimations() then toggleIconTransition else toggleTransition,
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
				toggleTransition = if GetFFlagUsePolishedAnimations() then toggleWidthTransition else nil,
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
				if GetFFlagUsePolishedAnimations() then toggleIconTransition else toggleTransition,
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

			if GetFFlagSupportChromeContainerSizing() and item.integration.components.Container then
				local containerWidthSlots = if item.integration.containerWidthSlots
					then item.integration.containerWidthSlots:get()
					else 0

				children[item.id or ("container" .. k)] = React.createElement(ContainerHost, {
					position = positionBinding :: any,
					visible = pinned or visibleBinding :: any,
					integration = item,
					containerWidthSlots = containerWidthSlots,
				}) :: any
				xOffset += containerWidthSlots * Constants.ICON_CELL_WIDTH
				if pinned then
					xOffsetPinned += containerWidthSlots * Constants.ICON_CELL_WIDTH
				end
			else
				children[item.id or ("icon" .. k)] = React.createElement(IconHost, {
					position = positionBinding :: any,
					visible = pinned or visibleBinding :: any,
					toggleTransition = if GetFFlagEnableHamburgerIcon()
						then toggleSubmenuTransition
						elseif GetFFlagUsePolishedAnimations() then toggleIconTransition
						else toggleTransition,
					integration = item,
				}) :: any
				xOffset += Constants.ICON_CELL_WIDTH
				if pinned then
					xOffsetPinned += Constants.ICON_CELL_WIDTH
				end
			end
		end
	end

	minSize = if GetFFlagEnableAlwaysOpenUnibar() then xOffset else Constants.ICON_CELL_WIDTH * pinnedCount
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
			setToggleIconTransition = setToggleIconTransition,
			setToggleWidthTransition = setToggleWidthTransition,
			setToggleSubmenuTransition = setToggleSubmenuTransition,
			menuFrameRef = props.menuFrameRef,
		}),
		-- Background
		React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
			BackgroundTransparency = if GetFFlagChromeUsePreferredTransparency()
				then style.Theme.BackgroundUIContrast.Transparency * style.Settings.PreferredTransparency
				else style.Theme.BackgroundUIContrast.Transparency,
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

export type UnibarMenuProp = {
	layoutOrder: number,
	onAreaChanged: (id: string, position: Vector2, size: Vector2) -> nil,
	onMinWidthChanged: (width: number) -> (),
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

	local leftAlign = useMappedObservableValue(ChromeService:orderAlignment(), isLeft)

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

-- Unibar should never have to be rerendered
return React.memo(
	UnibarMenu :: any,
	if GetFFlagAnimateSubMenu()
		then function(_, _)
			return true
		end
		else nil
)
