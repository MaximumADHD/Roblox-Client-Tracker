local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local Images = require(script.Parent.Images)

local SOME_SORT_OF_WHITE_COLOR = Color3.fromRGB(200, 200, 200)
local BACKGROUND_9S_CENTER = Rect.new(7, 8, 7, 8)

local AlertViewTextbox = Roact.PureComponent:extend("AlertViewTextbox")

AlertViewTextbox.defaultProps = {
	LayoutOrder = 0,
	Text = "",
	PlaceholderText = nil,
}

function AlertViewTextbox:render()
	return UIBlox.Style.withStyle(function(style)
		local ImageRectOffset = Vector2.new(0, 0)
		local ImageRectSize = Vector2.new(0, 0)
		local SliceCenter
		local font = style.Font
		local layoutOrder = self.props.LayoutOrder
		local placeholderText = self.props.PlaceholderText
		local theme = style.Theme
		SliceCenter = BACKGROUND_9S_CENTER

		return Roact.createElement("ImageLabel", {
			ImageRectSize = ImageRectSize,
			BackgroundTransparency = 1,
			--BackgroundColor3 = theme.BackgroundMuted.Color, -- Need to make a new image to have this work
			Image = Images["buttonStroke"].Image,
			ImageColor3 = theme.UIDefault.Color,
			ImageRectOffset = ImageRectOffset,
			LayoutOrder = layoutOrder,
			ScaleType = Enum.ScaleType.Slice,
			Size = UDim2.new(1, 0, 0, 30),
			SliceCenter = SliceCenter,
		}, {
			Textbox = Roact.createElement("TextBox", {
				BackgroundTransparency = 1,
				ClearTextOnFocus = false,
				Font = font.Header2.Font,
				FontSize = font.BaseSize * font.CaptionBody.RelativeSize,
				PlaceholderText = placeholderText,
				PlaceholderColor3 = SOME_SORT_OF_WHITE_COLOR,
				Position = UDim2.new(0, 6, 0, 0),
				Size = UDim2.new(1, -12, 1, 0),
				Text = self.props.Text,
				TextColor3 = theme.TextDefault.Color,
				TextSize = 16,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,

				[Roact.Change.Text] = function(rbx)
					if self.props.onTextChanged then
						self.props.onTextChanged(rbx.Text)
					end
				end,

				[Roact.Ref] = self.props[Roact.Ref],
			})
		})
	end)
end

return AlertViewTextbox
