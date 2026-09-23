local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Avatar = require(Foundation.Components.Avatar)
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
local InternalAvatarGroup = require(Foundation.Components.InternalAvatarGroup)
local Types = require(Foundation.Components.Types)
local UserPresence = require(Foundation.Enums.UserPresence)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
type UserPresence = UserPresence.UserPresence
local AvatarGroupType = require(Foundation.Enums.AvatarGroupType)
type AvatarGroupType = AvatarGroupType.AvatarGroupType

local usePresentationContext = require(Foundation.Providers.Style.PresentationContext).usePresentationContext

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
	local resolvedSize = getAvatarSize(tokens, size, presentationContext.isIconSize)
	local backplateStyle = props.backplateStyle or tokens.Color.Surface.Surface_0
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

return React.memo(React.forwardRef(AvatarGroup))
