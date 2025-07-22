local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local Image = require(Foundation.Components.Image)
local Indicator = require(script.Parent.Indicator)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local getRbxThumb = require(Foundation.Utility.getRbxThumb)
local ThumbnailType = require(Foundation.Enums.ThumbnailType)
local ThumbnailSize = require(Foundation.Enums.ThumbnailSize)

local useAvatarVariants = require(script.Parent.useAvatarVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local usePresentationContext = require(Foundation.Providers.Style.PresentationContext).usePresentationContext

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
local UserPresence = require(Foundation.Enums.UserPresence)
type UserPresence = UserPresence.UserPresence

local getAvatarSize = require(script.Parent.getAvatarSize)

export type AvatarProps = {
	-- Roblox user id
	userId: number,
	backgroundStyle: Types.ColorStyle?,
	backplateStyle: Types.ColorStyle?,
	size: InputSize?,
	userPresence: UserPresence?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
	userPresence = UserPresence.None :: UserPresence,
}

local function Avatar(avatarProps: AvatarProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(avatarProps, defaultProps)
	local tokens = useTokens()
	local presentationContext = usePresentationContext()

	local variantProps =
		useAvatarVariants(tokens, props.size, props.userPresence, props.backplateStyle, presentationContext.isIconSize)
	local size = getAvatarSize(tokens, props.size, presentationContext.isIconSize)

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			ref = ref,
			backgroundStyle = variantProps.container.backgroundStyle,
			stroke = variantProps.container.stroke,
			Size = UDim2.fromOffset(size, size),
		}),
		{
			Image = React.createElement(Image, {
				Image = getRbxThumb(ThumbnailType.AvatarHeadShot, props.userId, ThumbnailSize.Medium),
				tag = variantProps.avatar.tag,
				backgroundStyle = props.backgroundStyle,
			}),
			Indicator = if variantProps.indicator.isVisible
				then React.createElement(
					View,
					variantProps.indicatorBackplate :: any,
					React.createElement(Indicator, variantProps.indicator :: any)
				)
				else nil,
		}
	)
end

return React.memo(React.forwardRef(Avatar))
