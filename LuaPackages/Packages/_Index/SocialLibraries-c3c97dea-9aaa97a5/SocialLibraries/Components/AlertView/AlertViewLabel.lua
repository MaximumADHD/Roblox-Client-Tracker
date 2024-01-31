local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox

local AlertViewLabel = Roact.PureComponent:extend("AlertViewLabel")
AlertViewLabel.defaultProps = {
	BackgroundTransparency = 1,
	Size = UDim2.new(1, 0, 0, 40),
	Text = "",
	TextXAlignment = Enum.TextXAlignment.Center,
}

function AlertViewLabel:render()
	return UIBlox.Style.withStyle(function(styles)
		local backgroundTransparency = self.props.BackgroundTransparency
		local font = self.props.Font or styles.Font.Body.Font
		local text = self.props.Text
		local textColor3 = self.props.TextColor3 or styles.Theme.TextDefault.Color
		local textSize = self.props.TextSize or styles.Font.Body.RelativeSize * styles.Font.BaseSize
		local textXAlignment = self.props.TextXAlignment

		return Roact.createElement("TextLabel", {
			BackgroundTransparency = backgroundTransparency,
			Font = font,
			LayoutOrder = self.props.LayoutOrder,
			Size = self.props.Size,
			Text = text,
			TextColor3 = textColor3,
			TextSize = textSize,
			TextWrapped = true,
			TextXAlignment = textXAlignment,
		})
	end)
end

return AlertViewLabel
