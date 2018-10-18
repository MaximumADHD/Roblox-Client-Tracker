local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local PromptState = require(script.Parent.Parent.Parent.PromptState)
local PurchaseError = require(script.Parent.Parent.Parent.PurchaseError)

local LocalizationService = require(script.Parent.Parent.Parent.Localization.LocalizationService)

local TextLocalizer = require(script.Parent.Parent.Connection.TextLocalizer)
local AutoSizedTextLabel = require(script.Parent.AutoSizedTextLabel)
local Price = require(script.Parent.Price)

local withLayoutValues = require(script.Parent.Parent.Connection.withLayoutValues)

local connectToStore = require(script.Parent.Parent.Parent.connectToStore)

local PURCHASE_MESSAGE_KEY = "CoreScripts.PurchasePrompt.PurchaseMessage.%s"

local function ProductDescription(props)
	return withLayoutValues(function(values)
		local layoutOrder = props.layoutOrder
		local descriptionKey = props.descriptionKey
		local descriptionParams = props.descriptionParams

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
			Price = Roact.createElement(Price, {
				layoutOrder = 2,
			}),
		})
	end)
end

local function mapStateToProps(state)
	local promptState = state.promptState
	local isFree = state.productInfo.price == 0

	local descriptionKey
	local descriptionParams

	if promptState == PromptState.PurchaseComplete then
		descriptionKey = PURCHASE_MESSAGE_KEY:format("Succeeded")
		descriptionParams = {
			ITEM_NAME = state.productInfo.name,
			NEEDED_AMOUNT = LocalizationService.numberParam(
				state.productInfo.price - state.accountInfo.balance
			),
			ASSET_TYPE = LocalizationService.nestedKeyParam(
				LocalizationService.getAssetTypeKey(state.productInfo.assetTypeId)
			),
		}
	elseif promptState == PromptState.RobuxUpsell then
		descriptionKey = PURCHASE_MESSAGE_KEY:format("NeedMoreRobux")
		descriptionParams = {
			ITEM_NAME = state.productInfo.name,
			NEEDED_AMOUNT = LocalizationService.numberParam(
				state.productInfo.price - state.accountInfo.balance
			),
			ASSET_TYPE = LocalizationService.nestedKeyParam(
				LocalizationService.getAssetTypeKey(state.productInfo.assetTypeId)
			),
		}
	elseif promptState == PromptState.CannotPurchase or promptState == PromptState.Error then
		descriptionKey = LocalizationService.getErrorKey(state.purchaseError)
		if state.purchaseError == PurchaseError.UnknownFailure then
			descriptionParams = {
				ITEM_NAME = state.productInfo.name
			}
		end
	elseif promptState ~= PromptState.Hidden then
		if isFree then
			descriptionKey = PURCHASE_MESSAGE_KEY:format("Free")
			descriptionParams = {
				ITEM_NAME = state.productInfo.name,
			}
		else
			descriptionKey = PURCHASE_MESSAGE_KEY:format("Purchase")
			descriptionParams = {
				ASSET_TYPE = LocalizationService.nestedKeyParam(
					LocalizationService.getAssetTypeKey(state.productInfo.assetTypeId)
				),
				ITEM_NAME = state.productInfo.name,
			}
		end
	end

	return {
		descriptionKey = descriptionKey,
		descriptionParams = descriptionParams,
	}
end

ProductDescription = connectToStore(
	mapStateToProps
)(ProductDescription)

return ProductDescription