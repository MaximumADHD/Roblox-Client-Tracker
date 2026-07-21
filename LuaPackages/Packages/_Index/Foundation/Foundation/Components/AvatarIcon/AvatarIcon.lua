local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Image = require(Foundation.Components.Image)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local mapBindable = require(Foundation.Utility.mapBindable)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local ThumbnailSize = require(Foundation.Enums.ThumbnailSize)
local ThumbnailType = require(Foundation.Enums.ThumbnailType)
local getRbxThumb = require(Foundation.Utility.getRbxThumb)

local AvatarIconSize = require(Foundation.Enums.AvatarIconSize)
type AvatarIconSize = AvatarIconSize.AvatarIconSize

local useAvatarIconVariants = require(script.Parent.useAvatarIconVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)

type Bindable<T> = Types.Bindable<T>

export type AvatarIconProps = {
	userId: Bindable<number>,
	backgroundStyle: Types.ColorStyle?,
	backplateStyle: Types.ColorStyle?,
	size: AvatarIconSize?,
} & Types.CommonProps

local defaultProps = {
	size = AvatarIconSize.Medium,
	testId = "--foundation-avatar-icon",
}

local function AvatarIcon(avatarIconProps: AvatarIconProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(avatarIconProps, defaultProps)
	local tokens = useTokens()

	local variantProps = useAvatarIconVariants(tokens, props.size, props.backplateStyle)

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			ref = ref,
			stroke = variantProps.container.stroke,
			backgroundStyle = props.backplateStyle,
			Size = UDim2.fromOffset(variantProps.container.size, variantProps.container.size),
		}),
		{
			Image = React.createElement(Image, {
				Image = mapBindable(props.userId, function(userId)
					return getRbxThumb(ThumbnailType.AvatarHeadShot, userId, ThumbnailSize.Medium)
				end),
				tag = variantProps.avatar.tag,
				backgroundStyle = props.backgroundStyle,
			}),
		}
	)
end

return React.memo(React.forwardRef(AvatarIcon))
