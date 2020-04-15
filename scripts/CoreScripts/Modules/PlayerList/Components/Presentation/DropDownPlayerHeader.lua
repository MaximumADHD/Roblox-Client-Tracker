local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Style.withStyle

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local PlayerList = Components.Parent
local isDisplayNameEnabled = require(PlayerList.isDisplayNameEnabled)

local TEXT_PADDING = 5
local TEXT_HEIGHT = 22

local DropDownPlayerHeader = Roact.PureComponent:extend("DropDownPlayerHeader")

DropDownPlayerHeader.validateProps = t.strictInterface({
	player = t.instanceIsA("Player"),
})

function DropDownPlayerHeader:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
			local avatarBackgroundImage
			if isDisplayNameEnabled() then
				avatarBackgroundImage = "rbxasset://textures/ui/PlayerList/NewAvatarBackground.png"
			else
				avatarBackgroundImage = "rbxasset://textures/ui/PlayerList/AvatarBackground.png"
			end

			return Roact.createElement("TextButton", {
				--Used as a text button instead of a frame so that clicking on this doesn't close the player drop down.
				BackgroundTransparency = 1,
				Text = "",
				Size = UDim2.new(1, 0, 0, layoutValues.DropDownHeaderSizeY),
				LayoutOrder = 0,
			}, {
				Background = Roact.createElement("ImageLabel", {
					BackgroundTransparency = 1,
					Image = avatarBackgroundImage,
					ImageTransparency = layoutValues.DropDownHeaderBackgroundTransparency,
					Size = UDim2.new(1, 0, 0, layoutValues.DropDownHeaderBackgroundSize),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
				}, {
					TextContainerFrame = isDisplayNameEnabled() and Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, -(112 + 45), 1, 0),
						Position = UDim2.new(0, 112, 0, 0),
					}, {
						Layout = Roact.createElement("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder,
							FillDirection = Enum.FillDirection.Vertical,
							Padding = UDim.new(0, TEXT_PADDING),
							VerticalAlignment = Enum.VerticalAlignment.Center,
						}),

						DisplayName = Roact.createElement("TextLabel", {
							LayoutOrder = 1,
							Size = UDim2.new(1, 0, 0, TEXT_HEIGHT),
							Text = self.props.player.DisplayName,
							Font = style.Font.Header2.Font,
							TextSize = style.Font.BaseSize * style.Font.Header2.RelativeSize,
							TextColor3 = style.Theme.TextEmphasis.Color,
							TextTransparency = style.Theme.TextEmphasis.Transparency,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextTruncate = Enum.TextTruncate.AtEnd,
							BackgroundTransparency = 1,
						}),

						PlayerName = Roact.createElement("TextLabel", {
							LayoutOrder = 2,
							Size = UDim2.new(1, 0, 0, TEXT_HEIGHT),
							Text ="@" .. self.props.player.Name,
							Font = style.Font.SubHeader1.Font,
							TextSize = style.Font.BaseSize * style.Font.SubHeader1.RelativeSize,
							TextColor3 = style.Theme.TextMuted.Color,
							TextTransparency = style.Theme.TextMuted.Transparency,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextTruncate = Enum.TextTruncate.AtEnd,
							BackgroundTransparency = 1,
						}),
					}) or nil,

					Text = (not isDisplayNameEnabled()) and Roact.createElement("TextLabel", {
						Position = UDim2.new(0, 112, 0, 0),
						Size = UDim2.new(1, -(112 + 45), 1, 0),
						Text = self.props.player.Name,
						Font = style.Font.Header2.Font,
						TextSize = style.Font.BaseSize * style.Font.Header2.RelativeSize,
						TextColor3 = style.Theme.TextEmphasis.Color,
						TextTransparency = style.Theme.TextEmphasis.Transparency,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextTruncate = Enum.TextTruncate.AtEnd,
						BackgroundTransparency = 1,
					}) or nil,
				}),

				AvatarImage = Roact.createElement("ImageLabel", {
					Position = UDim2.new(0, 112/2, 0, 0),
					Size = UDim2.new(0, layoutValues.DropDownHeaderSizeY, 0, layoutValues.DropDownHeaderSizeY),
					AnchorPoint = Vector2.new(0.5, 0),
					BackgroundTransparency = 1,
					Image = "rbxthumb://type=AvatarHeadShot&id=" ..self.props.player.UserId.. "&w=150&h=150",
					ZIndex = 2,
				}),

				Divider = not self.props.lastButton and Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
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