local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local CheckIcon = require(script.Parent.CheckIcon)

local AlertViewCheckbox = Roact.Component:extend("AlertViewCheckbox")

AlertViewCheckbox.defaultProps = {
	Text = "",
	LayoutOrder = 0,
	onActivated = function() end,
	checked = false
}

function AlertViewCheckbox:render()
	return UIBlox.Style.withStyle(function(styles)
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = self.props.LayoutOrder,
			Size = UDim2.new(1, 0, 0, 35),
		}, {
			List = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, 10),
			}),
			Checkbox = Roact.createElement(CheckIcon, {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 1,
				checked = self.props.checked,
				onActivated = self.props.onActivated,
			}),
			Label = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 2,
				Size = UDim2.new(0.7, 0, 1, 0),
				Text = self.props.Text,
				TextColor3 = self.props.TextColor3 or styles.Theme.TextDefault.Color,
				TextSize = self.props.TextSize or (styles.Font.Body.RelativeSize * styles.Font.BaseSize),
				Font = self.props.Font or styles.Font.CaptionSubHeader.Font,
				TextXAlignment = Enum.TextXAlignment.Left,
			})
		})
	end)
end

return AlertViewCheckbox
