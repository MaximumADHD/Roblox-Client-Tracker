local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local LinkingProtocol = require(CorePackages.Workspace.Packages.LinkingProtocol).LinkingProtocol
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local BuildModeLaunch = require(CorePackages.Workspace.Packages.BuildExperience.BuildModeLaunch)

local SettingsShowSignal = require(CorePackages.Workspace.Packages.CoreScriptsCommon).SettingsShowSignal

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

local FStringPlaytestModeTooltipLearnMoreUrl = game:DefineFastString("PlaytestModeTooltipLearnMoreUrl", "https://about.roblox.com/community-standards")
local FIntPlaytestModeTooltipDisplayOrder = game:DefineFastInt("PlaytestModeTooltipDisplayOrder", -1)

type ButtonGroupItem = Foundation.ButtonGroupItem

export type PlaytestModeTooltipProps = {
	anchorRef: React.RefObject<GuiObject?>?,
}

local sawTooltip = false
local defaultShowTopBar = if FFlagPlaytestModeDismissTooltip
	then ObservableValue.new(false)
	else nil :: never

local function getCanShow(anchorRef: React.RefObject<GuiObject?>?, showTopBar: boolean?): boolean
	if FFlagPlaytestModeTooltipExcludeBuildMode and BuildModeLaunch:hasBuildMode() then
		return false
	end

	return not sawTooltip and anchorRef ~= nil and anchorRef.current ~= nil and (not FFlagPlaytestModeDismissTooltip or showTopBar ~= false)
end

local function PlaytestModeTooltip(props: PlaytestModeTooltipProps): React.ReactNode
	local localized = useLocalization({
		title = "CoreScripts.FTUX.Heading.ReadyToPlaytest",
		text = "CoreScripts.FTUX.Description.WhiteMenuPlaytestMode",
		continueText = "CommonUI.Features.Action.Continue",
		learnMoreText = "CommonUI.Features.Action.LearnMore",
	})

	local isPlaytestMode = useIsPlaytestMode()

	local showTopBar
	if FFlagPlaytestModeDismissTooltip then
		showTopBar = useObservableValue(
			if GamepadConnector == nil
				then defaultShowTopBar
				else GamepadConnector:getShowTopBar()
		)
	end

	local isOpen, setIsOpen = React.useState(getCanShow(props.anchorRef, if FFlagPlaytestModeDismissTooltip then showTopBar else nil))

	local onClose = React.useCallback(function()
		sawTooltip = true
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
		setIsOpen(getCanShow(props.anchorRef, if FFlagPlaytestModeDismissTooltip then showTopBar else nil))
	end, { props.anchorRef, if FFlagPlaytestModeDismissTooltip then showTopBar else nil } :: { unknown })

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

	if sawTooltip or not isPlaytestMode or not isOpen then
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
