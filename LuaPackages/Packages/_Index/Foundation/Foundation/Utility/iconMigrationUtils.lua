local Foundation = script:FindFirstAncestor("Foundation")
local Utility = script.Parent
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration["uiblox"]
type IconVariant = BuilderIcons.IconVariant

local isBuilderIcon = require(Utility.isBuilderIcon)

export type NormalizedIconName = {
	name: string,
	variant: IconVariant?,
}

export type IconMigrationUtils = {
	isMigrated: (name: string) -> boolean,
	isBuilderOrMigratedIcon: (name: string) -> boolean,
	normalizeIconName: (name: string) -> NormalizedIconName,
}

local function isMigrated(name: string)
	return migrationLookup[name] ~= nil
end
local function isBuilderOrMigratedIcon(name: string)
	return isBuilderIcon(name) or isMigrated(name)
end

-- Icon sizes from isBuilderIcon(name) before it migrates legacy strings. Pass the
-- returned name to Icon so migratable UIBlox paths use builder sizing.
local function normalizeIconName(name: string): NormalizedIconName
	if isMigrated(name) then
		local migrated = migrationLookup[name]
		return { name = migrated.name, variant = migrated.variant }
	end
	return { name = name, variant = nil }
end

return {
	isMigrated = isMigrated,
	isBuilderOrMigratedIcon = isBuilderOrMigratedIcon,
	normalizeIconName = normalizeIconName,
} :: IconMigrationUtils
