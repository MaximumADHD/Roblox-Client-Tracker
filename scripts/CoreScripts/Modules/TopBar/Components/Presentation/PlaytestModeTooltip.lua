local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local LinkingProtocol = require(CorePackages.Workspace.Packages.LinkingProtocol).LinkingProtocol
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local useIsPlaytestMode = require(RobloxGui.Modules.Chrome.ChromeShared.Hooks.useIsPlaytestMode)

local EducationalTooltip = Foundation.EducationalTooltip
local OverlayProvider = Foundation.OverlayProvider
local PopoverSide = Foundation.Enums.PopoverSide
local PopoverAlign = Foundation.Enums.PopoverAlign
local ButtonVariant = Foundation.Enums.ButtonVariant

local FStringPlaytestModeTooltipLearnMoreUrl = game:DefineFastString("PlaytestModeTooltipLearnMoreUrl", "https://about.roblox.com/community-standards")
local FIntPlaytestModeTooltipDisplayOrder = game:DefineFastInt("PlaytestModeTooltipDisplayOrder", -1)

type ActionProps = Foundation.ActionProps

export type PlaytestModeTooltipProps = {
	anchorRef: React.RefObject<GuiObject?>?,
}

local sawTooltip = false

local function getCanShow(anchorRef: React.RefObject<GuiObject?>?): boolean
	return not sawTooltip and anchorRef ~= nil and anchorRef.current ~= nil
end

local function PlaytestModeTooltip(props: PlaytestModeTooltipProps): React.ReactNode
	local localized = useLocalization({
		title = "CoreScripts.FTUX.Heading.ReadyToPlaytest",
		text = "CoreScripts.FTUX.Description.WhiteMenuPlaytestMode",
		continueText = "CommonUI.Features.Action.Continue",
		learnMoreText = "CommonUI.Features.Action.LearnMore",
	})

	local isPlaytestMode = useIsPlaytestMode()

	local isOpen, setIsOpen = React.useState(getCanShow(props.anchorRef))

	React.useEffect(function()
		setIsOpen(getCanShow(props.anchorRef))
	end, { props.anchorRef })

	local onClose = React.useCallback(function()
		sawTooltip = true
		setIsOpen(false)
	end, {})

	local onLearnMore = React.useCallback(function()
		LinkingProtocol.default:openURL(FStringPlaytestModeTooltipLearnMoreUrl)
		sawTooltip = true
		setIsOpen(false)
	end, {})

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
			} :: { ActionProps },
		}),
	})
end

return React.memo(PlaytestModeTooltip)
