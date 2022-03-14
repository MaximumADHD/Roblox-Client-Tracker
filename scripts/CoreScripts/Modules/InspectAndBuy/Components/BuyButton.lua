local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local GuiService = game:GetService("GuiService")
local MarketplaceService = game:GetService("MarketplaceService")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local InspectAndBuyFolder = script.Parent.Parent
local Colors = require(InspectAndBuyFolder.Colors)
local PromptPurchase = require(InspectAndBuyFolder.Thunks.PromptPurchase)
local getSelectionImageObjectRounded = require(InspectAndBuyFolder.getSelectionImageObjectRounded)

local TEXT_SIZE = 16
local MIN_SIZE = 32
local ROBUX_ICON_SIZE = 16
local BUTTON_PADDING = 10
local ROBLOX_CREATOR_ID = "1"

local BuyButton = Roact.PureComponent:extend("BuyButton")

function BuyButton:init()
	self.selectedImage = getSelectionImageObjectRounded()
	self.connections = {}
	self.lastGamepadFocus = nil

	self.onPromptPurchaseFinished = function()
		if self.props.gamepadEnabled and self.props.visible then
			-- when the prompt closes and we expect gamepad support, restore focus
			GuiService.SelectedCoreObject = self.lastGamepadFocus
		end
	end
end

function BuyButton:render()
	local itemType = self.props.itemType
	local itemId = self.props.itemId
	local showRobuxIcon = self.props.showRobuxIcon
	local forSale = self.props.forSale
	local promptPurchase = self.props.promptPurchase
	local buyText = self.props.buyText
	local buyButtonRef = self.props.buyButtonRef
	local size = UDim2.new(0, self:getBuyButtonTextSize(buyText), 1, 0)
	local assetInfo = self.props.assetInfo
	local creatorId = assetInfo and assetInfo.creatorId or 0
	local sizeXAdjustment = creatorId == ROBLOX_CREATOR_ID and -32 or -BUTTON_PADDING / 2
	local transparencyOverride = 0

	if not forSale then
		transparencyOverride = 0.5
	end

	return Roact.createElement("ImageButton", {
		AnchorPoint = Vector2.new(0.5, 0),
		BackgroundTransparency = 1,
		Size = UDim2.new(0.5, sizeXAdjustment, 0, 44),
		Image = "rbxasset://textures/ui/InspectMenu/Button_white.png",
		ImageColor3 = Colors.Green,
		SelectionImageObject = self.selectedImage,
		LayoutOrder = 3,
		ImageTransparency = transparencyOverride,
		[Roact.Ref] = buyButtonRef,
		[Roact.Event.Activated] = function()
			if forSale then
				if self.props.gamepadEnabled and self.props.visible then
					-- remove focus when the prompt opens so we can properly interact with the prompt using gamepad
					self.lastGamepadFocus = GuiService.SelectedCoreObject
					GuiService.SelectedCoreObject = nil
				end
				promptPurchase(itemId, itemType)
			end
		end,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
		}),
		RobuxIcon = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, ROBUX_ICON_SIZE, 0, ROBUX_ICON_SIZE),
			Image =  "rbxasset://textures/ui/common/robux_small.png",
			ImageTransparency = transparencyOverride,
			ImageColor3 = Colors.White,
			LayoutOrder = 1,
			Visible = showRobuxIcon,
		}),
		BuyText = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Size = size,
			Text = buyText,
			Font = Enum.Font.Gotham,
			TextSize = TEXT_SIZE,
			TextColor3 = Colors.White,
			TextTransparency = transparencyOverride,
			LayoutOrder = 2,
			TextXAlignment = Enum.TextXAlignment.Center,
		})
	})
end

function BuyButton:didMount()
	local purchaseFinishedListener =
			MarketplaceService.PromptPurchaseFinished:Connect(self.onPromptPurchaseFinished)
	local bundlePurchaseFinishedListener =
		MarketplaceService.PromptBundlePurchaseFinished:Connect(self.onPromptPurchaseFinished)
	table.insert(self.connections, purchaseFinishedListener)
	table.insert(self.connections, bundlePurchaseFinishedListener)
end

function BuyButton:willUnmount()
	for _, connection in pairs(self.connections) do
		connection:Disconnect()
	end
end

function BuyButton:getBuyButtonTextSize(buyText)
	if self.props.buyButtonRef.current then
		local buyButtonTextSize = TextService:GetTextSize(buyText,
			TEXT_SIZE, Enum.Font.Gotham, Vector2.new(self.props.buyButtonRef.current.AbsoluteSize.X, 5000))
		self.props.buyButtonRef.Size = UDim2.new(0, 1, 0, buyButtonTextSize.Y)
		return buyButtonTextSize.X > MIN_SIZE and buyButtonTextSize.X or MIN_SIZE
	end

	return 0
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		local assetId = state.detailsInformation.assetId

		return {
			locale = state.locale,
			view = state.view,
			assetInfo = state.assets[assetId],
			gamepadEnabled = state.gamepadEnabled,
			visible = state.visible,
		}
	end,
	function(dispatch)
		return {
			promptPurchase = function(itemId, itemType)
				dispatch(PromptPurchase(itemId, itemType))
			end,
		}
	end
)(BuyButton)
