local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local Roact = require(CorePackages.Roact)

local connectToStore = require(script.Parent.Parent.Parent.connectToStore)

local LocalizationService = require(script.Parent.Parent.Parent.Localization.LocalizationService)

local PromptState = require(script.Parent.Parent.Parent.PromptState)
local UpsellFlow = require(script.Parent.Parent.Parent.UpsellFlow)

local TextLocalizer = require(script.Parent.Parent.Connection.TextLocalizer)

local withLayoutValues = require(script.Parent.Parent.Connection.withLayoutValues)

local getUpsellFlow = require(script.Parent.Parent.Parent.NativeUpsell.getUpsellFlow)
local isMockingPurchases = require(script.Parent.Parent.Parent.isMockingPurchases)

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
				Size = values.Size.AdditonalDetailsLabel,
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
					Size = values.Size.AdditonalDetailsLabel,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					TextColor3 = Color3.new(1, 1, 1),
					Font = Enum.Font.SourceSans,
					TextSize = values.TextSize.AdditonalDetails,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextScaled = true,
					TextWrapped = true,
				}, {
					TextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = values.TextSize.AdditonalDetails,
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

	local price = state.productInfo.price
	local balance = state.accountInfo.balance

	if promptState == PromptState.PromptPurchase then
		if price == 0 then
			messageKey = PURCHASE_DETAILS_KEY:format("BalanceUnaffected")
		elseif isMockingPurchases() then
			messageKey = PURCHASE_DETAILS_KEY:format("MockPurchase")
		else
			messageKey = PURCHASE_DETAILS_KEY:format("BalanceFuture")
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
	elseif promptState == PromptState.BuildersClubUpsell then
		local bcLevelRequired = state.productInfo.bcLevelRequired
		messageKey = PURCHASE_DETAILS_KEY:format("InvalidBuildersClub")
		messageParams = {
			BC_LEVEL = LocalizationService.nestedKeyParam(
				LocalizationService.getBuildersClubLevelKey(bcLevelRequired)
			)
		}
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

AdditionalDetailLabel = connectToStore(
	mapStateToProps
)(AdditionalDetailLabel)

return AdditionalDetailLabel