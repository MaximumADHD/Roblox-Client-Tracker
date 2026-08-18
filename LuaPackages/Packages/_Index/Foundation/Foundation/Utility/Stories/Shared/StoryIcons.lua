local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)

local IconName = BuilderIcons.Icon
local migrationLookup = BuilderIcons.Migration["uiblox"]

export type StoryIcon = { name: string, title: string, subtitle: string }

local MIGRATED_LEGACY_ICON = "icons/placeholder/placeholderOn_small"

local function formatMigratedLegacySubtitle(legacyPath: string): string
	local mapping = migrationLookup[legacyPath]
	return `{legacyPath} → {mapping.name} ({mapping.variant})`
end

-- One icon per kind the design system accepts, so every story that renders an `icon` (or
-- `leading`) prop covers all rendering paths and we never regress one kind while testing another.
-- Keep exactly one entry per kind:
--   * a BuilderIcons enum icon     -> rendered via the Icon component
--   * a migrated legacy string     -> mapped to a Builder icon, rendered via the Icon component
--   * a non-migrated legacy string -> rendered via the Image component
local ICON_TYPE_EXAMPLES: { StoryIcon } = {
	{
		name = IconName.RobloxPlus,
		title = "Builder icon · Icon component",
		subtitle = IconName.RobloxPlus,
	},
	{
		name = MIGRATED_LEGACY_ICON,
		title = "Migrated legacy string · Icon component",
		subtitle = formatMigratedLegacySubtitle(MIGRATED_LEGACY_ICON),
	},
	{
		name = "icons/menu/clothing/limited_on",
		title = "Non-migrated legacy string · Image component",
		subtitle = "icons/menu/clothing/limited_on",
	},
}

export type BuildIconControlOptionsProps = {
	additional: { string }?,
}

local EMPTY_ICON = ""

local function buildIconControlOptions(props: BuildIconControlOptionsProps?): { string }
	local options: { string } = { EMPTY_ICON }
	for _, example in ICON_TYPE_EXAMPLES do
		table.insert(options, example.name)
	end
	local additional = if props then props.additional else nil
	if additional then
		for _, name in additional do
			table.insert(options, name)
		end
	end
	return options
end

local function parseIconControl(controlValue: string): string?
	if controlValue == EMPTY_ICON then
		return nil
	end
	return controlValue
end

local function buildIconTypeMatrixRows(
	renderCells: (iconExample: StoryIcon) -> { React.ReactNode }
): { MatrixGridShared.MatrixGridRow }
	local rows: { MatrixGridShared.MatrixGridRow } = {}
	for _, iconExample in ICON_TYPE_EXAMPLES do
		table.insert(rows, {
			label = MatrixGridShared.matrixInfoLabel(iconExample.title, iconExample.subtitle),
			cells = renderCells(iconExample),
		})
	end
	return rows
end

return {
	ICON_TYPE_EXAMPLES = ICON_TYPE_EXAMPLES,
	buildIconControlOptions = buildIconControlOptions,
	buildIconTypeMatrixRows = buildIconTypeMatrixRows,
	parseIconControl = parseIconControl,
}
