local GenericRoot = script.Parent
local IAPExperienceRoot = GenericRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)

local PurchaseErrorType = require(GenericRoot.PurchaseErrorType)

local LOC_KEY = "IAPExperience.PurchaseError.%s"

local ErrorPrompt = Roact.Component:extend(script.Name)

type Props = {
	anchorPoint: Vector2?,
	position: UDim2?,
	screenSize: Vector2,

	errorType: any?,

	doneControllerIcon: {[string]: any?},

	doneActivated: () -> any?,
}

ErrorPrompt.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5),
	position = UDim2.new(0.5, 0, 0.5, 0),
}

function ErrorPrompt:getErrorMessage(locMap: {[string]: string}, errorType: any?)
	-- pointless code since it returns the same regardless, but sets up structure for future error messages.
	if errorType == PurchaseErrorType.Unknown then
		return locMap.unknownText
	end
	return locMap.unknownText
end

function ErrorPrompt:render()
	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			titleText = {
				key = LOC_KEY:format("Title.Error")
			},
			unknownText = {
				key = LOC_KEY:format("Text.UnknownError")
			},
			okText = {
				key = LOC_KEY:format("Text.Ok")
			},
		},
		render = function(locMap: {[string]: string})
			return self:renderAlert(locMap)
		end
	})
end

function ErrorPrompt:renderAlert(locMap: {[string]: string})
	local props: Props = self.props

	return Roact.createElement(InteractiveAlert, {
		anchorPoint = props.anchorPoint,
		position = props.position,
		screenSize = props.screenSize,
		title = locMap.titleText,
		bodyText = self:getErrorMessage(locMap, props.errorType),
		buttonStackInfo = {
			buttons = {
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = props.doneActivated,
						text = locMap.okText,
						inputIcon = props.doneControllerIcon,
					},
				},
			},
		},
	})
end

return ErrorPrompt
