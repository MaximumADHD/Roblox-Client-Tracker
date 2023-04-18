local GenericRoot = script.Parent
local IAPExperienceRoot = GenericRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local UIBlox = require(Packages.UIBlox)
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Images = UIBlox.App.ImageSet.Images

local ERROR_ICON = "icons/status/error_large"

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)

local LOC_KEY = "Authentication.TwoStepVerification.%s"

local TwoStepReqPrompt = Roact.Component:extend(script.Name)

type Props = {
	anchorPoint: Vector2?,
	position: UDim2?,
	screenSize: Vector2,

	doneControllerIcon: { [string]: any? },
	cancelControllerIcon: { [string]: any? },

	closePrompt: (any) -> any,
	openSecuritySettings: (any) -> any,
}

TwoStepReqPrompt.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5),
	position = UDim2.new(0.5, 0, 0.5, 0),
}

function TwoStepReqPrompt:render()
	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			title = {
				key = LOC_KEY:format("Title.VerificationRequired"),
			},
			message = {
				key = LOC_KEY:format("Label.TwoStepRequired"),
			},
			cancel = {
				key = LOC_KEY:format("Action.Cancel"),
			},
			backToGame = {
				key = "IAPExperience.PurchaseSuccess.Action.BackToGame",
			},
			gotoSecurity = {
				key = LOC_KEY:format("Action.GoToSecurity"),
			},
		},
		render = function(locMap: { [string]: string })
			return self:renderAlert(locMap)
		end,
	})
end

function TwoStepReqPrompt:renderAlert(locMap: { [string]: string })
	local props: Props = self.props

	local buttonStackInfo = nil
	if props.openSecuritySettings then
		buttonStackInfo = {
			buttons = {
				{
					props = {
						onActivated = props.closePrompt,
						text = locMap.cancel,
						inputIcon = props.cancelControllerIcon,
					},
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = props.openSecuritySettings,
						text = locMap.gotoSecurity,
						inputIcon = props.doneControllerIcon,
					},
				},
			},
		}
	else
		buttonStackInfo = {
			buttons = {
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = props.closePrompt,
						text = locMap.backToGame,
						inputIcon = props.doneControllerIcon,
					},
				},
			},
		}
	end

	return Roact.createElement(InteractiveAlert, {
		anchorPoint = props.anchorPoint,
		position = props.position,
		screenSize = props.screenSize,

		title = locMap.title,
		titleIcon = Images[ERROR_ICON],
		bodyText = locMap.message,
		buttonStackInfo = buttonStackInfo,
	})
end

return TwoStepReqPrompt
