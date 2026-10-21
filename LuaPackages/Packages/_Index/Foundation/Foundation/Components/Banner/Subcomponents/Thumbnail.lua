local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local Avatar = require(Foundation.Components.Avatar)
local Icon = require(Foundation.Components.Icon)
local Image = require(Foundation.Components.Image)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local AvatarSize = require(Foundation.Enums.AvatarSize)
local CardDensity = require(Foundation.Enums.CardDensity)
local IconSize = require(Foundation.Enums.IconSize)
local UserPresence = require(Foundation.Enums.UserPresence)

type IconConfig = Types.IconConfig
type UserPresence = UserPresence.UserPresence

export type BannerDensity = typeof(CardDensity.Compact) | typeof(CardDensity.Default)

export type BannerThumbnail =
	{
		type: "Avatar",
		userId: number,
		userPresence: UserPresence?,
	}
	| {
		type: "Image",
		image: string,
	}
	| {
		type: "Icon",
		icon: IconConfig,
	}
	| {
		type: "Slot",
		children: React.ReactNode,
	}

export type ThumbnailProps = {
	thumbnail: BannerThumbnail,
	density: BannerDensity,
	testId: string,
	LayoutOrder: number,
}

local function Thumbnail(props: ThumbnailProps)
	local tokens = useTokens()
	local size = if props.density == CardDensity.Compact then tokens.Size.Size_1200 else tokens.Size.Size_1600
	local thumbnail = props.thumbnail

	local content = if thumbnail.type == "Avatar"
		then React.createElement(Avatar, {
			userId = thumbnail.userId,
			size = if props.density == CardDensity.Compact then AvatarSize.Large else AvatarSize.XLarge,
			userPresence = thumbnail.userPresence,
			testId = `{props.testId}--thumbnail-avatar`,
		})
		elseif thumbnail.type == "Image" then React.createElement(Image, {
			Image = thumbnail.image,
			ScaleType = Enum.ScaleType.Crop,
			tag = "size-full radius-medium",
			testId = `{props.testId}--thumbnail-image`,
		})
		elseif thumbnail.type == "Icon" then React.createElement(Icon, {
			name = if typeof(thumbnail.icon) == "table" then thumbnail.icon.name else thumbnail.icon,
			variant = if typeof(thumbnail.icon) == "table"
				then thumbnail.icon.variant :: BuilderIcons.IconVariant?
				else nil,
			size = IconSize.Large,
			testId = `{props.testId}--thumbnail-icon`,
		})
		-- The slot is the caller's content, so it is clipped to the accessory box rather than
		-- letting an oversized child push the row wider.
		else React.createElement(View, {
			tag = "align-x-center align-y-center size-full clip",
			testId = `{props.testId}--thumbnail-slot`,
		}, thumbnail.children)

	return React.createElement(View, {
		tag = "align-x-center align-y-center",
		Size = UDim2.fromOffset(size, size),
		LayoutOrder = props.LayoutOrder,
		testId = `{props.testId}--thumbnail`,
	}, {
		Content = content,
	})
end

return Thumbnail
