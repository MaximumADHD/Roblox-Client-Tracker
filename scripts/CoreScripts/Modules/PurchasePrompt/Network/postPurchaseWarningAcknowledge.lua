local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local enumerate = PurchasePromptDeps.enumerate

local addRawValueMethodToEnum = require(Root.Utils.addRawValueMethodToEnum)

local postPurchaseWarningAcknowledge = {}

-- Setup Response enum
local rawKeyToRawValue = {
    None = "None",
    ConfirmedU13PaymentModal = "ConfirmedU13PaymentModal",
    ConfirmedU13MonthlyThreshold1Modal = "ConfirmedU13MonthlyThreshold1Modal",
    ConfirmedU13MonthlyThreshold2Modal = "ConfirmedU13MonthlyThreshold2Modal",
    ConfirmedParentalConsentWarningPaymentModal13To17 = "ConfirmedParentalConsentWarningPaymentModal13To17",
}
postPurchaseWarningAcknowledge.UserActionType = enumerate(script.Name, rawKeyToRawValue)
addRawValueMethodToEnum(postPurchaseWarningAcknowledge.UserActionType, rawKeyToRawValue)

function postPurchaseWarningAcknowledge.Post(network: any, userAction: string)
	local userActionStr = postPurchaseWarningAcknowledge.UserActionType.toRawValue(userAction)
	return network.postPurchaseWarningAcknowledge(userActionStr)
end

return postPurchaseWarningAcknowledge
