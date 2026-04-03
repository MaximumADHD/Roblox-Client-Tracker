local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BuilderIcons = require(Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration["uiblox"]
type IconVariant = BuilderIcons.IconVariant

local Icon = require(Foundation.Components.Icon)
local Image = require(Foundation.Components.Image)
local View = require(Foundation.Components.View)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local useTokens = require(Foundation.Providers.Style.useTokens)
local isMigrated = iconMigrationUtils.isMigrated
local isBuilderIconOrMigrated = iconMigrationUtils.isBuilderOrMigratedIcon
local StateLayerAffordance = require(Packages.Foundation.Enums.StateLayerAffordance)

local AccessoryType = require(Foundation.Enums.AccessoryType)
type AccessoryType = AccessoryType.AccessoryType

local Avatar = require(Foundation.Components.Avatar)
type AvatarProps = Avatar.AvatarProps

local useAccessoryVariants = require(script.Parent.useAccessoryVariants)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

type IconConfig = {
	iconName: string,
	iconVariant: IconVariant?,
	type: nil,
}
type AvatarConfig = {
	type: "Avatar",
	userId: number,
}

export type ListAccessory = IconConfig | AvatarConfig

type Config = string | ListAccessory

type AccessoryProps<Config = Config> = {
	config: Config,
	size: InputSize,
	isDisabled: boolean?,
	testId: string,
	LayoutOrder: number?,
}

local function Accessory(accessoryProps: AccessoryProps)
	local tokens = useTokens()
	local fullConfig: ListAccessory = React.useMemo(function()
		if type(accessoryProps.config) == "string" then
			return {
				iconName = accessoryProps.config,
			} :: ListAccessory
		else
			return accessoryProps.config
		end
	end, { accessoryProps.config })

	local accessoryType: AccessoryType = if fullConfig.type == AccessoryType.Avatar
		then AccessoryType.Avatar
		elseif
			type(accessoryProps.config) == "string" or isBuilderIconOrMigrated((fullConfig :: IconConfig).iconName)
		then AccessoryType.Icon
		else AccessoryType.Media

	local variants = useAccessoryVariants(tokens, accessoryProps.size, accessoryType)

	local element: React.ReactNode
	if fullConfig.type == AccessoryType.Avatar then
		element = React.createElement(Avatar, {
			userId = (fullConfig :: AvatarConfig).userId,
			size = accessoryProps.size,
		})
	elseif isBuilderIconOrMigrated(fullConfig.iconName) then
		element = React.createElement(Icon, {
			name = if isMigrated(fullConfig.iconName)
				then migrationLookup[fullConfig.iconName].name
				else fullConfig.iconName,
			variant = if isMigrated(fullConfig.iconName)
				then migrationLookup[fullConfig.iconName].variant
				else fullConfig.iconVariant,
			size = variants.accessory.Size.Y.Offset,
		})
	else
		element = React.createElement(Image, {
			Image = fullConfig.iconName,
			Size = variants.accessory.Size,
			cornerRadius = variants.accessory.cornerRadius,
		})
	end

	return React.createElement(View, {
		Size = variants.container.Size,
		tag = "align-x-center align-y-center",
		stateLayer = {
			affordance = StateLayerAffordance.None,
		},
		isDisabled = accessoryProps.isDisabled,
		LayoutOrder = accessoryProps.LayoutOrder,
		testId = accessoryProps.testId,
	}, element)
end

return React.memo(Accessory)
