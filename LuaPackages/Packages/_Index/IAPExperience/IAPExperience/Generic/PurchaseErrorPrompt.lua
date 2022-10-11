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
	if errorType == PurchaseErrorType.AlreadyOwn then
		return locMap.alreadyOwnText
	elseif errorType == PurchaseErrorType.FailedGrant then
		return locMap.failedGrantText
	elseif errorType == PurchaseErrorType.FailedGrantUnknown then
		return locMap.failedGrantUnknownText
	elseif errorType == PurchaseErrorType.Limited then
		return locMap.limitedText
	elseif errorType == PurchaseErrorType.NotEnoughRobux then
		return locMap.notEnoughRobuxText
	elseif errorType == PurchaseErrorType.NotForSale then
		return locMap.notForSaleText
	elseif errorType == PurchaseErrorType.NotForSaleExperience then
		return locMap.notForSaleExperienceText
	elseif errorType == PurchaseErrorType.PremiumOnly then
		return locMap.premiumOnlyText
	elseif errorType == PurchaseErrorType.ThirdPartyDisabled then
		return locMap.thirdPartyDisabledText
	elseif errorType == PurchaseErrorType.Under13 then
		return locMap.under13Text
	elseif errorType == PurchaseErrorType.PremiumPlatformUnavailable then
		return locMap.premiumPlatformUnavailable
	elseif errorType == PurchaseErrorType.AlreadyPremium then
		return locMap.alreadyPremium
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
			alreadyOwnText = {
				key = LOC_KEY:format("Text.AlreadyOwn")
			},
			failedGrantText = {
				key = LOC_KEY:format("Text.FailedGrant")
			},
			failedGrantUnknownText = {
				key = LOC_KEY:format("Text.FailedGrantUnknown")
			},
			limitedText = {
				key = LOC_KEY:format("Text.Limited")
			},
			notEnoughRobuxText = {
				key = LOC_KEY:format("Text.NotEnoughRobux")
			},
			notForSaleText = {
				key = LOC_KEY:format("Text.NotForSale")
			},
			notForSaleExperienceText = {
				key = LOC_KEY:format("Text.NotForSaleExperience")
			},
			premiumOnlyText = {
				key = LOC_KEY:format("Text.PremiumOnly")
			},
			thirdPartyDisabledText = {
				key = LOC_KEY:format("Text.ThirdPartyDisabled")
			},
			under13Text = {
				key = LOC_KEY:format("Text.Under13")
			},
			premiumPlatformUnavailable = {
				key = LOC_KEY:format("Text.PremiumPlatformUnavailable")
			},
			alreadyPremium = {
				key = LOC_KEY:format("AlreadyPremium")
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
