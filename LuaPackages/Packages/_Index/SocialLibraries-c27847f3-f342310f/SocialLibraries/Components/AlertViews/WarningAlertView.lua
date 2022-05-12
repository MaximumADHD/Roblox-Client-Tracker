local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local Components = SocialLibraries.Components
local UIBlox = dependencies.UIBlox
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local AlertViewBuilder = require(Components.AlertViewBuilder.AlertViewBuilder)

local WarningAlertView = Roact.Component:extend("WarningAlertView")
WarningAlertView.defaultProps = {
    titleText = "TestTitle",
    bodyText = "TestBody",
    cancelText = "TestCancel",
	confirmText = "TestConfirm",

	failureTitleText = "failure title!",
	failureBodyText = "Thing failure!",
	failureButtonText = "failure Placeholder!",

	width = UDim.new(0.5, 0),
	displayFailed = false,

	onActivated = function() end,
	onModalClose = function() end,

	soakAreaColor3 = Color3.fromRGB(0, 0, 255),
	soakAreaTransparency = 0.9,
}

local function No_Op()

end

function WarningAlertView:render()
	local props = self.props
	local buttons
	local titleText
	local bodyText

	if props.displayFailed then
		titleText = self.props.failureTitleText
		bodyText = self.props.failureBodyText

		buttons = {
			{
				buttonType = ButtonType.Alert,
				props = {
					text = props.failureButtonText,
					onActivated = No_Op,
				},
			}
		}
	else
		titleText = self.props.titleText
		bodyText = self.props.bodyText

		buttons = {
			{
				buttonType = ButtonType.Secondary,
				props = {
					text = props.cancelText,
					onActivated = No_Op,
				}
			},
			{
				buttonType = ButtonType.PrimarySystem,
				props = {
					text = props.confirmText,
					onActivated = props.onActivated,
				},
			},
		}
	end

	return Roact.createElement(AlertViewBuilder, {
		title = titleText,
		bodyText = bodyText,
		width = self.props.width,
		onModalClose = self.props.onModalClose,

		buttons = buttons,

		soakAreaColor3 = props.soakAreaColor3,
		soakAreaTransparency = props.soakAreaTransparency,
	})
end

return WarningAlertView
