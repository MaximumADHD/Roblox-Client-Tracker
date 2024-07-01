--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local UserLib = require(CorePackages.Workspace.Packages.UserLib)

local withStyle = UIBlox.Style.withStyle

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local EmojiTextLabel = UIBlox.Core.Text.EmojiTextLabel
local Emoji = UIBlox.App.Emoji.Enum.Emoji

local TEXT_HEIGHT = 22

local X_OFFSET = 124

local DropDownPlayerHeader = Roact.PureComponent:extend("DropDownPlayerHeader")

DropDownPlayerHeader.validateProps = t.strictInterface({
	player = t.instanceIsA("Player"),
	transparency = t.any,
	contentVisible = t.boolean,
})

function DropDownPlayerHeader:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
			local player = self.props.player
			local avatarBackgroundImage = "rbxasset://textures/ui/PlayerList/NewAvatarBackground.png"
			local showVerifiedBadge = UserLib.Utils.isPlayerVerified(player)

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
						Size = UDim2.new(1, -X_OFFSET, 1, 0),
						Position = UDim2.new(0, 107, 0, 0),
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
							maxSize = Vector2.new(layoutValues.PlayerDropDownSizeXMobile - X_OFFSET, TEXT_HEIGHT),
							LayoutOrder = 1,
							Text = player.DisplayName,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextTruncate = Enum.TextTruncate.AtEnd,
							BackgroundTransparency = 1,
							TextScaled = true,
						}) or Roact.createElement("TextLabel", {
							LayoutOrder = 1,
							Size = UDim2.new(1, 0, 0, TEXT_HEIGHT),
							Text = player.DisplayName,
							Font = style.Font.Header2.Font,
							TextSize = style.Font.BaseSize * style.Font.Header2.RelativeSize,
							TextColor3 = style.Theme.TextEmphasis.Color,
							TextTransparency = style.Theme.TextEmphasis.Transparency,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextTruncate = Enum.TextTruncate.AtEnd,
							BackgroundTransparency = 1,
							TextScaled = true,
						}, {
							SizeConstraint = Roact.createElement("UITextSizeConstraint", {
								MaxTextSize = style.Font.BaseSize * style.Font.Header2.RelativeSize,
								MinTextSize = style.Font.BaseSize * style.Font.Footer.RelativeSize,
							})
						}),

						PlayerName = Roact.createElement("TextLabel", {
							LayoutOrder = 2,
							Size = UDim2.new(1, 0, 0, TEXT_HEIGHT),
							Text ="@" .. player.Name,
							Font = style.Font.CaptionHeader.Font,
							TextSize = style.Font.BaseSize * style.Font.CaptionHeader.RelativeSize,
							TextColor3 = style.Theme.TextMuted.Color,
							TextTransparency = style.Theme.TextMuted.Transparency,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextTruncate = Enum.TextTruncate.AtEnd,
							BackgroundTransparency = 1,
							TextScaled = true,
						}, {
							SizeConstraint = Roact.createElement("UITextSizeConstraint", {
								MaxTextSize = style.Font.BaseSize * style.Font.CaptionHeader.RelativeSize,
								MinTextSize = style.Font.BaseSize * style.Font.Footer.RelativeSize,
							})
						}),
					}),
				}),

				AvatarImage = Roact.createElement("ImageLabel", {
					Position = UDim2.new(0, 112/2, 0, 0),
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

return DropDownPlayerHeader