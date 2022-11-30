--!nonstrict
-- Based on: src/internal/LuaApp/Modules/LuaApp/Components/Home/AddFriendsTile.lua

local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withStyle = UIBlox.Style.withStyle
local t = dependencies.t
local Mock = dependencies.Mock
local Images = UIBlox.App.ImageSet.Images
local StyledImageSetLabel = require(SocialTab.Components.StyledImageSetLabel)
local StyledTextLabel = require(SocialTab.Components.StyledTextLabel)
local calculateTextSize = require(SocialTab.utils.calculateTextSize)
local withLocalization = dependencies.withLocalization
local LocalizedKeys = require(SocialTab.Enums.LocalizedKeys)

local AddFriendsTile = Roact.PureComponent:extend("AddFriendsTile")
local THUMBNAIL_PADDING = 8

AddFriendsTile.defaultProps = {
	accountProviderName = "",
	layoutOrder = 0,
	onActivated = function() end,
	shouldInviteFromAccountProvider = false,
	thumbnailSize = 96,
	totalHeight = 96,
}

AddFriendsTile.validateProps = t.interface({
	accountProviderName = t.optional(t.string),
	layoutOrder = t.optional(t.number),
	onActivated = t.optional(t.union(t.callback, Mock.MagicMock.is)),
	shouldInviteFromAccountProvider = t.optional(t.boolean),
	thumbnailSize = t.number,
	totalHeight = t.number,
})

function AddFriendsTile:init()
	self.calculateTextSize = calculateTextSize()
end

function AddFriendsTile:render()
	local addFriendsKey = LocalizedKeys.AddFriend.rawValue()

	if self.props.shouldInviteFromAccountProvider and self.props.accountProviderName ~= "" then
		addFriendsKey = {
			LocalizedKeys.InviteFriend.rawValue(),
			provider = self.props.accountProviderName,
		}
	end

	return withLocalization({
		addFriendText = addFriendsKey,
	})(function(localizedStrings)
		return withStyle(function(style)
			return Roact.createElement("Frame", {
				Size = UDim2.new(0, self.props.thumbnailSize, 0, self.props.totalHeight),
				BackgroundTransparency = 1,
				LayoutOrder = self.props.layoutOrder,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, THUMBNAIL_PADDING),
				}),
				AddFriendButton = Roact.createElement("TextButton", {
					Size = UDim2.new(0, self.props.thumbnailSize, 0, self.props.thumbnailSize),
					BackgroundColor3 = style.Theme.UIEmphasis.Color,
					Text = "",
					BackgroundTransparency = style.Theme.UIEmphasis.Transparency,
					[Roact.Event.Activated] = self.props.onActivated,
				}, {
					AddFriendButtonBorder = Roact.createElement(StyledImageSetLabel, {
						Image = Images["component_assets/circle_68_stroke_2"],
						ImageStyle = style.Theme.SecondaryDefault,
						Size = UDim2.new(0, self.props.thumbnailSize, 0, self.props.thumbnailSize),
					}, {
						AddIcon = Roact.createElement(StyledImageSetLabel, {
							AnchorPoint = Vector2.new(0.5, 0.5),
							Image = Images["icons/actions/friends/friendAdd"],
							ImageStyle = style.Theme.IconEmphasis,
							Position = UDim2.new(0.5, 0, 0.5, 0),
							Size = UDim2.new(0.45, 0, 0.45, 0),
						}),
					}),
					UICorner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(1, 0),
					}),
				}),
				AddFriendsLabel = Roact.createElement(StyledTextLabel, {
					BackgroundTransparency = 1,
					FontStyle = style.Font.CaptionHeader,
					LayoutOrder = 2,
					Size = UDim2.new(
						0,
						self.props.thumbnailSize,
						0,
						self.calculateTextSize(
							localizedStrings.addFriendText .. "...",
							style.Font.CaptionHeader,
							style.Font.BaseSize
						).Y
					),
					TextStyle = style.Theme.TextEmphasis,
					Text = localizedStrings.addFriendText,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Center,
				}),
			})
		end)
	end)
end

return AddFriendsTile
