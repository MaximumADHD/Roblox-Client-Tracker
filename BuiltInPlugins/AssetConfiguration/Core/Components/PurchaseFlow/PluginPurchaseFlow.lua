--[[
	Contains the logic for the Purchase Flow for purchasing a plugin.
	If the current user does not have enough robux, the	flow will take them
	to the robux purchase screen. Otherwise, it will prompt whether they
	would like to purchase the plugin.

	If the purchase fails, the user will see a retry prompt which they can
	use to continue to retry the purchase until it succeeds.

	Once the purchase flow is complete, Continue is called to install the plugin.
	If the user cancels at any time, Cancel is called to unmount this component.

	Props:
		table AssetData = The plugin's assetData table.

		function Cancel() = A callback for when the flow is cancelled, and
			the user decided not to or could not purchase the plugin.
		function Continue() = A callback for when the user decided to
			purchase the plugin and the purchase succeeded.
]]

local THUMBNAIL_SIZE = Vector2.new(150, 150)

local GuiService = game:GetService("GuiService")

local FFlagToolboxWaitForPluginOwnedStatus = game:GetFastFlag("ToolboxWaitForPluginOwnedStatus")

local Plugin = script.Parent.Parent.Parent.Parent
local Libs = Plugin.Libs

local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)
local BuyPluginDialog = require(Plugin.Core.Components.PurchaseFlow.BuyPluginDialog)
local BuyRobuxDialog = require(Plugin.Core.Components.PurchaseFlow.BuyRobuxDialog)
local PurchaseFailedDialog = require(Plugin.Core.Components.PurchaseFlow.PurchaseFailedDialog)

local Urls = require(Plugin.Core.Util.Urls)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local getNetwork = ContextGetter.getNetwork

local GetRobuxBalance = require(Plugin.Core.Networking.Requests.GetRobuxBalance)
local PurchaseAssetRequest = require(Plugin.Core.Networking.Requests.PurchaseAssetRequest)
local SetPurchaseStatus = require(Plugin.Core.Actions.SetPurchaseStatus)
local PurchaseStatus = require(Plugin.Core.Types.PurchaseStatus)

local PurchaseFlow = Roact.PureComponent:extend("PurchaseFlow")

function PurchaseFlow:init()
	self.continued = false

	self.state = {
		purchaseStatus = PurchaseStatus.None,
	}

	self.cancel = function()
		self.props.Cancel()
	end

	self.onPurchaseClicked = function(didPurchase)
		if didPurchase then
			if self.props.PurchaseStatus == PurchaseStatus.Waiting then
				return
			end

			local assetData = self.props.AssetData
			local assetId = assetData.Asset.Id
			local productId
			if FFlagToolboxWaitForPluginOwnedStatus then
				-- We should never get here without a Product. This was almost certainly only ever happening due to
				-- the ownership status not having loaded and bad logic in AssetPreviewWrapper causing
				-- a purchase to be triggered. But in case something else is causing this too, let's fail here
				assert(assetData.Product, "Attempted to purchase asset without a Product: " .. tostring(assetId))
				productId = assetData.Product.ProductId
			else
				-- This guarding makes no sense - purchaseAsset requires a productId
				productId = assetData.Product and assetData.Product.ProductId
			end

			local price = assetData.Product.Price
			self.props.purchaseAsset(getNetwork(self), assetId, productId, price)
		else
			self.props.Cancel()
		end
	end

	self.onBuyRobuxClicked = function(didContinue)
		if didContinue then
			GuiService:OpenBrowserWindow(Urls.getRobuxPurchaseUrl())
		end
		self.props.Cancel()
	end
end

function PurchaseFlow:didMount()
	local props = self.props
	self.props.getRobuxBalance(getNetwork(self))
	self.props.setPurchaseStatus(PurchaseStatus.None)

	-- If plugin is free, purchase it right away and end the flow
	local data = props.AssetData
	local product = data.Product
	local cost = product and product.Price or 0
	if cost == 0 then
		self.onPurchaseClicked(true)
	end
end

function PurchaseFlow:didUpdate()
	--[[
		Hack due to a quirk of the interaction between RoactRodux and PluginWidgets.
		RoactRodux throws an error when something yields in response to a store
		connection. Creating a PluginWidget is a YieldFunction. So, when connecting
		the store to a PluginWidget, we have to offload the connection to a delayed
		state update so that the yield logic happens separate from the Rodux update.
	]]
	local nextStatus = self.props.PurchaseStatus
	if self.state.purchaseStatus ~= nextStatus then
		spawn(function()
			self:setState({
				purchaseStatus = nextStatus,
			})
		end)
	end

	-- Purchase complete, continue to install
	if nextStatus == PurchaseStatus.Success then
		spawn(function()
			-- The self.continued check is to make sure that Continue is not called
			-- more than once, even if this component re-renders after success.
			if not self.continued then
				self.continued = true
				self.props.Continue()
			end
		end)
	end
end

function PurchaseFlow:render()
	local props = self.props
	local state = self.state
	assert(type(props.Cancel) == "function", "PurchaseFlow expects a Cancel callback.")
	assert(type(props.Continue) == "function", "PurchaseFlow expects a Continue callback.")

	local status = state.purchaseStatus

	local data = props.AssetData
	local asset = data.Asset

	local assetId = asset.Id
	local thumbnail = Urls.constructAssetThumbnailUrl(assetId, THUMBNAIL_SIZE.X, THUMBNAIL_SIZE.Y)
	local name = asset.Name
	local creator = data.Creator.Name
	local product = data.Product
	local cost = product and product.Price or 0
	local isPaid = cost > 0

	local balance = props.Balance or "---"
	local purchaseFailed = status == PurchaseStatus.Failed

	local canPurchase = balance >= cost
	local showDialogs = status == PurchaseStatus.None

	return isPaid and Roact.createFragment({
		BuyPlugin = showDialogs and canPurchase and Roact.createElement(BuyPluginDialog, {
			Name = name,
			Creator = creator,
			Cost = cost,
			Balance = balance,
			Thumbnail = thumbnail,
			OnClose = self.cancel,
			OnButtonClicked = self.onPurchaseClicked,
		}),

		BuyRobux = showDialogs and not canPurchase and Roact.createElement(BuyRobuxDialog, {
			Name = name,
			Creator = creator,
			Cost = cost,
			Balance = balance,
			Thumbnail = thumbnail,
			OnClose = self.cancel,
			OnButtonClicked = self.onBuyRobuxClicked,
		}),

		PurchaseFailed = purchaseFailed and Roact.createElement(PurchaseFailedDialog, {
			Name = name,
			OnClose = self.cancel,
			OnButtonClicked = self.onPurchaseClicked,
		}),
	})
end

local function mapStateToProps(state, props)
	state = state or {}
	local purchase = state.purchase

	return {
		Balance = purchase.robuxBalance,
		PurchaseStatus = purchase.status,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		getRobuxBalance = function(networkInterface)
			dispatch(GetRobuxBalance(networkInterface))
		end,

		purchaseAsset = function(networkInterface, assetId, productId, price)
			dispatch(PurchaseAssetRequest(networkInterface, assetId, productId, price))
		end,

		setPurchaseStatus = function(status)
			dispatch(SetPurchaseStatus(status))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PurchaseFlow)
