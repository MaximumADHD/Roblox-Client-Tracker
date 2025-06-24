local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BuilderIcons = require(Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration["uiblox"]
type IconVariant = BuilderIcons.IconVariant

local useTokens = require(Foundation.Providers.Style.useTokens)
local Image = require(Foundation.Components.Image)
local View = require(Foundation.Components.View)
local Icon = require(Foundation.Components.Icon)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local isMigrated = iconMigrationUtils.isMigrated
local isBuilderIconOrMigrated = iconMigrationUtils.isBuilderOrMigratedIcon

local useAccessoryVariants = require(script.Parent.useAccessoryVariants)

local ChipSize = require(Foundation.Enums.ChipSize)
type ChipSize = ChipSize.ChipSize

type AccessoryProps = {
	isLeading: boolean,
	config: string | Accessory,
	size: ChipSize,
	contentStyle: any,
}

export type Accessory = {
	iconName: string,
	iconVariant: IconVariant?,
	isCircular: boolean?,
	onActivated: (() -> ())?,
}

local function Accessory(accessoryProps: AccessoryProps)
	local tokens = useTokens()
	local fullConfig: Accessory = React.useMemo(function()
		if type(accessoryProps.config) == "string" then
			return {
				iconName = accessoryProps.config,
				isCircular = false :: boolean?,
			}
		else
			return accessoryProps.config
		end
	end, { accessoryProps.config })

	local variants =
		useAccessoryVariants(tokens, accessoryProps.size, accessoryProps.isLeading, fullConfig.isCircular or false)

	return React.createElement(
		View,
		{
			tag = "auto-xy",
			padding = variants.accessory.padding,
			onActivated = fullConfig.onActivated,
			LayoutOrder = if accessoryProps.isLeading then 1 else 3,
		},
		if isBuilderIconOrMigrated(fullConfig.iconName)
			then React.createElement(Icon, {
				name = if isMigrated(fullConfig.iconName)
					then migrationLookup[fullConfig.iconName].name
					else fullConfig.iconName,
				variant = if isMigrated(fullConfig.iconName)
					then migrationLookup[fullConfig.iconName].variant
					else fullConfig.iconVariant,
				size = variants.accessory.Size.Y.Offset,
				style = accessoryProps.contentStyle,
			})
			else React.createElement(Image, {
				Image = fullConfig.iconName,
				Size = variants.accessory.Size,
				imageStyle = accessoryProps.contentStyle,
			})
	)
end

return React.memo(Accessory)
