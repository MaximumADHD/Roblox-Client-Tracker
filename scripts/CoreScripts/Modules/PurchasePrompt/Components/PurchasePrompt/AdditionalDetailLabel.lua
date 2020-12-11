local Root = script.Parent.Parent.Parent

local UserInputService = game:GetService("UserInputService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact


local PromptState = require(Root.Enums.PromptState)
local UpsellFlow = require(Root.Enums.UpsellFlow)
local LocalizationService = require(Root.Localization.LocalizationService)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)
local isMockingPurchases = require(Root.Utils.isMockingPurchases)
local getPlayerPrice = require(Root.Utils.getPlayerPrice)
local connectToStore = require(Root.connectToStore)

local TextLocalizer = require(script.Parent.Parent.Connection.TextLocalizer)
local withLayoutValues = require(script.Parent.Parent.Connection.withLayoutValues)

local PURCHASE_DETAILS_KEY = "CoreScripts.PurchasePrompt.PurchaseDetails.%s"

local function AdditionalDetailLabel(props)
	return withLayoutValues(function(values)
		local layoutOrder = props.layoutOrder
		local messageKey = props.messageKey
		local messageParams = props.messageParams

		if messageKey == nil then
			-- We return an empty frame to preserve UIListLayout spacing
			return Roact.createElement("Frame", {
				LayoutOrder = layoutOrder,
				Size = values.Size.AdditionalDetailsLabel,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			})
		end

		return Roact.createElement(TextLocalizer, {
			key = messageKey,
			params = messageParams,
			render = function(localizedText)
				return Roact.createElement("TextLabel", {
					Text = localizedText,
					LayoutOrder = layoutOrder,
					Size = values.Size.AdditionalDetailsLabel,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					TextColor3 = Color3.new(1, 1, 1),
					Font = Enum.Font.SourceSans,
					TextSize = values.TextSize.AdditionalDetails,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextScaled = true,
					TextWrapped = true,
				}, {
					TextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = values.TextSize.AdditionalDetails,
					})
				})
			end,
		})
	end)
end

local function mapStateToProps(state)
	local promptState = state.promptState

	local messageKey = nil
	local messageParams = nil

	local isPlayerPremium = state.accountInfo.membershipType == 4
	local price = getPlayerPrice(state.productInfo, isPlayerPremium)
	local balance = state.accountInfo.balance

	if promptState == PromptState.PromptPurchase then
		if price == 0 then
			messageKey = PURCHASE_DETAILS_KEY:format("BalanceUnaffected")
		elseif isMockingPurchases() then
			messageKey = PURCHASE_DETAILS_KEY:format("MockPurchase")
		else
			messageKey = PURCHASE_DETAILS_KEY:format("BalanceFutureV2")
			messageParams = {
				BALANCE_FUTURE = LocalizationService.numberParam(balance - price),
			}
		end
	elseif promptState == PromptState.RobuxUpsell then
		local upsellFlow = getUpsellFlow(UserInputService:GetPlatform())

		if upsellFlow ~= UpsellFlow.Web then
			local upsellRobux = state.nativeUpsell.robuxPurchaseAmount
			local amountNeeded = price - balance

			local amountRemaining = upsellRobux - amountNeeded
			messageKey = PURCHASE_DETAILS_KEY:format("RemainingAfterUpsell")
			messageParams = {
				REMAINING_ROBUX = LocalizationService.numberParam(amountRemaining),
			}
		end
	elseif promptState == PromptState.PurchaseComplete then
		if isMockingPurchases() then
			messageKey = PURCHASE_DETAILS_KEY:format("MockPurchaseComplete")
		else
			messageKey = PURCHASE_DETAILS_KEY:format("BalanceNow")
			messageParams = {
				BALANCE_NOW = LocalizationService.numberParam(balance - price),
			}
		end
	end

	return {
		messageKey = messageKey,
		messageParams = messageParams,
	}
end

local AdditionalDetailLabel = connectToStore(
	mapStateToProps
)(AdditionalDetailLabel)

return AdditionalDetailLabel
