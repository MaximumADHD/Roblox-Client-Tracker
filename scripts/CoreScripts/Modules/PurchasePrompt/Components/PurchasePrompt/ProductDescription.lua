local Root = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)

local LocalizationService = require(Root.Localization.LocalizationService)

local TextLocalizer = require(script.Parent.Parent.Connection.TextLocalizer)
local AutoSizedTextLabel = require(script.Parent.AutoSizedTextLabel)
local Price = require(script.Parent.Price)

local withLayoutValues = require(script.Parent.Parent.Connection.withLayoutValues)

local getPlayerPrice = require(Root.Utils.getPlayerPrice)
local connectToStore = require(Root.connectToStore)

local PURCHASE_MESSAGE_KEY = "CoreScripts.PurchasePrompt.PurchaseMessage.%s"

local function ProductDescription(props)
	return withLayoutValues(function(values)
		local layoutOrder = props.layoutOrder
		local descriptionKey = props.descriptionKey
		local descriptionParams = props.descriptionParams
		local showPrice = props.showPrice
		local price = props.price

		return Roact.createElement("Frame", {
			BorderSizePixel = 0,
			Size = values.Size.ProductDescription,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		}, {
			ProductDescriptionPadding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, values.Size.ProductDescriptionPaddingTop),
			}),
			ProductDescriptionListLayout = Roact.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			ProductDescriptionText = Roact.createElement(TextLocalizer, {
				key = descriptionKey,
				params = descriptionParams,
				render = function(localizedText)
					return Roact.createElement(AutoSizedTextLabel, {
						width = values.Size.ProductDescription.X.Offset - values.Size.HorizontalPadding,
						maxHeight = showPrice
							and values.Size.ProductDescription.Y.Offset - values.Size.RobuxIconContainerFrame.Y.Offset
							or values.Size.ProductDescription.Y.Offset,
						Text = localizedText,
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextColor3 = Color3.new(1, 1, 1),
						Font = Enum.Font.SourceSans,
						TextSize = values.TextSize.ProductDescription,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
						TextScaled = true,
						TextWrapped = true,
						LayoutOrder = 1,
					}, {
						TextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
							MaxTextSize = values.TextSize.ProductDescription,
						}),
					})
				end,
			}),
			Price = showPrice and Roact.createElement(Price, {
				layoutOrder = 2,
				price = price,
			}) or nil,
		})
	end)
end

local function mapStateToProps(state)
	local promptState = state.promptState
	local isPlayerPremium = state.accountInfo.membershipType == 4
	local price = getPlayerPrice(state.productInfo, isPlayerPremium)
	local isFree = price == 0
	local canPurchase = promptState ~= PromptState.Error

	local descriptionKey
	local descriptionParams


	if promptState == PromptState.PurchaseComplete then
		descriptionKey = PURCHASE_MESSAGE_KEY:format("Succeeded")
		descriptionParams = {
			ITEM_NAME = state.productInfo.name,
			NEEDED_AMOUNT = LocalizationService.numberParam(
				price - state.accountInfo.balance
			),
			ASSET_TYPE = LocalizationService.nestedKeyParam(
					LocalizationService.getKeyFromItemType(state.productInfo.itemType))
		}
	elseif promptState == PromptState.RobuxUpsell then
		descriptionKey = PURCHASE_MESSAGE_KEY:format("NeedMoreRobux")
		descriptionParams = {
			ITEM_NAME = state.productInfo.name,
			NEEDED_AMOUNT = LocalizationService.numberParam(
				price - state.accountInfo.balance
			),
			ASSET_TYPE = LocalizationService.nestedKeyParam(
				LocalizationService.getKeyFromItemType(state.productInfo.itemType))
		}
	elseif promptState == PromptState.AdultConfirmation then
		descriptionKey = "CoreScripts.PurchasePrompt.PurchaseDetails.AgeLegalText"
	elseif promptState == PromptState.U13PaymentModal then
		descriptionKey = "CoreScripts.PurchasePrompt.PurchaseDetails.ScaryModalOne"
	elseif promptState == PromptState.U13MonthlyThreshold1Modal then
		descriptionKey = "CoreScripts.PurchasePrompt.PurchaseDetails.ScaryModalTwo"
	elseif promptState == PromptState.U13MonthlyThreshold2Modal then
		descriptionKey = "CoreScripts.PurchasePrompt.PurchaseDetails.ScaryModalParental"
	elseif promptState == PromptState.Error then
		descriptionKey = LocalizationService.getErrorKey(state.purchaseError)
		if state.purchaseError == PurchaseError.UnknownFailure then
			descriptionParams = {
				ITEM_NAME = state.productInfo.name
			}
		end
	elseif promptState ~= PromptState.None then
		if isFree then
			descriptionKey = PURCHASE_MESSAGE_KEY:format("Free")
			descriptionParams = {
				ITEM_NAME = state.productInfo.name,
			}
		else
			descriptionKey = PURCHASE_MESSAGE_KEY:format("Purchase")
			descriptionParams = {
				ASSET_TYPE = LocalizationService.nestedKeyParam(
					LocalizationService.getKeyFromItemType(state.productInfo.itemType)),
				ITEM_NAME = state.productInfo.name,
			}
		end
	end

	return {
		descriptionKey = descriptionKey,
		descriptionParams = descriptionParams,
		showPrice = not isFree and canPurchase and (promptState ~= PromptState.AdultConfirmation
			and promptState ~= PromptState.U13PaymentModal and promptState ~= PromptState.U13MonthlyThreshold1Modal
			and promptState ~= PromptState.U13MonthlyThreshold2Modal),
		price = price,
	}
end

local ProductDescription = connectToStore(
	mapStateToProps
)(ProductDescription)

return ProductDescription
