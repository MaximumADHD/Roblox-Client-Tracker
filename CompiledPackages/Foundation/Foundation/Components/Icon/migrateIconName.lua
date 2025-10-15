local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Flags = require(Foundation.Utility.Flags)
local BuilderIcons = require(Packages.BuilderIcons)
type IconVariant = BuilderIcons.IconVariant
local migrationLookUp = BuilderIcons.Migration

local function migrateIconName(name: string): { name: string, variant: IconVariant? } | nil
	if Flags.FoundationMigrateIconNames then
		return migrationLookUp["uiblox"][name]
	else
		return nil
	end
end

return migrateIconName
