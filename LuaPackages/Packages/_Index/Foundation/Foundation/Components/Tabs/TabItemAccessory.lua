local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Badge = require(Foundation.Components.Badge)
local BuilderIcons = require(Packages.BuilderIcons)
local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
local Image = require(Foundation.Components.Image)
local StatusIndicator = require(Foundation.Components.StatusIndicator)
local StatusIndicatorShape = require(Foundation.Enums.StatusIndicatorShape)
local StatusIndicatorVariant = require(Foundation.Enums.StatusIndicatorVariant)
local Types = require(Foundation.Components.Types)
local getIconScale = require(Foundation.Utility.getIconScale)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local isMigrated = iconMigrationUtils.isMigrated
local isBuilderIconOrMigrated = iconMigrationUtils.isBuilderOrMigratedIcon

local migrationLookup = BuilderIcons.Migration["uiblox"]

type IconSize = IconSize.IconSize
type IconVariant = BuilderIcons.IconVariant
type StatusIndicatorShape = StatusIndicatorShape.StatusIndicatorShape
type StatusIndicatorVariant = StatusIndicatorVariant.StatusIndicatorVariant

export type TabsAccessory = | Types.IconAccessoryConfig | Types.BadgeAccessoryConfig | Types.StatusIndicatorAccessoryConfig

type LegacyIcon = {
	name: string,
	variant: IconVariant?,
}

type LegacyIndicator = {
	variant: StatusIndicatorVariant?,
	shape: StatusIndicatorShape?,
	value: number?,
	max: number?,
}

export type TabItemAccessoryProps = {
	-- Resolved accessory to render.
	accessory: TabsAccessory,
	-- Foreground color for an icon accessory.
	contentStyle: Types.ColorStyle?,
	-- Icon size, cascaded from the tab.
	iconSize: IconSize,
	-- **Engine**: Order of this accessory among tab content siblings.
	LayoutOrder: number,
	-- Test identifier for this accessory.
	testId: string,
}

local function resolve(
	leading: (string | TabsAccessory)?,
	trailing: (string | TabsAccessory)?,
	icon: (string | LegacyIcon)?,
	indicator: LegacyIndicator?
): (TabsAccessory?, TabsAccessory?)
	local resolvedLeading: TabsAccessory? = if icon ~= nil
		then if typeof(icon) == "string"
			then { iconName = icon }
			else { iconName = icon.name, iconVariant = icon.variant }
		elseif typeof(leading) == "string" then { iconName = leading }
		else leading

	local resolvedTrailing: TabsAccessory? = if indicator ~= nil
		then {
			type = "StatusIndicator",
			variant = indicator.variant,
			shape = indicator.shape,
			value = indicator.value,
			max = indicator.max,
		}
		elseif typeof(trailing) == "string" then { iconName = trailing }
		else trailing

	return resolvedLeading, resolvedTrailing
end

local function TabItemAccessory(props: TabItemAccessoryProps): React.ReactNode
	local accessory = props.accessory

	if accessory.type == "Badge" then
		return React.createElement(Badge, {
			text = accessory.text,
			icon = accessory.icon,
			variant = accessory.variant,
			LayoutOrder = props.LayoutOrder,
			testId = props.testId,
		})
	end

	if accessory.type == "StatusIndicator" then
		return React.createElement(
			StatusIndicator,
			if accessory.value
				then {
					value = accessory.value,
					variant = accessory.variant :: StatusIndicator.StatusIndicatorNumericVariant,
					max = accessory.max,
					LayoutOrder = props.LayoutOrder,
					testId = props.testId,
				}
				else {
					variant = accessory.variant,
					shape = accessory.shape,
					LayoutOrder = props.LayoutOrder,
					testId = props.testId,
				}
		)
	end

	if isBuilderIconOrMigrated(accessory.iconName) then
		return React.createElement(Icon, {
			name = if isMigrated(accessory.iconName)
				then migrationLookup[accessory.iconName].name
				else accessory.iconName,
			variant = if isMigrated(accessory.iconName)
				then migrationLookup[accessory.iconName].variant
				else accessory.iconVariant,
			size = props.iconSize,
			style = props.contentStyle,
			LayoutOrder = props.LayoutOrder,
			testId = props.testId,
		})
	end

	local intrinsicIconSize, scale = getIconScale(accessory.iconName, props.iconSize)
	if intrinsicIconSize then
		return React.createElement(Image, {
			Image = accessory.iconName,
			Size = UDim2.fromOffset(intrinsicIconSize.X, intrinsicIconSize.Y),
			imageStyle = props.contentStyle,
			scale = scale,
			LayoutOrder = props.LayoutOrder,
			testId = props.testId,
		})
	end

	return nil
end

return {
	resolve = resolve,
	TabItemAccessory = TabItemAccessory,
}
