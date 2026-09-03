local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local IconName = BuilderIcons.Icon

local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local AvatarGroupType = require(Foundation.Enums.AvatarGroupType)
type AvatarGroupType = AvatarGroupType.AvatarGroupType
local UserPresence = require(Foundation.Enums.UserPresence)
type UserPresence = UserPresence.UserPresence

local usePresentationContext = require(Foundation.Providers.Style.PresentationContext).usePresentationContext
local getBindableValue = require(Foundation.Utility.getBindableValue)
local useCumulativeBackground = require(Foundation.Utility.useCumulativeBackground)

type Bindable<T> = Types.Bindable<T>
type AvatarTable = { userId: Bindable<number>, userPresence: UserPresence? }
export type AvatarData = AvatarTable | Bindable<number>
export type AvatarGroupRender = (avatarData: AvatarData, layoutProps: LayoutProps) -> React.ReactNode
export type LayoutProps = {
	LayoutOrder: number,
	Position: UDim2,
	key: string,
	ZIndex: number,
	testId: string,
	backgroundStyle: Types.ColorStyle,
	backplateStyle: Types.ColorStyle,
}

export type InternalAvatarGroupProps = {
	type: AvatarGroupType?,
	max: number?,
	resolvedSize: number,
	gap: number,
	isEllipsedOverflow: boolean?,
	backplateStyle: Types.ColorStyle?,
	avatars: { AvatarData },
	renderAvatar: AvatarGroupRender,
} & Types.CommonProps

local defaultProps = {
	type = AvatarGroupType.Spread,
	isEllipsedOverflow = false,
	max = math.huge,
	testId = "--foundation-avatar-group",
}

local function AvatarOverflow(props: {
	count: number,
	Size: UDim2,
	isEllipsed: boolean,
	backgroundStyle: Types.ColorStyle,
	backplateStyle: Types.ColorStyle,
} & Types.CommonProps)
	local tokens = useTokens()
	local presentationContext = usePresentationContext()
	local backgroundStyle = useCumulativeBackground(props.backplateStyle, props.backgroundStyle)
	local textTag = if props.isEllipsed then "text-caption-small" else "text-caption-medium"
	local contentStyle = tokens[presentationContext.colorNamespace or ColorNamespace.Color].Content.Emphasis
	return React.createElement(
		View,
		withCommonProps(props, {
			Size = props.Size,
			backgroundStyle = backgroundStyle,
			tag = "row align-x-center align-y-center radius-circle",
		}),
		if props.isEllipsed
			then React.createElement(Icon, {
				name = IconName.ThreeDotsHorizontal,
				size = IconSize.XSmall,
				style = contentStyle,
				testId = `{props.testId}--ellipses`,
			})
			else React.createElement(Text, {
				Text = `+{props.count}`,
				tag = `auto-xy text-align-x-center {textTag}`,
				textStyle = contentStyle,
				testId = `{props.testId}--text`,
			})
	)
end

local function InternalAvatarGroup(internalAvatarGroupProps: InternalAvatarGroupProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(internalAvatarGroupProps, defaultProps)
	local tokens = useTokens()
	local presentationContext = usePresentationContext()

	local backgroundStyle = tokens[presentationContext.colorNamespace or ColorNamespace.Color].Shift.Shift_300
	local backplateStyle = props.backplateStyle or tokens.Color.Surface.Surface_0

	local size = props.resolvedSize
	local itemWidth = size + props.gap

	local children: { React.ReactNode } = {}
	for index, avatarData in props.avatars do
		local userId = if ReactIs.isBinding(avatarData) or typeof(avatarData) == "number"
			then avatarData
			elseif typeof(avatarData) == "table" then ((avatarData :: unknown) :: AvatarTable).userId
			else avatarData
		local stableId = tostring(getBindableValue(userId))

		local position = UDim2.fromOffset(itemWidth * (index - 1), 0)
		local ZIndex = #props.avatars - (index - 1)

		if index > props.max then
			children[index] = React.createElement(AvatarOverflow, {
				key = "overflow",
				count = #props.avatars - props.max,
				isEllipsed = props.isEllipsedOverflow,
				Size = UDim2.fromOffset(size, size),
				LayoutOrder = index,
				Position = position,
				ZIndex = ZIndex,
				backgroundStyle = backgroundStyle,
				backplateStyle = backplateStyle,
				testId = `{props.testId}--avatar-overflow`,
			})
			break
		end

		children[index] = props.renderAvatar((avatarData :: unknown) :: AvatarData, {
			key = stableId,
			LayoutOrder = index,
			Position = position,
			ZIndex = ZIndex,
			testId = `{props.testId}--avatar-{stableId}`,
			backgroundStyle = backgroundStyle,
			backplateStyle = backplateStyle,
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

return React.memo(React.forwardRef(InternalAvatarGroup))
