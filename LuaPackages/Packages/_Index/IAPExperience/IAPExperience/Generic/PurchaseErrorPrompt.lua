local GenericRoot = script.Parent
local IAPExperienceRoot = GenericRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Images = UIBlox.App.ImageSet.Images

local ERROR_ICON = "icons/status/error_large"
local ALREADY_OWNED_ICON = "icons/status/success_large"

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)

local PurchaseErrorType = require(GenericRoot.PurchaseErrorType)
local PurchaseFlowType = require(GenericRoot.PurchaseFlowType)

local LOC_KEY = "IAPExperience.PurchaseError.%s"

local ErrorPrompt = Roact.Component:extend(script.Name)

local getEnableErrorPromptNewIcon = require(IAPExperienceRoot.Flags.getEnableErrorPromptNewIcon)

type Props = {
	anchorPoint: Vector2?,
	position: UDim2?,
	screenSize: Vector2,

	errorType: any?,
	flowType: any?,

	doneControllerIcon: { [string]: any? },

	doneActivated: () -> any?,
}

ErrorPrompt.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5),
	position = UDim2.new(0.5, 0, 0.5, 0),
}

function ErrorPrompt:getErrorTitle(locMap: { [string]: string }, errorType: any?, flowType: any?)
	if errorType == PurchaseErrorType.FailedRobuxPurchase then
		return locMap.robuxFailedPurchaseTitle
	elseif errorType == PurchaseErrorType.AlreadySubscribed then
		return locMap.alreadySubscribedTitle
	elseif flowType == PurchaseFlowType.Subscription then
		return locMap.cantSubscribeTitle
	end

	return locMap.titleText
end

function ErrorPrompt:getErrorMessage(locMap: { [string]: string }, errorType: any?)
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
	elseif errorType == PurchaseErrorType.PurchaseLimit then
		return locMap.purchaseLimitText
	elseif errorType == PurchaseErrorType.ParentalLimit then
		return locMap.parentalLimitText
	elseif errorType == PurchaseErrorType.FailedRobuxPurchase then
		return locMap.robuxFailedPurchaseText
	elseif errorType == PurchaseErrorType.AlreadySubscribed then
		return locMap.alreadySubscribedText
	elseif errorType == PurchaseErrorType.SubscriptionNotForSale then
		return locMap.subscriptionNotForSaleText
	elseif errorType == PurchaseErrorType.SubscriptionExceededUserSpendLimit then
		return locMap.parentalRestrictionSubscriptionText
	elseif errorType == PurchaseErrorType.SubscriptionUnsupportedLocale then
		return locMap.subscriptionUnsupportedLocaleText
	elseif errorType == PurchaseErrorType.RestrictedUserAge then
		return locMap.restrictedUserAgeText
	elseif
		errorType == PurchaseErrorType.SubscriptionPurchasePlatformNotSupported
		or errorType == PurchaseErrorType.SubscriptionInvalidSaleLocation
	then
		return locMap.subscriptionUnsupportedPlatformText
	end

	return locMap.unknownText
end

function getIsAlreadyOwnedError(errorType: any)
	return errorType == PurchaseErrorType.AlreadyOwn
		or errorType == PurchaseErrorType.AlreadyPremium
		or errorType == PurchaseErrorType.AlreadySubscribed
end

function getErrorTitleIcon(errorType: any)
	if getIsAlreadyOwnedError(errorType) then
		return Images[ALREADY_OWNED_ICON]
	end
	return Images[ERROR_ICON]
end

function ErrorPrompt:render()
	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			titleText = {
				key = LOC_KEY:format("Title.Error"),
			},
			robuxFailedPurchaseTitle = {
				key = LOC_KEY:format("Title.RobuxPurchaseFailed"),
			},
			robuxFailedPurchaseText = {
				key = LOC_KEY:format("Text.FailedRobuxPurchase"),
			},
			unknownText = {
				key = LOC_KEY:format("Text.UnknownError"),
			},
			okText = {
				key = LOC_KEY:format("Text.Ok"),
			},
			alreadyOwnText = {
				key = LOC_KEY:format("Text.AlreadyOwn"),
			},
			failedGrantText = {
				key = LOC_KEY:format("Text.FailedGrant"),
			},
			failedGrantUnknownText = {
				key = LOC_KEY:format("Text.FailedGrantUnknown"),
			},
			limitedText = {
				key = LOC_KEY:format("Text.Limited"),
			},
			notEnoughRobuxText = {
				key = LOC_KEY:format("Text.NotEnoughRobux"),
			},
			notForSaleText = {
				key = LOC_KEY:format("Text.NotForSale"),
			},
			notForSaleExperienceText = {
				key = LOC_KEY:format("Text.NotForSaleExperience"),
			},
			premiumOnlyText = {
				key = LOC_KEY:format("Text.PremiumOnly"),
			},
			thirdPartyDisabledText = {
				key = LOC_KEY:format("Text.ThirdPartyDisabled"),
			},
			under13Text = {
				key = LOC_KEY:format("Text.Under13"),
			},
			premiumPlatformUnavailable = {
				key = LOC_KEY:format("Text.PremiumPlatformUnavailable"),
			},
			alreadyPremium = {
				key = LOC_KEY:format("AlreadyPremium"),
			},
			purchaseLimitText = {
				key = LOC_KEY:format("Text.PurchaseLimit"),
			},
			parentalLimitText = {
				key = LOC_KEY:format("Text.ParentalLimit"),
			},
			alreadySubscribedTitle = {
				key = LOC_KEY:format("Title.AlreadySubscribed"),
			},
			cantSubscribeTitle = {
				key = LOC_KEY:format("Title.CantSubscribe"),
			},
			alreadySubscribedText = {
				key = LOC_KEY:format("Text.AlreadySubscribed"),
			},
			subscriptionNotForSaleText = {
				key = LOC_KEY:format("Text.SubscriptionNotForSale"),
			},
			parentalRestrictionSubscriptionText = {
				key = LOC_KEY:format("Text.ParentalRestrictionSubscription"),
			},
			subscriptionUnsupportedLocaleText = {
				key = LOC_KEY:format("Text.SubscriptionUnsupportedLocale"),
			},
			restrictedUserAgeText = {
				key = LOC_KEY:format("Text.RestrictedUserAge"),
			},
			subscriptionUnsupportedPlatformText = {
				key = LOC_KEY:format("Text.SubscriptionUnsupportedPlatform"),
			},
		},
		render = function(locMap: { [string]: string })
			return self:renderAlert(locMap)
		end,
	})
end

function ErrorPrompt:renderAlert(locMap: { [string]: string })
	local props: Props = self.props

	return Roact.createElement(InteractiveAlert, {
		anchorPoint = props.anchorPoint,
		position = props.position,
		screenSize = props.screenSize,
		title = self:getErrorTitle(locMap, props.errorType, props.flowType),
		titleIcon = getEnableErrorPromptNewIcon() and getErrorTitleIcon(props.errorType) or Images[ERROR_ICON],
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
