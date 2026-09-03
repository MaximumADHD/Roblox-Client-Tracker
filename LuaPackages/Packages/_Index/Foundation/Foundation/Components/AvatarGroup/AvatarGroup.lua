local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local IconName = BuilderIcons.Icon

local Avatar = require(Foundation.Components.Avatar)
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local Flags = require(Foundation.Utility.Flags)
local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
local InternalAvatarGroup = require(Foundation.Components.InternalAvatarGroup)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local UserPresence = require(Foundation.Enums.UserPresence)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
type UserPresence = UserPresence.UserPresence
local AvatarGroupType = require(Foundation.Enums.AvatarGroupType)
type AvatarGroupType = AvatarGroupType.AvatarGroupType

local usePresentationContext = require(Foundation.Providers.Style.PresentationContext).usePresentationContext
local getBindableValue = require(Foundation.Utility.getBindableValue)
local useCumulativeBackground = require(Foundation.Utility.useCumulativeBackground)

local getAvatarSize = require(Foundation.Components.Avatar.getAvatarSize)

type Bindable<T> = Types.Bindable<T>
export type AvatarGroupItem = {
	userId: Bindable<number>,
	userPresence: UserPresence?,
}

export type AvatarGroupProps = {
	type: AvatarGroupType?,
	max: number?,
	size: InputSize?,
	backplateStyle: Types.ColorStyle?,
	avatars: { AvatarGroupItem | number },
} & Types.CommonProps

local defaultProps = {
	type = AvatarGroupType.Spread,
	max = math.huge,
	size = InputSize.Medium,
	testId = "--foundation-avatar-group",
}

-- remove with FoundationAvatarBeta
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
	local contentStyle = tokens[presentationContext.colorNamespace or ColorNamespace.Color].Content.Emphasis
	return React.createElement(
		View,
		withCommonProps(props, {
			Size = props.Size,
			backgroundStyle = backgroundStyle,
			tag = "row align-x-center align-y-center radius-circle",
		}),
		if isEllipsed
			then React.createElement(Icon, {
				name = IconName.ThreeDotsHorizontal,
				size = IconSize.XSmall,
				style = contentStyle,
			})
			else React.createElement(
				Text,
				{ Text = `+{props.count}`, tag = `auto-xy text-align-x-center {textTag}`, textStyle = contentStyle }
			)
	)
end

local function AvatarGroup(avatarGroupProps: AvatarGroupProps, ref: React.Ref<GuiObject>?): React.ReactNode
	local props = withDefaults(avatarGroupProps, defaultProps)
	local presentationContext = usePresentationContext()
	local tokens = useTokens()
	local size: InputSize = props.size
	local gap
	if props.type == AvatarGroupType.Spread then
		gap = tokens.Size.Size_200
	else
		if presentationContext.isIconSize then
			gap = if size == InputSize.Large or size == InputSize.Medium
				then -tokens.Size.Size_50
				else -tokens.Size.Size_0
		else
			gap = if size == InputSize.XSmall then -tokens.Size.Size_50 else -tokens.Size.Size_100
		end
	end
	local backgroundStyle = tokens[presentationContext.colorNamespace or ColorNamespace.Color].Shift.Shift_300
	local resolvedSize = getAvatarSize(tokens, size, presentationContext.isIconSize)
	local backplateStyle = props.backplateStyle or tokens.Color.Surface.Surface_0

	if Flags.FoundationAvatarBeta then
		local renderAvatarGroupItem = React.useCallback(
			function(
				avatarData: InternalAvatarGroup.AvatarData,
				layoutProps: InternalAvatarGroup.AvatarLayoutProps
			): React.ReactNode
				local userPresence: UserPresence? = nil
				local userId: Bindable<number>
				if typeof(avatarData) == "table" then
					userPresence = (avatarData :: AvatarGroupItem).userPresence
					userId = (avatarData :: AvatarGroupItem).userId
				else
					userId = avatarData
				end

				return React.createElement(Avatar, {
					userId = userId,
					key = layoutProps.key,
					backgroundStyle = layoutProps.backgroundStyle,
					backplateStyle = layoutProps.backplateStyle,
					size = props.size,
					userPresence = userPresence,
					LayoutOrder = layoutProps.LayoutOrder,
					Position = layoutProps.Position,
					ZIndex = layoutProps.ZIndex,
					testId = layoutProps.testId,
				})
			end,
			{ props.size }
		)

		return (
			React.createElement(
				InternalAvatarGroup,
				withCommonProps(props, {
					ref = ref,
					type = props.type,
					max = props.max,
					resolvedSize = resolvedSize,
					isEllipsedOverflow = size == InputSize.XSmall
						or (presentationContext.isIconSize and size == InputSize.Small),
					gap = gap,
					backplateStyle = backplateStyle,
					avatars = props.avatars,
					renderAvatar = renderAvatarGroupItem,
				})
			)
		)
	end

	local children: { React.ReactNode } = {}
	local itemWidth = resolvedSize + gap
	for index, avatarProps in props.avatars do
		local position = UDim2.fromOffset(itemWidth * (index - 1), 0)
		local userPresence: UserPresence?
		local userId: Bindable<number>

		if Flags.FoundationAvatarBindableUserId then
			if typeof(avatarProps) == "table" then
				userPresence = avatarProps.userPresence
				userId = (avatarProps.userId :: unknown) :: Bindable<number>
			else
				userId = avatarProps
			end
		else
			userId = avatarProps :: number

			if typeof(avatarProps) == "table" then
				userPresence = avatarProps.userPresence
				userId = avatarProps.userId :: number
			end
		end

		local stableId = if Flags.FoundationAvatarBindableUserId
			then tostring(getBindableValue(userId))
			else nil :: never

		-- Should be reversed index because the earlier the avatar the higher it should be.
		-- 1 is subtracted so the smallest ZIndex is 1
		local ZIndex = #props.avatars - (index - 1)
		if index > props.max then
			children[index] = React.createElement(AvatarOverflow, {
				key = "overflow",
				count = #props.avatars - props.max,
				size = props.size,
				Size = UDim2.fromOffset(resolvedSize, resolvedSize),
				LayoutOrder = index,
				Position = position,
				ZIndex = ZIndex,
				backgroundStyle = backgroundStyle,
				backplateStyle = backplateStyle,
			})
			break
		end
		children[index] = React.createElement(Avatar, {
			key = if Flags.FoundationAvatarBindableUserId then stableId else tostring(userId),
			userId = userId,
			backgroundStyle = backgroundStyle,
			backplateStyle = backplateStyle,
			size = props.size,
			userPresence = userPresence,
			LayoutOrder = index,
			Position = position,
			ZIndex = ZIndex,
			testId = if Flags.FoundationAvatarBindableUserId
				then `{props.testId}--avatar-{stableId}`
				else `{props.testId}--avatar-{userId}`,
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
