local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BuilderIcons = require(Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration["uiblox"]

local AvatarIcon = require(Foundation.Components.AvatarIcon)
local Icon = require(Foundation.Components.Icon)
local Image = require(Foundation.Components.Image)
local Types = require(Foundation.Components.Types)

local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local isMigrated = iconMigrationUtils.isMigrated
local isBuilderIconOrMigrated = iconMigrationUtils.isBuilderOrMigratedIcon

local AccessoryType = require(Foundation.Enums.AccessoryType)

local AvatarIconSize = require(Foundation.Enums.AvatarIconSize)
type AvatarIconSize = AvatarIconSize.AvatarIconSize

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

type ColorStyleValue = Types.ColorStyleValue
type IconAccessoryConfig = Types.IconAccessoryConfig
type AvatarAccessoryConfig = Types.AvatarAccessoryConfig

export type BreadcrumbAccessory = IconAccessoryConfig | AvatarAccessoryConfig

export type BreadcrumbAccessoryVariant = {
	iconSize: IconSize,
	avatarSize: AvatarIconSize,
	tag: string,
	style: ColorStyleValue,
}

type BreadcrumbAccessoryProps = {
	config: string | BreadcrumbAccessory,
	variant: BreadcrumbAccessoryVariant,
	LayoutOrder: number,
	testId: string,
}

local function BreadcrumbAccessory(props: BreadcrumbAccessoryProps): React.ReactNode
	local variant = props.variant
	local fullConfig: BreadcrumbAccessory = if type(props.config) == "string"
		then { iconName = props.config } :: BreadcrumbAccessory
		else props.config :: BreadcrumbAccessory

	if fullConfig.type == AccessoryType.Avatar then
		return React.createElement(AvatarIcon, {
			userId = (fullConfig :: AvatarAccessoryConfig).userId,
			size = variant.avatarSize,
			LayoutOrder = props.LayoutOrder,
			testId = props.testId,
		})
	end

	local iconName = (fullConfig :: IconAccessoryConfig).iconName
	if isBuilderIconOrMigrated(iconName) then
		return React.createElement(Icon, {
			name = if isMigrated(iconName) then migrationLookup[iconName].name else iconName,
			variant = if isMigrated(iconName)
				then migrationLookup[iconName].variant
				else (fullConfig :: IconAccessoryConfig).iconVariant,
			size = variant.iconSize,
			style = variant.style,
			LayoutOrder = props.LayoutOrder,
			testId = props.testId,
		})
	end

	return React.createElement(Image, {
		Image = iconName,
		tag = variant.tag,
		LayoutOrder = props.LayoutOrder,
		testId = props.testId,
	})
end

return React.memo(BreadcrumbAccessory)
