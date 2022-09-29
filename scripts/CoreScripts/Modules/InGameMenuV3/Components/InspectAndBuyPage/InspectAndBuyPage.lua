--[[
	Landing page for the InspectAndBuyV2
	This page renders all of the item tiles and their footers
	for the user that is being inspected. It can be navigated to
	by selecting and inspecting a player from the Players page
	in the InGameMenuV3
]]
local MarketplaceService = game:GetService("MarketplaceService")
local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local PolicyService = require(CoreGui.RobloxGui.Modules.Common.PolicyService)

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local withStyle = UIBlox.Core.Style.withStyle
local ShimmerPanel = UIBlox.Loading.ShimmerPanel

local InGameMenu = script.Parent.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local Page = require(InGameMenu.Components.Page)
local InspectAndBuyItemCard = require(InGameMenu.Components.InspectAndBuyPage.InspectAndBuyItemCard)

local GetCharacterModelFromUserId = require(InGameMenu.Thunks.GetCharacterModelFromUserId)
local GetAssetsFromHumanoidDescription = require(InGameMenu.Thunks.GetAssetsFromHumanoidDescription)
local UpdateStoreId = require(InGameMenu.Actions.InspectAndBuy.UpdateStoreId)
local SetIsSubjectToChinaPolicies = require(InGameMenu.Actions.InspectAndBuy.SetIsSubjectToChinaPolicies)
local ResetInspectedInfo = require(InGameMenu.Actions.InspectAndBuy.ResetInspectedInfo)
local SetItemBeingPurchased = require(InGameMenu.Actions.InspectAndBuy.SetItemBeingPurchased)
local UpdateOwnedStatus = require(InGameMenu.Thunks.UpdateOwnedStatus)
local FocusHandler = require(InGameMenu.Components.Connection.FocusHandler)
local Constants = require(InGameMenu.Resources.Constants)
local SendInspectAndBuyAnalytics = require(InGameMenu.Utility.SendInspectAndBuyAnalytics)
local getCanGamepadCaptureFocus = require(InGameMenu.Selectors.getCanGamepadCaptureFocus)

local InspectAndBuyPage = Roact.PureComponent:extend("InspectAndBuyPage")

local AVATAR_HEADSHOT_SIZE = 48
local CELL_HEIGHT = 130
local CELL_WIDTH = 130
local CELL_PADDING_X = 12
local CELL_PADDING_Y = 72
local GRID_PADDING_TOP = 24
local MAX_CELLS_PER_ROW = 2
local SHIMMER_CELLS = 10
local BOTTOM_PADDING = 20

InspectAndBuyPage.validateProps = t.strictInterface({
	pageTitle = t.optional(t.string),

	-- from mapStateToProps
	inspectedDisplayName = t.optional(t.string),
	inspectedUserId = t.optional(t.number),
	assets = t.table,
	canGamepadCaptureFocus = t.boolean,
	itemBeingPurchased = t.table,
	currentPage = t.string,

	-- from mapDispatchToProps
	getCharacterModelFromUserId = t.callback,
	getAssetsFromHumanoidDescription = t.callback,
	updateStoreId = t.callback,
	setIsSubjectToChinaPolicies = t.callback,
	setItemBeingPurchased = t.callback,
	updateOwnedStatus = t.callback,
})

function InspectAndBuyPage:init()
	self.didInitFocus = false
	self.connections = {}
	self.firstItemCard = Roact.createRef()
	self:setState({
		previousFocus = nil
	})

	self.tilePressCallback = function()
		self:setState({
			previousFocus = GuiService.SelectedCoreObject
		})
		GuiService.SelectedCoreObject = nil
	end

	self.onPromptPurchaseFinished = function(_, itemId, isPurchased)
		local purchasedInformation = self.props.itemBeingPurchased

		if isPurchased and tostring(itemId) == purchasedInformation.itemId then
			local analyticsFields = {
				itemType = tostring(purchasedInformation.itemType),
				itemID = purchasedInformation.itemId,
			}
			SendInspectAndBuyAnalytics("purchaseSuccessItem", self.props.inspectedUserId, analyticsFields)
			self.props.updateOwnedStatus(purchasedInformation.itemId, purchasedInformation.itemType)
		end
		self.props.setItemBeingPurchased(nil, nil)
	end
end

function InspectAndBuyPage:getAvatarHeadshot(style)
	local headshotUrl = nil
	if self.props.inspectedUserId and self.props.inspectedUserId ~= "" then
		headshotUrl ="rbxthumb://type=AvatarHeadShot&id=" .. self.props.inspectedUserId
			.. "&w=" .. AVATAR_HEADSHOT_SIZE .. "&h=" .. AVATAR_HEADSHOT_SIZE
	else
		return nil
	end

	return Roact.createElement("ImageLabel", {
		Size = UDim2.fromOffset(AVATAR_HEADSHOT_SIZE, AVATAR_HEADSHOT_SIZE),
		BackgroundColor3 = style.Theme.BackgroundContrast.Color,
		BorderSizePixel = 0,
		Image = headshotUrl,
		LayoutOrder = 1,
	}, {
		MaskFrame = Roact.createElement("ImageLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Image = "rbxasset://textures/ui/LuaApp/graphic/gr-avatar mask-90x90.png",
			ImageColor3 = style.Theme.BackgroundDefault.Color,
		}),
	})
end

function InspectAndBuyPage:renderWithProviders(style, localized, getSelectionCursor)
	local assetCards: {[string]: any} = {}
	assetCards["UIGridLayout"] = Roact.createElement("UIGridLayout", {
		CellPadding = UDim2.new(0, CELL_PADDING_X, 0, CELL_PADDING_Y),
		CellSize = UDim2.new(0, CELL_WIDTH, 0, CELL_HEIGHT),
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		FillDirectionMaxCells = 2,
	})
	assetCards["UIPadding"] = Roact.createElement("UIPadding", {
		PaddingTop = UDim.new(0, GRID_PADDING_TOP),
	})

	local numAssets = 0
	for _, asset in pairs(self.props.assets) do
		numAssets += 1
		assetCards[asset.assetId] = Roact.createElement(InspectAndBuyItemCard, {
			asset = asset,
			textButtonRef = numAssets == 1 and self.firstItemCard or nil,
			callback = self.tilePressCallback,
		})
	end
	if numAssets == 0 then
		for i = 1, SHIMMER_CELLS do
			numAssets += 1
			assetCards["Shimmer" .. i] = Roact.createElement(ShimmerPanel, {
				Size = UDim2.new(0, CELL_WIDTH, 0, CELL_HEIGHT),
			})
		end
	end

	local numRows = math.ceil(numAssets / MAX_CELLS_PER_ROW)
	local canvasHeight = numRows * (CELL_HEIGHT + CELL_PADDING_Y) + BOTTOM_PADDING
	return Roact.createElement(Page, {
		useLeaveButton = false,
		pageTitle = self.props.inspectedDisplayName,
		titleChildren = self:getAvatarHeadshot(style),
	}, {
		ScrollingFrame = Roact.createElement("ScrollingFrame", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			ScrollBarThickness = 0,
			ScrollingDirection = Enum.ScrollingDirection.Y,
			CanvasSize = UDim2.fromOffset(0, canvasHeight),
			Selectable = false,
		}, assetCards),
		FocusHandler = Roact.createElement(FocusHandler, {
			isFocused = self.props.canGamepadCaptureFocus,

			didFocus = function(previousSelection)
				GuiService.SelectedCoreObject = self.state.previousFocus or self.firstItemCard:getValue()
			end,
		}),
	})
end

function InspectAndBuyPage:render()
	return withStyle(function(style)
		return withLocalization({
		})(function(localized)
			return withSelectionCursorProvider(function(getSelectionCursor)
				return self:renderWithProviders(style, localized, getSelectionCursor)
			end)
		end)
	end)
end

function InspectAndBuyPage:onPlayerInspected()
	-- When opening the menu, update the storeId so calls to
	-- perform fetch aren't colliding
	self.props.updateStoreId()

	local playerId = self.props.inspectedUserId
	SendInspectAndBuyAnalytics("inspectUser", playerId)
	if playerId then
		self.props.getCharacterModelFromUserId(playerId, false, function(character)
			if self and self.isMounted then
				self.character = character
				local humanoidDescription = self.character.Humanoid.HumanoidDescription

				if humanoidDescription then
					self.props.getAssetsFromHumanoidDescription(humanoidDescription)
				end
			end
		end)
	end

	-- Update the owned status of an asset if a user purchases it.
	local marketplaceServicePurchaseFinishedListener =
		MarketplaceService.PromptPurchaseFinished:Connect(self.onPromptPurchaseFinished)
	table.insert(self.connections, marketplaceServicePurchaseFinishedListener)

	-- Update the owned status of a bundle if a user purchases it.
	local marketplaceServiceBundlePurchaseFinishedListener =
		MarketplaceService.PromptBundlePurchaseFinished:Connect(self.onPromptPurchaseFinished)
	table.insert(self.connections, marketplaceServiceBundlePurchaseFinishedListener)
end

function InspectAndBuyPage:onPageLeave()
	self.props.resetInspectedInfo()
	for _, connection in pairs(self.connections) do
		connection:disconnect()
		connection = nil
	end
end

function InspectAndBuyPage:didUpdate(prevProps, prevState)
	if self.props.currentPage ~= prevProps.currentPage then
		if self.props.currentPage == Constants.InspectAndBuyPageKey and
			prevProps.currentPage ~= Constants.InspectAndBuyAssetDetailsPageKey then
			-- Entering Page (not from the Asset Details Page)
			if self.props.inspectedUserId then
				self:onPlayerInspected()
			end
		elseif (prevProps.currentPage == Constants.InspectAndBuyPageKey and
			self.props.currentPage ~= Constants.InspectAndBuyAssetDetailsPageKey) or
			(not self.props.isMenuOpen and prevProps.isMenuOpen) then
			-- Leaving Page (not to the Asset Details Page)
			self:onPageLeave()
		end
	end

	if not self.didInitFocus and self.firstItemCard:getValue() and self.props.canGamepadCaptureFocus then
		self.didInitFocus = true
		GuiService.SelectedCoreObject = self.firstItemCard:getValue()
	end
end

function InspectAndBuyPage:didMount()
	self.isMounted = true
	task.spawn(function()
		local subjectToChinaPolicies = PolicyService:IsSubjectToChinaPolicies()
		self.props.setIsSubjectToChinaPolicies(subjectToChinaPolicies)
	end)
end

function InspectAndBuyPage:willUnmount()
	self:onPageLeave()
	self.isMounted = false
end

return RoactRodux.connect(function(state, props)
	return {
		inspectedDisplayName = state.inspectAndBuy.DisplayName,
		inspectedUserId = state.inspectAndBuy.UserId,
		assets = state.inspectAndBuy.Assets,
		itemBeingPurchased = state.inspectAndBuy.ItemBeingPurchased,
		currentPage = state.menuPage,
		isMenuOpen = state.isMenuOpen,
		canGamepadCaptureFocus = getCanGamepadCaptureFocus(state, Constants.InspectAndBuyPageKey),
	}
end, function(dispatch: (any) -> any)
	return {
		getCharacterModelFromUserId = function(userId, isLocalPlayer, callback)
			dispatch(GetCharacterModelFromUserId(userId, isLocalPlayer, callback))
		end,
		getAssetsFromHumanoidDescription = function(humanoidDescription)
			dispatch(GetAssetsFromHumanoidDescription(humanoidDescription))
		end,
		updateStoreId = function()
			dispatch(UpdateStoreId())
		end,
		setIsSubjectToChinaPolicies = function(subjectToChinaPolicies)
			dispatch(SetIsSubjectToChinaPolicies(subjectToChinaPolicies))
		end,
		setItemBeingPurchased = function(itemId, itemType)
			dispatch(SetItemBeingPurchased(itemId, itemType))
		end,
		updateOwnedStatus = function(itemId, itemType)
			dispatch(UpdateOwnedStatus(itemId, itemType))
		end,
		resetInspectedInfo = function()
			dispatch(ResetInspectedInfo())
		end,
	}
end)(InspectAndBuyPage)
