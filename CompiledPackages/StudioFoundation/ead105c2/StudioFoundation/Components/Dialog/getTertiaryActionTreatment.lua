local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local Foundation = require(Packages.Foundation)
local Types = require(Main.Types)

export type TertiaryActionTreatment = {
	-- Destructive or off-path tertiary actions (e.g. help links) are split from the primary/secondary buttons
	isIsolated: boolean,
	variant: Types.DialogTertiaryActionVariant,
}

local function getTertiaryActionTreatment(
	action: Types.DialogAction?,
	variant: Types.DialogTertiaryActionVariant?
): TertiaryActionTreatment
	return {
		isIsolated = action ~= nil and (variant == "Link" or variant == "Alert"),
		variant = variant or Foundation.Enums.ButtonVariant.Standard,
	}
end

return getTertiaryActionTreatment
