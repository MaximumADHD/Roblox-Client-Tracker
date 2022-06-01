local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local Components = SocialLibraries.Components
local UIBlox = dependencies.UIBlox
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local AlertViewBuilder = require(Components.AlertViewBuilder.AlertViewBuilder)

local InfoAlertView = Roact.Component:extend("InfoAlertView")
InfoAlertView.defaultProps = {
	titleText = "TestTitle",
	bodyText = "TestBody",
	confirmText = "TestConfirm",

	width = UDim.new(0.5, 0),

	onModalClose = function() end,

	soakAreaColor3 = Color3.fromRGB(0, 0, 255),
	soakAreaTransparency = 0.9,
}

function InfoAlertView:render()
	local props = self.props

	return Roact.createElement(AlertViewBuilder, {
		title = props.titleText,
		bodyText = props.bodyText,
		width = props.width,
		onModalClose = props.onModalClose,

		buttons = {
			{
				buttonType = ButtonType.PrimarySystem,
				props = {
					text = props.confirmText,
					onActivated = props.onModalClose,
				},
			},
		},

		soakAreaColor3 = props.soakAreaColor3,
		soakAreaTransparency = props.soakAreaTransparency,
	})
end

return InfoAlertView
