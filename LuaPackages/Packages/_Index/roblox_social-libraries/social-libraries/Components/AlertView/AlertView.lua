local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local FitFrameVertical = require(script.Parent.Parent.FitFrameVertical)

local AlertView = Roact.Component:extend("AlertView")

AlertView.defaultProps = {
	Visible = false,
	width = UDim.new(0.5, 0),
	contentPaddingLeft = 12,
	contentPaddingRight = 12,
	contentPaddingTop = 12,
	contentPaddingBottom = 12,
}

function AlertView:render()
	return UIBlox.Style.withStyle(function(styles)
		return Roact.createElement(FitFrameVertical, {
			Visible = self.props.Visible,
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = styles.Theme.BackgroundUIDefault.Color,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			width = self.props.width,
		}, {
			InnerFrame = Roact.createElement(FitFrameVertical, {
				margin = {
					top = self.props.contentPaddingTop,
					bottom = self.props.contentPaddingBottom,
					left = self.props.contentPaddingLeft,
					right = self.props.contentPaddingRight,
				},
				width = UDim.new(1, 0),
				BackgroundTransparency = 1,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			}, self.props[Roact.Children])
		})
	end)
end

return AlertView
