local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local Avatar = require(Foundation.Components.Avatar)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local useTokens = require(Foundation.Providers.Style.useTokens)
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
local UserPresence = require(Foundation.Enums.UserPresence)
type UserPresence = UserPresence.UserPresence
local AvatarGroupType = require(Foundation.Enums.AvatarGroupType)
type AvatarGroupType = AvatarGroupType.AvatarGroupType

local getAvatarSize = require(Foundation.Components.Avatar.getAvatarSize)

type AvatarGroupProps = {
	avatars: { { userId: number, userPresence: ("None" | "InExperience")? } | number },
	type: AvatarGroupType?,
	max: number?,
	size: InputSize?,
	backplateStyle: Types.ColorStyle?,
} & Types.CommonProps

local defaultProps = {
	type = AvatarGroupType.Spread,
	max = math.huge,
	size = InputSize.Medium,
}

local avatarOverflowTextSize: { [InputSize]: string } = {
	[InputSize.Large] = "text-label-small",
	[InputSize.Medium] = "text-label-small",
	[InputSize.Small] = "text-label-small",
	[InputSize.XSmall] = "text-caption-small",
}

local function AvatarOverflow(props: { count: number, size: InputSize, Size: UDim2 } & Types.CommonProps)
	return React.createElement(
		View,
		withCommonProps(props, {
			Size = props.Size,
			tag = "bg-surface-200 radius-circle row align-x-center align-y-center",
		}),
		React.createElement(
			Text,
			{ Text = `+{props.count}`, tag = `text-align-x-center auto-xy {avatarOverflowTextSize[props.size]}` }
		)
	)
end

local function AvatarGroup(avatarGroupProps: AvatarGroupProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(avatarGroupProps, defaultProps)
	local tokens = useTokens()
	local gap = if props.type == AvatarGroupType.Spread then tokens.Size.Size_200 else -tokens.Size.Size_100
	local size = getAvatarSize(tokens, props.size)
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
				ZIndex = ZIndex,
				Position = position,
				count = #props.avatars - props.max,
				Size = UDim2.fromOffset(size, size),
				size = props.size,
				LayoutOrder = index,
			})
			break
		end
		children[index] = React.createElement(Avatar, {
			key = tostring(userId),
			userId = userId,
			backgroundStyle = tokens.Color.Shift.Shift_200,
			backplateStyle = backplateStyle,
			size = props.size,
			userPresence = userPresence,
			LayoutOrder = index,
			Position = position,
			ZIndex = ZIndex,
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
