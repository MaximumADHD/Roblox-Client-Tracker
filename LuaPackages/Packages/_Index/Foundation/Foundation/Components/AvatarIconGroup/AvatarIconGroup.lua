local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local AvatarIcon = require(Foundation.Components.AvatarIcon)
local InternalAvatarGroup = require(Foundation.Components.InternalAvatarGroup)
local Types = require(Foundation.Components.Types)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local AvatarIconSize = require(Foundation.Enums.AvatarIconSize)
type AvatarIconSize = AvatarIconSize.AvatarIconSize
local AvatarGroupType = require(Foundation.Enums.AvatarGroupType)
type AvatarGroupType = AvatarGroupType.AvatarGroupType

local useAvatarIconVariants = require(Foundation.Components.AvatarIcon.useAvatarIconVariants)

export type AvatarIconGroupProps = {
	type: AvatarGroupType?,
	max: number?,
	size: AvatarIconSize?,
	backplateStyle: Types.ColorStyle?,
	avatars: { Types.Bindable<number> },
} & Types.CommonProps

local function renderAvatarIcon(
	avatarData: Types.Bindable<number>,
	layoutProps: InternalAvatarGroup.AvatarLayoutProps,
	size: AvatarIconSize
): React.ReactNode
	return React.createElement(AvatarIcon, {
		userId = avatarData,
		key = layoutProps.key,
		backgroundStyle = layoutProps.backgroundStyle,
		backplateStyle = layoutProps.backplateStyle,
		size = size,
		LayoutOrder = layoutProps.LayoutOrder,
		Position = layoutProps.Position,
		ZIndex = layoutProps.ZIndex,
		testId = layoutProps.testId,
	})
end

local defaultProps = {
	type = AvatarGroupType.Spread,
	max = math.huge,
	size = AvatarIconSize.Medium,
	testId = "--foundation-avatar-icon-group",
}

local function AvatarIconGroup(avatarIconGroupProps: AvatarIconGroupProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(avatarIconGroupProps, defaultProps)
	local tokens = useTokens()

	local variantProps = useAvatarIconVariants(tokens, props.size)
	local resolvedSize = variantProps.container.size

	local size = props.size :: AvatarIconSize
	local gap = if props.type == AvatarGroupType.Spread
		then tokens.Size.Size_200
		else if size == AvatarIconSize.Large or size == AvatarIconSize.Medium
			then -tokens.Size.Size_50
			else -tokens.Size.Size_0

	return React.createElement(
		InternalAvatarGroup,
		withCommonProps(props, {
			ref = ref,
			type = props.type,
			max = props.max,
			resolvedSize = resolvedSize,
			gap = gap,
			isEllipsedOverflow = true,
			backplateStyle = props.backplateStyle,
			avatars = props.avatars,
			renderAvatar = function(
				avatarData: InternalAvatarGroup.AvatarData,
				layoutProps: InternalAvatarGroup.AvatarLayoutProps
			)
				return renderAvatarIcon(avatarData :: Types.Bindable<number>, layoutProps, props.size)
			end,
		})
	)
end

return React.memo(React.forwardRef(AvatarIconGroup))
