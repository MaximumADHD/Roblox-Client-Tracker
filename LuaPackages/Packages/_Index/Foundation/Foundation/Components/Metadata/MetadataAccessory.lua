local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local AccessoryType = require(Foundation.Enums.AccessoryType)
local AvatarIcon = require(Foundation.Components.AvatarIcon)
local Icon = require(Foundation.Components.Icon)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local useMetadataVariants = require(script.Parent.useMetadataVariants)
type MetadataAccessoryVariant = useMetadataVariants.MetadataAccessoryVariant

type IconAccessoryConfig = Types.IconAccessoryConfig
type AvatarAccessoryConfig = Types.AvatarAccessoryConfig
type MetadataAccessory = IconAccessoryConfig | AvatarAccessoryConfig

type MetadataAccessoryProps = {
	config: string | MetadataAccessory,
	variant: MetadataAccessoryVariant,
	LayoutOrder: number,
	testId: string,
}

local function MetadataAccessoryElement(props: MetadataAccessoryProps): React.ReactNode
	local variant = props.variant
	local config: MetadataAccessory = if type(props.config) == "string"
		then { iconName = props.config } :: MetadataAccessory
		else props.config

	if config.type == AccessoryType.Avatar then
		return React.createElement(View, {
			tag = variant.avatarTag,
			LayoutOrder = props.LayoutOrder,
		}, {
			Avatar = React.createElement(AvatarIcon, {
				userId = (config :: AvatarAccessoryConfig).userId,
				size = variant.avatarSize,
				testId = props.testId,
			}),
		})
	end

	local iconConfig = config :: IconAccessoryConfig
	return React.createElement(Icon, {
		name = iconConfig.iconName,
		variant = iconConfig.iconVariant,
		size = variant.iconSize,
		style = variant.style,
		LayoutOrder = props.LayoutOrder,
		testId = props.testId,
	})
end

return MetadataAccessoryElement
