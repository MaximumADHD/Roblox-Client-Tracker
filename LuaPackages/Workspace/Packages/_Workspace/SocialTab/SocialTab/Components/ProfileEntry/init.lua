local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local llama = dependencies.llama
local t = dependencies.t
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local VerifiedBadges = dependencies.VerifiedBadges

local Images = UIBlox.App.ImageSet.Images
local IconButton = UIBlox.App.Button.IconButton

local StyledTextLabel = require(SocialTab.Components.StyledTextLabel)
local StyledImageSetLabel = require(SocialTab.Components.StyledImageSetLabel)
local EnumScreens = require(SocialTab.EnumScreens)

local getFFlagFixClickAreaOnSocialTab = require(SocialTab.Flags.getFFlagFixClickAreaOnSocialTab)

local validateProps = t.interface({
	userText = t.string,
	avatarImage = t.optional(t.string),
	onActivated = t.optional(t.callback),
	isPremium = t.optional(t.boolean),
	navigateToLuaAppPages = t.optional(t.table),
	hasVerifiedBadge = t.optional(t.boolean),
	isProfileShareEnabled = t.optional(t.boolean),
	onActivatedProfileShare = t.optional(t.callback),
})

local defaultProps = {
	userText = "",
	avatarImage = "",
	onActivated = function() end,
	isPremium = false,
	hasVerifiedBadge = false,
	isProfileShareEnabled = false,
	onActivatedProfileShare = function() end,
}

local CONTAINER_HEIGHT = 36
local ELEMENTS_PADDING = 4
local AVATAR_IMAGE_SIZE = 36
local SHARE_ICON = "icons/actions/share"
local SHARE_ICON_SIZE = 36

return function(props)
	props = llama.Dictionary.join(defaultProps, props)
	assert(validateProps(props))

	-- EN-1138: Migrate this block of code inside EmojiWrapper and use
	-- `isPremium` and `hasVerifiedBadge` as props so EmojiWrapper can figure
	-- out which emoji to use internally
	local emoji: string
	if props.hasVerifiedBadge then
		emoji = VerifiedBadges.emoji.verified
	elseif props.isPremium then
		emoji = VerifiedBadges.emoji.premium
	else
		emoji = ""
	end

	return UIBlox.Style.withStyle(function(style)
		local theme = style.Theme
		local font = style.Font
		return Roact.createElement("ImageButton", {
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.X,
			Size = UDim2.new(0, 0, 0, CONTAINER_HEIGHT),
			[Roact.Event.Activated] = props.onActivated,
			LayoutOrder = props.layoutOrder,
		}, {
			layout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, ELEMENTS_PADDING),
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			avatarImage = Roact.createElement(StyledImageSetLabel, {
				Image = props.avatarImage,
				BackgroundStyle = style.Theme.PlaceHolder,
				Size = UDim2.fromOffset(AVATAR_IMAGE_SIZE, AVATAR_IMAGE_SIZE),
				LayoutOrder = 1,
			}, {
				corner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}),
			}),
			spacer = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(ELEMENTS_PADDING, 0),
				LayoutOrder = 2,
			}),

			userTextWrapper = Roact.createElement(VerifiedBadges.EmojiWrapper, {
				size = if getFFlagFixClickAreaOnSocialTab() then UDim2.fromScale(0, 0) else nil,
				emoji = if props.hasVerifiedBadge
					then VerifiedBadges.emoji.verified
					else if props.isPremium then VerifiedBadges.emoji.premium else "",
				color = if props.isPremium then theme.TextEmphasis.Color else nil,
				layoutOrder = 4,
				onActivated = if emoji == VerifiedBadges.emoji.verified
					then function()
						props.navigateToLuaAppPages[EnumScreens.VerifiedBadgeModal]()
					end
					else nil,
			}, {
				userText = Roact.createElement(StyledTextLabel, {
					TextStyle = theme.TextEmphasis,
					FontStyle = font.Header1,
					TextXAlignment = Enum.TextXAlignment.Left,
					Text = props.userText,
					AutomaticSize = Enum.AutomaticSize.XY,
				}),
			}),

			shareButtonSpacer = props.isProfileShareEnabled and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(0, 0),
				LayoutOrder = 5,
			}),
			shareButton = props.isProfileShareEnabled and Roact.createElement(IconButton, {
				icon = Images[SHARE_ICON],
				size = UDim2.fromOffset(SHARE_ICON_SIZE, SHARE_ICON_SIZE),
				layoutOrder = 6,
				onActivated = props.onActivatedProfileShare,
			}),
		})
	end)
end
