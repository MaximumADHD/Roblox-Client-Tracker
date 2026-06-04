local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)
local useMappedSignal = require(CorePackages.Workspace.Packages.Chrome).Hooks.useMappedSignal
local CommonFtuxTooltip = require(Chrome.Integrations.CommonFtuxTooltip)
-- Highest priority, the next lower priority is Avatar switcher at 3000.
local FIntInExperienceShopTooltipPriority = game:DefineFastInt("InExperienceShopTooltipPriority", 3500)
local FStringInExperienceShopTooltipStorageKey =
	game:DefineFastString("InExperienceShopTooltipStorageKey", "InExperienceShopTooltipStorageKey")
local FIntInExperienceShopTooltipShowDelay = game:DefineFastInt("InExperienceShopTooltipShowDelay", 1000)
local FIntInExperienceShopTooltipDismissDelay = game:DefineFastInt("InExperienceShopTooltipDismissDelay", 7000)

type Props = {
	visible: boolean,
}

local function InExperienceShopFtuxTooltip(props: Props)
	-- Only display the tooltip if the In-Experience Shop is available.
	-- Shop could be unavailable when CoreGui is disabled, prefetch failed,
	-- or the experience has no shop items.
	local integrations = ChromeService:integrations()
	local shop = integrations[Constants.IN_EXPERIENCE_SHOP_ID]
	local shopAvailabilitySignal = if shop then shop.availability else nil
	local shopAvailability = useMappedSignal(shopAvailabilitySignal :: any)
	local shopAvailable = shopAvailability == ChromeService.AvailabilitySignal.Available

	return shopAvailable
		and CommonFtuxTooltip({
			id = "IN_EXPERIENCE_SHOP_TOOLTIP",
			priority = FIntInExperienceShopTooltipPriority,
			isIconVisible = props.visible,
			headerKey = "CoreScripts.FTUX.Heading.InExperienceShop",
			bodyKey = "CoreScripts.FTUX.Label.InExperienceShopDescription",
			localStorageKey = FStringInExperienceShopTooltipStorageKey,
			showDelay = FIntInExperienceShopTooltipShowDelay,
			dismissDelay = FIntInExperienceShopTooltipDismissDelay,
		})
end

return InExperienceShopFtuxTooltip
