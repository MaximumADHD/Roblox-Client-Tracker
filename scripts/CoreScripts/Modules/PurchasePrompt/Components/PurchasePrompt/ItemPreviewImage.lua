local Root = script.Parent.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Cryo = PurchasePromptDeps.Cryo
local Roact = PurchasePromptDeps.Roact
local UIBlox = PurchasePromptDeps.UIBlox
local UIBloxImages = UIBlox.App.ImageSet.Images

local PurchaseError = require(Root.Enums.PurchaseError)
local PromptState = require(Root.Enums.PromptState)
local connectToStore = require(Root.connectToStore)

local PREMIUM_ICON = UIBloxImages["icons/graphic/premium_large"]
local ADULT_ERROR_ICON = UIBloxImages["icons/status/error_large"]

local withLayoutValues = require(script.Parent.Parent.Connection.withLayoutValues)

local function ItemPreviewImage(props)
	return withLayoutValues(function(values)
		local layoutOrder = props.layoutOrder
		local promptState = props.promptState
		local purchaseError = props.purchaseError
		local productImageUrl = props.productImageUrl

		local showPremiumIcon = false
		local showAdultErrorIcon = false
		local backgroundTransparency = 0
		if promptState == PromptState.AdultConfirmation or promptState == PromptState.U13PaymentModal
				or promptState == PromptState.U13MonthlyThreshold1Modal or promptState == PromptState.U13MonthlyThreshold2Modal then
			showAdultErrorIcon = true
			backgroundTransparency = 1
		elseif promptState == PromptState.Error then
			if purchaseError == PurchaseError.PremiumOnly then
				showPremiumIcon = true
			else
				productImageUrl = values.Image.ErrorIcon.Path
			end
		end

		return Roact.createElement("Frame", {
			Size = values.Size.ItemPreviewContainerFrame,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = layoutOrder,
		}, {
			PremiumIcon = showPremiumIcon and Roact.createElement("ImageLabel", Cryo.Dictionary.join(PREMIUM_ICON, {
				Size = values.Size.ItemPreview,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				ImageTransparency = 0,
			})) or nil,
			ItemPreviewImageContainer = not showPremiumIcon and Roact.createElement("Frame", {
				Size = values.Size.ItemPreviewWhiteFrame,
				BackgroundTransparency = backgroundTransparency,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = Color3.new(1, 1, 1),
			}, {
				ItemImage = showAdultErrorIcon and Roact.createElement("ImageLabel", Cryo.Dictionary.join(ADULT_ERROR_ICON, {
					Size = values.Size.ItemPreview,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					ImageTransparency = 0,
				}))
				or Roact.createElement("ImageLabel", {
					Size = values.Size.ItemPreview,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Image = productImageUrl,
					ImageTransparency = 0,
				}),
			}) or nil,
		})
	end)
end

local function mapStateToProps(state)
	return {
		promptState = state.promptState,
		purchaseError = state.purchaseError,
		productImageUrl = state.productInfo.imageUrl,
	}
end

local ItemPreviewImage = connectToStore(
	mapStateToProps
)(ItemPreviewImage)

return ItemPreviewImage
