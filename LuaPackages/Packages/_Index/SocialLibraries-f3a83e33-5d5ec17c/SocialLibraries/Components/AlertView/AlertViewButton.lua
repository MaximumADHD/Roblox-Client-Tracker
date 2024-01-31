local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local Button = UIBlox.App.Button.Button
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local AlertViewButton = Roact.PureComponent:extend("AlertViewButton")

AlertViewButton.defaultProps = {
	LayoutOrder = 0,
	secondary = false,
	onActivated = function() end,
	Size = UDim2.new(1, 0, 1, 0),
	Text = "",
}

function AlertViewButton:render()
	local buttonType = ButtonType.PrimarySystem
	if self.props.secondary then
		buttonType = ButtonType.Secondary
	end

	return Roact.createElement(Button, {
		buttonType = buttonType,
		size = self.props.Size,
		layoutOrder = self.props.LayoutOrder,
		text = self.props.Text,
		onActivated = self.props.onActivated,
	})
end

return AlertViewButton
