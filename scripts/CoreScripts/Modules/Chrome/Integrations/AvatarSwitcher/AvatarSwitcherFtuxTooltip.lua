local Chrome = script:FindFirstAncestor("Chrome")

local ChromeService = require(Chrome.Service)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)
local useMappedSignal = require(Chrome.ChromeShared.Hooks.useMappedSignal)
local CommonFtuxTooltip = require(Chrome.Integrations.CommonFtuxTooltip)

local FFlagEnableUnibarTooltipQueue = require(Chrome.Flags.FFlagEnableUnibarTooltipQueue)()
local FIntAvatarSwitcherTooltipPriority = game:DefineFastInt("AvatarSwitcherTooltipPriority", 3000)
local FStringAvatarSwitcherTooltipStorageKey =
	game:DefineFastString("AvatarSwitcherTooltipStorageKey", "AvatarSwitcherTooltipStorageKey")
local FIntAvatarSwitcherTooltipShowDelay = game:DefineFastInt("AvatarSwitcherTooltipShowDelay", 1000)
local FIntAvatarSwitcherTooltipDismissDelay = game:DefineFastInt("AvatarSwitcherTooltipDismissDelay", 8500)

type Props = {
	visible: boolean,
}

local function AvatarSwitcherFtuxTooltip(props: Props)
	-- Only display the tooltip if the Avatar Switcher is available.
	-- Avatar switcher could be unavailable in the experiment variant where
	-- we remove it if the game is detected as not supporting custom avatars.
	local integrations = ChromeService:integrations()
	local avatarSwitcher = integrations[Constants.AVATAR_SWITCHER_ID]
	local avatarSwitcherAvailabilitySignal = if avatarSwitcher then avatarSwitcher.availability else nil
	local avatarSwitcherAvailability = useMappedSignal(avatarSwitcherAvailabilitySignal :: any)
	local avatarSwitcherAvailable = avatarSwitcherAvailability == ChromeService.AvailabilitySignal.Available

	return avatarSwitcherAvailable
		and CommonFtuxTooltip({
			id = if FFlagEnableUnibarTooltipQueue then "AVATAR_SWITCHER_TOOLTIP" else nil,
			priority = if FFlagEnableUnibarTooltipQueue then FIntAvatarSwitcherTooltipPriority else nil,
			isIconVisible = props.visible,
			headerKey = "CoreScripts.FTUX.Heading.NewAvatarSwitcher",
			bodyKey = "CoreScripts.FTUX.Label.AvatarSwitcherDescription",
			localStorageKey = FStringAvatarSwitcherTooltipStorageKey,
			showDelay = FIntAvatarSwitcherTooltipShowDelay,
			dismissDelay = FIntAvatarSwitcherTooltipDismissDelay,
		})
end

return AvatarSwitcherFtuxTooltip
