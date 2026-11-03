local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local Foundation = require(CorePackages.Packages.Foundation)
local LinkingProtocol = require(CorePackages.Workspace.Packages.LinkingProtocol).LinkingProtocol
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local BuildModeLaunch = require(CorePackages.Workspace.Packages.BuildExperiencePlaytestLaunch.BuildModeLaunch)

local SettingsShowSignal = require(CorePackages.Workspace.Packages.CoreScriptsCommon).SettingsShowSignal
local getPlaytestModeStore = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon.GetPlaytestModeStore)

local ObservableValue = require(RobloxGui.Modules.Chrome.ChromeShared.Service.ChromeUtils).ObservableValue

local useIsPlaytestMode = require(RobloxGui.Modules.Chrome.ChromeShared.Hooks.useIsPlaytestMode)
local useObservableValue = require(RobloxGui.Modules.Chrome.ChromeShared.Hooks.useObservableValue)

local EducationalTooltip = Foundation.EducationalTooltip
local OverlayProvider = Foundation.OverlayProvider
local PopoverSide = Foundation.Enums.PopoverSide
local PopoverAlign = Foundation.Enums.PopoverAlign
local ButtonVariant = Foundation.Enums.ButtonVariant

local FFlagPlaytestModeDismissTooltip = game:DefineFastFlag("PlaytestModeDismissTooltip", false)
local FFlagEnableConsoleExpControls = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableConsoleExpControls
local ChromeEnabled = if FFlagPlaytestModeDismissTooltip then require(CorePackages.Workspace.Packages.Chrome).Enabled() else nil
local GamepadConnector = if FFlagPlaytestModeDismissTooltip and FFlagEnableConsoleExpControls and ChromeEnabled
		then require(script.Parent.Parent.GamepadConnector)
		else nil

local FFlagPlaytestModeTooltipExcludeBuildMode = game:DefineFastFlag("PlaytestModeTooltipExcludeBuildMode", false)
local FFlagPlaytestModeTooltipOncePerWeek = require(CorePackages.Workspace.Packages.SharedFlags).FFlagPlaytestModeTooltipOncePerWeek
local FFlagPlaytestModeTooltipOnlyPrivateTesters = require(CorePackages.Workspace.Packages.SharedFlags).FFlagPlaytestModeTooltipOnlyPrivateTesters

local FStringPlaytestModeTooltipLearnMoreUrl = game:DefineFastString("PlaytestModeTooltipLearnMoreUrl", "https://about.roblox.com/community-standards")
local FIntPlaytestModeTooltipDisplayOrder = game:DefineFastInt("PlaytestModeTooltipDisplayOrder", -1)

type ButtonGroupItem = Foundation.ButtonGroupItem

export type PlaytestModeTooltipProps = {
	anchorRef: React.RefObject<GuiObject?>?,
}

local sawTooltip = false
local hasRecordedTooltipSeen = false
local defaultShowTopBar = if FFlagPlaytestModeDismissTooltip
	then ObservableValue.new(false)
	else nil :: never

local function getCanShow(
	anchorRef: React.RefObject<GuiObject?>?,
	showTopBar: boolean?,
	isPlaytestMode: boolean,
	isPrivatePlaytester: boolean?
): boolean
	if FFlagPlaytestModeTooltipOncePerWeek and not isPlaytestMode then
		return false
	end

	if FFlagPlaytestModeTooltipOnlyPrivateTesters and isPrivatePlaytester ~= true then
		return false
	end

	if FFlagPlaytestModeTooltipExcludeBuildMode and BuildModeLaunch:hasBuildMode() then
		return false
	end

	if FFlagPlaytestModeTooltipOncePerWeek then
		if not hasRecordedTooltipSeen and not getPlaytestModeStore(false).getHasTooltipCooldownExpired() then
			return false
		end
	elseif sawTooltip then
		return false
	end

	return anchorRef ~= nil and anchorRef.current ~= nil and (not FFlagPlaytestModeDismissTooltip or showTopBar ~= false)
end

local function PlaytestModeTooltip(props: PlaytestModeTooltipProps): React.ReactNode
	local localized = useLocalization(if FFlagPlaytestModeTooltipOnlyPrivateTesters
		then {
			title = "CoreScripts.FTUX.Heading.YouAreAnEarlyTester",
			text = "CoreScripts.FTUX.Description.WhiteMenuPreviewing",
			continueText = "CommonUI.Features.Action.OK",
			learnMoreText = "CommonUI.Features.Action.ViewDetails",
		}
		else {
			title = "CoreScripts.FTUX.Heading.ReadyToPlaytest",
			text = "CoreScripts.FTUX.Description.WhiteMenuPlaytestMode",
			continueText = "CommonUI.Features.Action.Continue",
			learnMoreText = "CommonUI.Features.Action.LearnMore",
		})

	local isPlaytestMode = useIsPlaytestMode()

	local isPrivatePlaytester = nil
	if FFlagPlaytestModeTooltipOnlyPrivateTesters then
		isPrivatePlaytester = SignalsReact.useSignalState(getPlaytestModeStore(false).getIsPrivatePlaytester)
	end
	local showTopBar
	if FFlagPlaytestModeDismissTooltip then
		showTopBar = useObservableValue(
			if GamepadConnector == nil
				then defaultShowTopBar
				else GamepadConnector:getShowTopBar()
		)
	end

	local isOpen, setIsOpen = React.useState(getCanShow(
		props.anchorRef,
		if FFlagPlaytestModeDismissTooltip then showTopBar else nil,
		isPlaytestMode,
		isPrivatePlaytester
	))

	if FFlagPlaytestModeTooltipOncePerWeek then
		React.useEffect(function()
			if isOpen and not hasRecordedTooltipSeen then
				hasRecordedTooltipSeen = true
				getPlaytestModeStore(false).markTooltipSeen()
			end
		end, { isOpen })
	end

	local onClose = React.useCallback(function()
		if FFlagPlaytestModeTooltipOncePerWeek then
			hasRecordedTooltipSeen = false
		else
			sawTooltip = true
		end
		setIsOpen(false)
	end, {})

	local onLearnMore = React.useCallback(function()
		LinkingProtocol.default:openURL(FStringPlaytestModeTooltipLearnMoreUrl)
		if FFlagPlaytestModeDismissTooltip then
			onClose()
		else
			sawTooltip = true
			setIsOpen(false)
		end
	end, { if FFlagPlaytestModeDismissTooltip then onClose else nil } :: { unknown })

	React.useEffect(function()
		setIsOpen(getCanShow(
			props.anchorRef,
			if FFlagPlaytestModeDismissTooltip then showTopBar else nil,
			isPlaytestMode,
			isPrivatePlaytester
		))
	end, {
		props.anchorRef,
		if FFlagPlaytestModeDismissTooltip then showTopBar else nil,
		if FFlagPlaytestModeTooltipOncePerWeek then isPlaytestMode else nil,
		if FFlagPlaytestModeTooltipOnlyPrivateTesters then isPrivatePlaytester else nil,
	} :: { unknown })

	if FFlagPlaytestModeDismissTooltip then
		React.useEffect(function()
			if isOpen and not showTopBar then
				onClose()
			end
		end, { isOpen, showTopBar } :: { unknown })

		React.useEffect(function()
			local settingsShowConnection = SettingsShowSignal:connect(function(isSettingsOpen)
				if isSettingsOpen then
					onClose()
				end
			end)

			return function()
				settingsShowConnection:Disconnect()
			end
		end, { onClose } :: { unknown })
	end

	if (not FFlagPlaytestModeTooltipOncePerWeek and (sawTooltip or not isPlaytestMode)) or not isOpen then
		return nil
	end

	return React.createElement(OverlayProvider, {
		DisplayOrder = FIntPlaytestModeTooltipDisplayOrder,
	}, {
		Tooltip = React.createElement(EducationalTooltip, {
			anchorRef = props.anchorRef,
			title = localized.title,
			text = localized.text,
			side = PopoverSide.Bottom,
			align = PopoverAlign.Start,
			isOpen = true,
			onClose = onClose,
			actions = {
				{
					text = localized.continueText,
					variant = ButtonVariant.Emphasis,
					onActivated = onClose,
				},
				{
					text = localized.learnMoreText,
					variant = ButtonVariant.Standard,
					onActivated = onLearnMore,
				},
			} :: { ButtonGroupItem },
		}),
	})
end

return React.memo(PlaytestModeTooltip)
