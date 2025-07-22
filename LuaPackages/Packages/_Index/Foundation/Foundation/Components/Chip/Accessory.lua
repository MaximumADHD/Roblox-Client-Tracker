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
local useCumulativeBackground = require(Foundation.Utility.useCumulativeBackground)
local isMigrated = iconMigrationUtils.isMigrated
local isBuilderIconOrMigrated = iconMigrationUtils.isBuilderOrMigratedIcon
local AvatarGroup = require(Foundation.Components.AvatarGroup)
type AvatarGroupProps = AvatarGroup.AvatarGroupProps
local AvatarGroupType = require(Foundation.Enums.AvatarGroupType)
type AvatarGroupType = AvatarGroupType.AvatarGroupType
local useBackgroundStyle = require(Foundation.Providers.Style.BackgroundStyleContext).useBackgroundStyle

local Types = require(Foundation.Components.Types)

local useAccessoryVariants = require(script.Parent.useAccessoryVariants)

local ChipSize = require(Foundation.Enums.ChipSize)
type ChipSize = ChipSize.ChipSize

type IconConfig = {
	iconName: string,
	iconVariant: IconVariant?,
	isCircular: boolean?,
	onActivated: (() -> ())?,
	type: nil,
}
type AvatarGroupConfig = {
	type: "AvatarGroup",
	-- Only subset of the properties is allowed explicitly, the rest come from the Chip
	props: {
		avatars: { { userId: number } | number },
		type: AvatarGroupType?,
		max: number?,
	},
	onActivated: nil,
	isCircular: nil,
}

export type Accessory = IconConfig | AvatarGroupConfig

type Config = string | Accessory

type AccessoryProps<Config = Config> = {
	isLeading: boolean,
	config: Config,
	size: ChipSize,
	contentStyle: any,
	chipBackgroundStyle: Types.ColorStyle,
}

local function AvatarGroupWrapper(props: AccessoryProps<AvatarGroupConfig>)
	local backgroundStyle = useBackgroundStyle()
	local avatarGroupProps = (table.clone(props.config.props) :: unknown) :: AvatarGroupProps
	avatarGroupProps.size = props.size
	avatarGroupProps.backplateStyle = useCumulativeBackground(backgroundStyle, props.chipBackgroundStyle)
	return React.createElement(AvatarGroup, avatarGroupProps)
end

local function Accessory(accessoryProps: AccessoryProps)
	local tokens = useTokens()
	local fullConfig: Accessory = React.useMemo(function()
		if type(accessoryProps.config) == "string" then
			return {
				iconName = accessoryProps.config,
				isCircular = false :: boolean?,
			} :: Accessory
		else
			return accessoryProps.config
		end
	end, { accessoryProps.config })

	local variants = useAccessoryVariants(
		tokens,
		accessoryProps.size,
		accessoryProps.isLeading,
		fullConfig.type == "AvatarGroup" or fullConfig.isCircular or false
	)

	local element: React.ReactNode
	if fullConfig.type == "AvatarGroup" then
		element = React.createElement(AvatarGroupWrapper, accessoryProps :: AccessoryProps<AvatarGroupConfig>)
	elseif isBuilderIconOrMigrated(fullConfig.iconName) then
		element = React.createElement(Icon, {
			name = if isMigrated(fullConfig.iconName)
				then migrationLookup[fullConfig.iconName].name
				else fullConfig.iconName,
			variant = if isMigrated(fullConfig.iconName)
				then migrationLookup[fullConfig.iconName].variant
				else fullConfig.iconVariant,
			size = variants.accessory.Size.Y.Offset,
			style = accessoryProps.contentStyle,
		})
	else
		element = React.createElement(Image, {
			Image = fullConfig.iconName,
			Size = variants.accessory.Size,
			imageStyle = accessoryProps.contentStyle,
		})
	end

	return React.createElement(View, {
		tag = "auto-xy",
		padding = variants.accessory.padding,
		onActivated = fullConfig.onActivated,
		LayoutOrder = if accessoryProps.isLeading then 1 else 3,
	}, element)
end

return React.memo(Accessory)
