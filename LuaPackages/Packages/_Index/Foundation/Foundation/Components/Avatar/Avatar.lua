local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Dash = require(Packages.Dash)

local Flags = require(Foundation.Utility.Flags)
local Image = require(Foundation.Components.Image)
local Indicator = require(script.Parent.Indicator)
local StatusIndicator = require(Foundation.Components.StatusIndicator)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local mapBindable = require(Foundation.Utility.mapBindable)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local ThumbnailSize = require(Foundation.Enums.ThumbnailSize)
local ThumbnailType = require(Foundation.Enums.ThumbnailType)
local getRbxThumb = require(Foundation.Utility.getRbxThumb)

local useAvatarVariants = require(script.Parent.useAvatarVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local usePresentationContext = require(Foundation.Providers.Style.PresentationContext).usePresentationContext

local AvatarSize = require(Foundation.Enums.AvatarSize)
type AvatarSize = AvatarSize.AvatarSize
local UserPresence = require(Foundation.Enums.UserPresence)
type UserPresence = UserPresence.UserPresence

local getAvatarSize = require(script.Parent.getAvatarSize)
type Bindable<T> = Types.Bindable<T>

export type AvatarProps = {
	-- Roblox user id
	userId: Bindable<number>,
	backgroundStyle: Types.ColorStyle?,
	backplateStyle: Types.ColorStyle?,
	size: AvatarSize?,
	userPresence: UserPresence?,
	-- When true, requests the thumbnail service to composite the user's
	-- equipped profile frame into the headshot server-side.
	includeProfileFrame: boolean?,
} & Types.CommonProps

local defaultProps = {
	size = AvatarSize.Medium,
	userPresence = UserPresence.None :: UserPresence,
	testId = "--foundation-avatar",
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
				Image = if Flags.FoundationAvatarBindableUserId
					then mapBindable(props.userId, function(userId)
						return getRbxThumb(
							ThumbnailType.AvatarHeadShot,
							userId,
							ThumbnailSize.Medium,
							if Flags.FoundationAvatarIncludeProfileFrame
								then { includeProfileFrame = props.includeProfileFrame }
								else nil
						)
					end)
					else getRbxThumb(
						ThumbnailType.AvatarHeadShot,
						props.userId :: number,
						ThumbnailSize.Medium,
						if Flags.FoundationAvatarIncludeProfileFrame
							then { includeProfileFrame = props.includeProfileFrame }
							else nil
					),
				tag = variantProps.avatar.tag,
				backgroundStyle = props.backgroundStyle,
				testId = if Flags.FoundationAvatarBindableUserId then `{props.testId}--image` else nil,
			}),
			Indicator = if Flags.FoundationAvatarBeta
				then if variantProps.statusIndicator.isVisible
					then React.createElement(
						View,
						Dash.join(variantProps.statusIndicatorBackplate, {
							testId = `{props.testId}--indicator-backplate`,
						}),
						React.createElement(StatusIndicator, {
							testId = `{props.testId}--status-indicator`,
							variant = variantProps.statusIndicator.variant,
							shape = variantProps.statusIndicator.shape,
							size = variantProps.statusIndicator.size,
						})
					)
					else nil
				elseif variantProps.indicator.isVisible then React.createElement(
					View,
					Dash.join(variantProps.indicatorBackplate, {
						testId = `{props.testId}--indicator`,
					}),
					React.createElement(Indicator, variantProps.indicator :: any)
				)
				else nil,
		}
	)
end

return React.memo(React.forwardRef(Avatar))
