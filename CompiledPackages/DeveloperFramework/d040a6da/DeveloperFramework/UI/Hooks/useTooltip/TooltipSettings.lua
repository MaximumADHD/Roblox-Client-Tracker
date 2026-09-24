local FIntDevFrameworkTooltipShowDelayMs = game:DefineFastInt("DevFrameworkTooltipShowDelayMs", 300)
local FIntDevFrameworkTooltipHideDelayMs = game:DefineFastInt("DevFrameworkTooltipHideDelayMs", 300)

local TooltipSettings = {
	showDelay = FIntDevFrameworkTooltipShowDelayMs / 1000,
	hideDelay = FIntDevFrameworkTooltipHideDelayMs / 1000,
	showCount = 0,
	hideCount = 0,
	disableAllTooltips = false,
}

return TooltipSettings
