local GenericRoot = script.Parent
local IAPExperienceRoot = GenericRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local UIBlox = require(Packages.UIBlox)
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)

local U13ConfirmType = require(GenericRoot.U13ConfirmType)

local LOC_KEY = "IAPExperience.U13Confirm.%s"

local U13ConfirmPrompt = Roact.Component:extend(script.Name)

type Props = {
	anchorPoint: Vector2?,
	position: UDim2?,
	screenSize: Vector2,

	modalType: any?,

	doneControllerIcon: { [string]: any? },
	cancelControllerIcon: { [string]: any? },

	doneActivated: () -> any?,
	cancelActivated: () -> any?,
}

U13ConfirmPrompt.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5),
	position = UDim2.new(0.5, 0, 0.5, 0),
}

function U13ConfirmPrompt:getMessage(locMap: { [string]: string }, modalType: any?)
	if modalType == U13ConfirmType.U13PaymentModal then
		return locMap.u13PaymentModal
	elseif modalType == U13ConfirmType.U13MonthlyThreshold1Modal then
		return locMap.u13MonthlyThreshold1Modal
	elseif modalType == U13ConfirmType.U13MonthlyThreshold2Modal then
		return locMap.u13MonthlyThreshold2Modal
	elseif modalType == U13ConfirmType.ParentalConsentWarningPaymentModal13To17 then
		return locMap.parentalConsentWarningPaymentModal13To17
	end
end

function U13ConfirmPrompt:render()
	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			title = {
				key = LOC_KEY:format("Title.Warning"),
			},
			u13PaymentModal = {
				key = LOC_KEY:format("Text.U13PaymentModal"),
			},
			u13MonthlyThreshold1Modal = {
				key = LOC_KEY:format("Text.U13MonthlyThreshold1Modal"),
			},
			u13MonthlyThreshold2Modal = {
				key = LOC_KEY:format("Text.U13MonthlyThreshold2Modal"),
			},
			parentalConsentWarningPaymentModal13To17 = {
				key = LOC_KEY:format("Text.ParentalConsentWarningPaymentModal13To17"),
			},
			confirm = {
				key = LOC_KEY:format("Action.Confirm"),
			},
			cancel = {
				key = LOC_KEY:format("Action.Cancel"),
			},
		},
		render = function(locMap: { [string]: string })
			return self:renderAlert(locMap)
		end,
	})
end

function U13ConfirmPrompt:renderAlert(locMap: { [string]: string })
	local props: Props = self.props

	return Roact.createElement(InteractiveAlert, {
		anchorPoint = props.anchorPoint,
		position = props.position,
		screenSize = props.screenSize,
		title = locMap.title,
		bodyText = self:getMessage(locMap, props.modalType),
		buttonStackInfo = {
			buttons = {
				{
					props = {
						onActivated = props.cancelActivated,
						text = locMap.cancel,
						inputIcon = props.cancelControllerIcon,
					},
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = props.doneActivated,
						text = locMap.confirm,
						inputIcon = props.doneControllerIcon,
					},
				},
			},
		},
	})
end

return U13ConfirmPrompt
