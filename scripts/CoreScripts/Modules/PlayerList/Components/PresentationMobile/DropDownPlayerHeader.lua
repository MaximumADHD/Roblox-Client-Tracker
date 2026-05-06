--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local Roact = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Foundation = require(CorePackages.Packages.Foundation)
local UserLib = require(CorePackages.Workspace.Packages.UserLib)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)

local useLayoutValues = PlayerListPackage.Common.useLayoutValues

local withStyle = UIBlox.Style.withStyle

local useTokens = Foundation.Hooks.useTokens
local View = Foundation.View
local Image = Foundation.Image
local Text = Foundation.Text

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)
local useVerifiedBadge = UserProfiles.Hooks.useVerifiedBadge

local EmojiTextLabel = UIBlox.Core.Text.EmojiTextLabel
local Emoji = UIBlox.App.Emoji.Enum.Emoji

local FFlagEnableMobilePlayerListOnConsole = PlayerListPackage.Flags.FFlagEnableMobilePlayerListOnConsole
local FFlagEnableVerifiedBadgeStore = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableVerifiedBadgeStore
local FFlagPlayerListDropDownShowPlatformName = PlayerListPackage.Flags.FFlagPlayerListDropDownShowPlatformName

local _, PlatformFriendsService = pcall(function()
	return game:GetService("PlatformFriendsService")
end)

local DropDownPlayerHeader = Roact.PureComponent:extend("DropDownPlayerHeader")

DropDownPlayerHeader.validateProps = t.strictInterface({
	player = t.instanceIsA("Player"),
	transparency = t.any,
	contentVisible = t.boolean,

	layoutValues = t.optional(t.table),
	tokens = t.optional(t.table),
	showVerifiedBadge = t.optional(t.boolean), -- temporarily optional until FFlagEnableVerifiedBadgeStore is enabled
	platformName = t.optional(t.string),
	platformProfileId = t.optional(t.string),
	canShowPlatformProfile = t.optional(t.boolean),
})

function DropDownPlayerHeader:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
			layoutValues = self.props.layoutValues
			local tokens = self.props.tokens
			local xOffset = tokens.Size.Size_3000
			local textHeight = tokens.Size.Size_500

			local player = self.props.player
			local avatarBackgroundImage = "rbxasset://textures/ui/PlayerList/NewAvatarBackground.png"
			local showVerifiedBadge = if FFlagEnableVerifiedBadgeStore then self.props.showVerifiedBadge else UserLib.Utils.isPlayerVerified(player)

			local hasPlatformName = if FFlagPlayerListDropDownShowPlatformName
				then self.props.platformName and self.props.platformName ~= ""
				else nil :: never
			local canShowPlatformProfile = if FFlagPlayerListDropDownShowPlatformName
				then self.props.canShowPlatformProfile
				else nil :: never

			return Roact.createElement("TextButton", { 
				--Used as a text button instead of a frame so that clicking on this doesn't close the player drop down.
				BackgroundTransparency = 1,
				Text = "",
				Size = UDim2.new(1, 0, 0, layoutValues.DropDownHeaderSizeY),
				LayoutOrder = 0,
				Selectable = false,
			}, {
				Background = Roact.createElement("ImageLabel", {
					BackgroundTransparency = 1,
					Image = avatarBackgroundImage,
					ImageTransparency = self.props.transparency,
					Size = UDim2.new(1, 0, 0, layoutValues.DropDownHeaderBackgroundSize),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
				}, {
					TextContainerFrame = Roact.createElement("Frame", {
						Visible = self.props.contentVisible,
						BackgroundTransparency = 1,
						Size = UDim2.new(1, -xOffset, 1, 0),
						Position = UDim2.new(0, tokens.Size.Size_2700, 0, 0),
					}, {
						Layout = Roact.createElement("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder,
							FillDirection = Enum.FillDirection.Vertical,
							Padding = UDim.new(0, 0),
							VerticalAlignment = Enum.VerticalAlignment.Center,
						}),

						DisplayName = showVerifiedBadge and Roact.createElement(EmojiTextLabel, {
							fontStyle = style.Font.Header2,
							colorStyle = style.Theme.TextEmphasis,
							fluidSizing = false,
							emoji = Emoji.Verified,
							maxSize = Vector2.new(layoutValues.PlayerDropDownSizeXMobile - xOffset, textHeight),
							TextSize = if FFlagEnableMobilePlayerListOnConsole then layoutValues.DropDownHeaderDisplayNameTextSize else style.Font.BaseSize * style.Font.Header2.RelativeSize,
							AutomaticSize = if FFlagEnableMobilePlayerListOnConsole then Enum.AutomaticSize.X else nil,
							LayoutOrder = 1,
							Text = player.DisplayName,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextTruncate = Enum.TextTruncate.AtEnd,
							BackgroundTransparency = 1,
							TextScaled = if FFlagEnableMobilePlayerListOnConsole then nil else true,
						}) or Roact.createElement("TextLabel", {
							LayoutOrder = 1,
							Size = UDim2.new(1, 0, 0, textHeight),
							Text = player.DisplayName,
							Font = style.Font.Header2.Font,
							TextSize = if FFlagEnableMobilePlayerListOnConsole then layoutValues.DropDownHeaderDisplayNameTextSize else style.Font.BaseSize * style.Font.Header2.RelativeSize,
							TextColor3 = style.Theme.TextEmphasis.Color,
							TextTransparency = style.Theme.TextEmphasis.Transparency,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextTruncate = Enum.TextTruncate.AtEnd,
							BackgroundTransparency = 1,
							TextScaled = if FFlagEnableMobilePlayerListOnConsole then nil else true,
						}, {
							SizeConstraint = if FFlagEnableMobilePlayerListOnConsole 
								then nil 
								else Roact.createElement("UITextSizeConstraint", {
									MaxTextSize = style.Font.BaseSize * style.Font.Header2.RelativeSize,
									MinTextSize = style.Font.BaseSize * style.Font.Footer.RelativeSize,
								}),
						}),

						PlayerName = Roact.createElement("TextLabel", {
							LayoutOrder = 2,
							Size = UDim2.new(1, 0, 0, textHeight),
							Text = "@" .. player.Name,
							Font = style.Font.CaptionHeader.Font,
							TextSize = if FFlagEnableMobilePlayerListOnConsole then layoutValues.DropDownHeaderPlayerNameTextSize else style.Font.BaseSize * style.Font.CaptionHeader.RelativeSize,
							TextColor3 = style.Theme.TextMuted.Color,
							TextTransparency = style.Theme.TextMuted.Transparency,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextTruncate = Enum.TextTruncate.AtEnd,
							BackgroundTransparency = 1,
							TextScaled = if FFlagEnableMobilePlayerListOnConsole then nil else true,
						}, {
							SizeConstraint = if FFlagEnableMobilePlayerListOnConsole 
								then nil 
								else Roact.createElement("UITextSizeConstraint", {
									MaxTextSize = style.Font.BaseSize * style.Font.CaptionHeader.RelativeSize,
									MinTextSize = style.Font.BaseSize * style.Font.Footer.RelativeSize,
								}),
						}),

						PlatformName = FFlagPlayerListDropDownShowPlatformName and hasPlatformName and Roact.createElement(View, {
							LayoutOrder = 3,
							tag = "row align-y-center gap-xsmall radius-small",
							Size = UDim2.new(1, 0, 0, textHeight),
							onActivated = if canShowPlatformProfile 
								then function()
									local platformProfileId = self.props.platformProfileId
									if PlatformFriendsService and platformProfileId and platformProfileId ~= "" then
										PlatformFriendsService:ShowProfile(platformProfileId)
									end
								end 
								else nil,
						}, {
							PlatformIcon = Roact.createElement(Image, {
								LayoutOrder = 1,
								Image = "rbxasset://textures/ui/Shell/Icons/PlatformLogo@3x.png",
								tag = "size-400",
								imageStyle = {
									Color3 = style.Theme.TextMuted.Color,
									Transparency = if canShowPlatformProfile
										then 0
										else 0.4,
								},
							}),
							PlatformNameButton = Roact.createElement(Text, {
								LayoutOrder = 2,
								tag = "auto-y fill text-align-x-left text-truncate-end",
								Text = self.props.platformName,
								fontStyle = {
									Font = style.Font.CaptionHeader.Font,
									FontSize = layoutValues.DropDownHeaderPlayerNameTextSize,
								},
								textStyle = {
									Color3 = style.Theme.TextMuted.Color,
									Transparency = if canShowPlatformProfile
										then style.Theme.TextMuted.Transparency
										else math.clamp(style.Theme.TextMuted.Transparency + 0.3, 0, 1),
								},
							}),
						}),
					}),
				}),

				AvatarImage = Roact.createElement("ImageLabel", {
					Position = UDim2.new(0, tokens.Size.Size_1400, 0, 0),
					Size = UDim2.new(0, layoutValues.DropDownHeaderSizeY, 0, layoutValues.DropDownHeaderSizeY),
					AnchorPoint = Vector2.new(0.5, 0),
					BackgroundTransparency = 1,
					ImageTransparency = self.props.transparency,
					Image = ("rbxthumb://type=AvatarHeadShot&id=%d&w=150&h=150"):format(player.UserId),
					ZIndex = 2,
				}),

				Divider = not self.props.lastButton and Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
					Visible = self.props.contentVisible,
					BackgroundTransparency = style.Theme.Divider.Transparency,
					BackgroundColor3 = style.Theme.Divider.Color,
					BorderSizePixel = 0,
					ZIndex = 3,
				}),
			})
		end)
	end)
end

local DropDownPlayerHeaderWrapper = function(props)
	local layoutValues = useLayoutValues()
	local tokens = useTokens()
	local showVerifiedBadge = if FFlagEnableVerifiedBadgeStore then useVerifiedBadge(props.player) else nil

	local platformName
	local platformProfileId
	local canShowPlatformProfile 
	if FFlagPlayerListDropDownShowPlatformName then
		local userId = tostring(props.player.UserId)
		local platformNamesFetch = UserProfiles.Hooks.useUserProfilesFetch({
			userIds = { userId },
			query = UserProfiles.Queries.userProfilesDisplayUserPlatformNamesByUserIds,
		})

		if platformNamesFetch.data then
			platformName = UserProfiles.Selectors.getPlatformNameFromId(platformNamesFetch.data, userId)
			platformProfileId = UserProfiles.Selectors.getPlatformProfileIdFromId(platformNamesFetch.data, userId)
		end

		canShowPlatformProfile = game:GetEngineFeature("PlatformFriendsService")
			and game:GetEngineFeature("PlatformFriendsProfile")
			and PlatformFriendsService
			and PlatformFriendsService:IsProfileEnabled()
			and platformProfileId
			and platformProfileId ~= ""
	end

	return Roact.createElement(DropDownPlayerHeader, Cryo.Dictionary.join(props, {
		layoutValues = layoutValues,
		tokens = tokens,
		showVerifiedBadge = if FFlagEnableVerifiedBadgeStore then showVerifiedBadge else nil,
		platformName = if FFlagPlayerListDropDownShowPlatformName then platformName else nil,
		platformProfileId = if FFlagPlayerListDropDownShowPlatformName then platformProfileId else nil,
		canShowPlatformProfile = if FFlagPlayerListDropDownShowPlatformName then canShowPlatformProfile else nil,
	}))
end

return DropDownPlayerHeaderWrapper
