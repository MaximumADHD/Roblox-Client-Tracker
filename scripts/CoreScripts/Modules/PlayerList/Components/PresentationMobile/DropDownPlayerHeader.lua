local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local RoactRodux = require(CorePackages.RoactRodux)

local withStyle = UIBlox.Style.withStyle

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local PlayerList = Components.Parent
local isDisplayNameEnabled = require(PlayerList.isDisplayNameEnabled)

local TEXT_HEIGHT = 22

local DropDownPlayerHeader = Roact.PureComponent:extend("DropDownPlayerHeader")

DropDownPlayerHeader.validateProps = t.strictInterface({
	player = t.instanceIsA("Player"),
	transparency = t.any,
	contentVisible = t.boolean,
	subjectToChinaPolicies = t.boolean,
})

function DropDownPlayerHeader:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
			local avatarBackgroundImage
			if isDisplayNameEnabled(self.props.subjectToChinaPolicies) then
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
					ImageTransparency = self.props.transparency,
					Size = UDim2.new(1, 0, 0, layoutValues.DropDownHeaderBackgroundSize),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
				}, {
					TextContainerFrame = isDisplayNameEnabled(self.props.subjectToChinaPolicies) and Roact.createElement("Frame", {
						Visible = self.props.contentVisible,
						BackgroundTransparency = 1,
						Size = UDim2.new(1, -(112 + 12), 1, 0),
						Position = UDim2.new(0, 107, 0, 0),
					}, {
						Layout = Roact.createElement("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder,
							FillDirection = Enum.FillDirection.Vertical,
							Padding = UDim.new(0, 0),
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
							Text ="@" .. self.props.player.Name,
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
					}) or nil,

					Text = (not isDisplayNameEnabled(self.props.subjectToChinaPolicies)) and Roact.createElement("TextLabel", {
						Size = UDim2.new(1, -112 - 12, 0, TEXT_HEIGHT),
						Position = UDim2.new(0, 107, 0.5, -TEXT_HEIGHT/2),
						Text = self.props.player.Name,
						Font = style.Font.Header2.Font,
						TextSize = style.Font.BaseSize * style.Font.Header2.RelativeSize,
						TextColor3 = style.Theme.TextEmphasis.Color,
						TextTransparency = style.Theme.TextEmphasis.Transparency,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextTruncate = Enum.TextTruncate.AtEnd,
						BackgroundTransparency = 1,
						Visible = self.props.contentVisible,
						TextScaled = true,
					}, {
						SizeConstraint = Roact.createElement("UITextSizeConstraint", {
							MaxTextSize = style.Font.BaseSize * style.Font.Header2.RelativeSize,
							MinTextSize = style.Font.BaseSize * style.Font.Footer.RelativeSize,
						})
					}) or nil,
				}),

				AvatarImage = Roact.createElement("ImageLabel", {
					Position = UDim2.new(0, 112/2, 0, 0),
					Size = UDim2.new(0, layoutValues.DropDownHeaderSizeY, 0, layoutValues.DropDownHeaderSizeY),
					AnchorPoint = Vector2.new(0.5, 0),
					BackgroundTransparency = 1,
					ImageTransparency = self.props.transparency,
					Image = ("rbxthumb://type=AvatarHeadShot&id=%d&w=150&h=150"):format(self.props.player.UserId),
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

local function mapStateToProps(state)
	return {
		subjectToChinaPolicies = state.displayOptions.subjectToChinaPolicies,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(DropDownPlayerHeader)