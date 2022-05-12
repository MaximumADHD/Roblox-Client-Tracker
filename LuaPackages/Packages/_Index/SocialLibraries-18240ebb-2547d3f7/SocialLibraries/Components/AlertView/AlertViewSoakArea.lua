local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact

local AlertViewSoakArea = Roact.PureComponent:extend("AlertViewSoakArea")
AlertViewSoakArea.defaultProps = {
	Visible = true,
	BackgroundTransparency = 0.75,
	BackgroundColor3 = Color3.fromRGB(255, 0, 255),
}

function AlertViewSoakArea:render()
	return Roact.createElement("ImageButton", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = self.props.BackgroundTransparency,
		BackgroundColor3 = self.props.BackgroundColor3,
		Active = true,
		AutoButtonColor = false,
		Visible = self.props.Visible,
	}, self.props[Roact.Children])
end

return AlertViewSoakArea
