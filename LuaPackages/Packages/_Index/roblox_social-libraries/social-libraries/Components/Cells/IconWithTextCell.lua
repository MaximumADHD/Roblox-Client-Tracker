local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact
local ImageSetLabel = dependencies.UIBlox.Core.ImageSet.Label

local BaseCell = require(script.Parent.BaseCell)
local IconWithTextCell = Roact.PureComponent:extend("IconWithTextCell")
local TestStyle = require(script:FindFirstAncestor("Components").Style.TestStyle)

IconWithTextCell.defaultProps = {
	Text = "titleText",
	primaryIcon = nil,
	primaryIconSize = 32,
	onPrimaryIconActivated = nil,

	Size = UDim2.new(1, 0, 1, 0),

	onActivated = function() print("IconWithTextCell onActivated") end,

	secondaryIcon = "",
	secondaryIconSize = 24,
	iconCellWidth = 60,

	LayoutOrder = 0,
	style = TestStyle,

	showDivider = true,
}

function IconWithTextCell:render()
	local style = self.props.style
	local theme = style.Theme
	local font = style.Font

	return Roact.createElement(BaseCell, {
		Size = self.props.Size,
		BackgroundColor3 = theme.BackgroundDefault.Color,
		BackgroundTransparency = theme.BackgroundDefault.Transparency,
		onPressedBackgroundColor3 = theme.BackgroundOnPress.Color,
		onPressedBackgroundTransparency = theme.BackgroundOnPress.Transparency,
		LayoutOrder = self.props.LayoutOrder,
		onActivated = self.props.onActivated,
		showDivider = self.props.showDivider,
		dividerColor3 = theme.Divider.Color,
		dividerTransparency = theme.Divider.Transparency,
	}, {
		leftFrame = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.fromScale(0, 0.5),
			Size = UDim2.new(1, -self.props.iconCellWidth, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}, {
			leftListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			imageFrame = Roact.createElement("Frame", {
				Size = UDim2.new(0, self.props.iconCellWidth, 0, self.props.primaryIconSize),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, {
				primaryIcon = Roact.createElement(ImageSetLabel, {
					Position = UDim2.fromScale(0.5, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Image = self.props.primaryIcon,
					BorderSizePixel = 0,
					Size = UDim2.new(0, self.props.primaryIconSize, 0, self.props.primaryIconSize),
					ImageColor3 = theme.IconEmphasis.Color,
					BackgroundTransparency = 1,
				})
			}),
			text = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, -self.props.iconCellWidth, 1, 0),
				Text = self.props.Text,
				TextSize = font.Header2.RelativeSize * font.BaseSize,
				Font = font.Header2.Font,
				TextColor3 = theme.TextEmphasis.Color,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextTruncate = Enum.TextTruncate.AtEnd,
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}),
		}),
		rightFrame = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(1, 0.5),
			Position = UDim2.fromScale(1, 0.5),
			Size = UDim2.fromOffset(self.props.iconCellWidth, self.props.iconCellWidth),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}, {
			secondaryIcon = self.props.secondaryIcon and Roact.createElement("ImageLabel", {
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = self.props.secondaryIcon,
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(self.props.secondaryIconSize, self.props.secondaryIconSize),
			})
		}),
	})
end

return IconWithTextCell
