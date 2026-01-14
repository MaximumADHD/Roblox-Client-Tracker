local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Avatar = require(Foundation.Components.Avatar)
local ColorMode = require(Foundation.Enums.ColorMode)
local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
local InputSize = require(Foundation.Enums.InputSize)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
type InputSize = InputSize.InputSize
local UserPresence = require(Foundation.Enums.UserPresence)
type UserPresence = UserPresence.UserPresence
local AvatarGroupType = require(Foundation.Enums.AvatarGroupType)
type AvatarGroupType = AvatarGroupType.AvatarGroupType

local usePresentationContext = require(Foundation.Providers.Style.PresentationContext).usePresentationContext
local useCumulativeBackground = require(Foundation.Utility.useCumulativeBackground)

local getAvatarSize = require(Foundation.Components.Avatar.getAvatarSize)

export type AvatarGroupProps = {
	type: AvatarGroupType?,
	max: number?,
	size: InputSize?,
	backplateStyle: Types.ColorStyle?,
	avatars: { { userId: number, userPresence: ("None" | "InExperience")? } | number },
} & Types.CommonProps

local defaultProps = {
	type = AvatarGroupType.Spread,
	max = math.huge,
	size = InputSize.Medium,
	testId = "--foundation-avatar-group",
}

local function AvatarOverflow(props: {
	count: number,
	Size: UDim2,
	size: InputSize,
	backgroundStyle: Types.ColorStyle,
	backplateStyle: Types.ColorStyle,
} & Types.CommonProps)
	local tokens = useTokens()
	local presentationContext = usePresentationContext()
	local backgroundStyle = useCumulativeBackground(props.backplateStyle, props.backgroundStyle)
	local isEllipsed = presentationContext.isIconSize
		and (props.size == InputSize.XSmall or props.size == InputSize.Small)
	local textTag = if presentationContext.isIconSize or InputSize.XSmall
		then "text-caption-small"
		else "text-caption-medium"
	local contentStyle = tokens[presentationContext.colorMode or ColorMode.Color].Content.Emphasis
	return React.createElement(
		View,
		withCommonProps(props, {
			Size = props.Size,
			backgroundStyle = backgroundStyle,
			tag = "radius-circle row align-x-center align-y-center",
		}),
		if isEllipsed
			then React.createElement(Icon, {
				name = "three-dots-horizontal",
				size = IconSize.XSmall,
				style = contentStyle,
			})
			else React.createElement(
				Text,
				{ Text = `+{props.count}`, tag = `text-align-x-center auto-xy {textTag}`, textStyle = contentStyle }
			)
	)
end

local function AvatarGroup(avatarGroupProps: AvatarGroupProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(avatarGroupProps, defaultProps)
	local presentationContext = usePresentationContext()
	local tokens = useTokens()
	local gap
	if props.type == AvatarGroupType.Spread then
		gap = tokens.Size.Size_200
	else
		if presentationContext.isIconSize then
			gap = if (props.size :: InputSize) == InputSize.Large
					or (props.size :: InputSize) == InputSize.Medium
				then -tokens.Size.Size_50
				else -tokens.Size.Size_0
		else
			gap = if (props.size :: InputSize) == InputSize.XSmall then -tokens.Size.Size_50 else -tokens.Size.Size_100
		end
	end
	local backgroundStyle = tokens[presentationContext.colorMode or ColorMode.Color].Shift.Shift_300
	local size = getAvatarSize(tokens, props.size, presentationContext.isIconSize)
	local backplateStyle = props.backplateStyle or tokens.Color.Surface.Surface_0

	local children: { React.ReactNode } = {}
	local itemWidth = size + gap
	for index, avatarProps in props.avatars do
		local position = UDim2.fromOffset(itemWidth * (index - 1), 0)
		local userPresence: UserPresence?
		local userId = avatarProps :: number
		if typeof(avatarProps) == "table" then
			userPresence = avatarProps.userPresence
			userId = avatarProps.userId
		end
		-- Should be reversed index because the earlier the avatar the higher it should be.
		-- 1 is subtracted so the smallest ZIndex is 1
		local ZIndex = #props.avatars - (index - 1)
		if index > props.max then
			children[index] = React.createElement(AvatarOverflow, {
				key = "overflow",
				count = #props.avatars - props.max,
				size = props.size,
				Size = UDim2.fromOffset(size, size),
				LayoutOrder = index,
				Position = position,
				ZIndex = ZIndex,
				backgroundStyle = backgroundStyle,
				backplateStyle = backplateStyle,
			})
			break
		end
		children[index] = React.createElement(Avatar, {
			key = tostring(userId),
			userId = userId,
			backgroundStyle = backgroundStyle,
			backplateStyle = backplateStyle,
			size = props.size,
			userPresence = userPresence,
			LayoutOrder = index,
			Position = position,
			ZIndex = ZIndex,
			testId = `{props.testId}--avatar-{userId}`,
		})
	end

	return React.createElement(
		View,
		withCommonProps(props, {
			ref = ref,
			tag = "auto-xy",
		}),
		children
	)
end

return React.memo(React.forwardRef(AvatarGroup))
