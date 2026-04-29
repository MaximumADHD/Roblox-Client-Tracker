local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Font = BuilderIcons.Font
local IconVariant = BuilderIcons.IconVariant
type IconVariant = BuilderIcons.IconVariant

local function getIconRichText(iconName: string, iconVariant: IconVariant?): string
	local variant = iconVariant or IconVariant.Regular
	local font: Font = Font[variant]

	return `<font family="{font.Family}" weight="{font.Weight.Value}">{iconName}</font>`
end

return getIconRichText
