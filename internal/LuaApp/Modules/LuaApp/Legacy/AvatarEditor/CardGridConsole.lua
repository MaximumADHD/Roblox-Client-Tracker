local GuiService = game:GetService("GuiService")
local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)

local Categories = require(Modules.LuaApp.Legacy.AvatarEditor.Categories)
local AssetInfo = require(Modules.LuaApp.Legacy.AvatarEditor.AssetInfo)
local Urls = require(Modules.LuaApp.Legacy.AvatarEditor.Urls)
local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfoConsole)
local Utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)
local TableUtilities = require(Modules.LuaApp.TableUtilities)

local EquipAsset = require(Modules.LuaApp.Actions.EquipAsset)
local UnequipAsset = require(Modules.LuaApp.Actions.UnequipAsset)

--Constants
local BUTTONS_PER_ROW = LayoutInfo.ButtonsPerRow
local BUTTON_ROWS_PER_PAGE = LayoutInfo.ButtonRowsPerPage
local GRID_PADDING = LayoutInfo.GridPadding
local BUTTONS_SIZE = LayoutInfo.ButtonSize
local SELECTOR_BOTTOM_MIN_DISTANCE = LayoutInfo.SelectorBottomMinDistance

local function createCardGrid(scrollingFrame, getAssetList, characterManager)
	local this = {}

	local recycledAssetCardStack = {}
	local assetCardConnections = {}
	local activeAssetCards = {}
	local activeAssetCardsByIndex = {}
	local assetCardVersionKeys = {}
	local lastSuccessfulAssetCardUpdateAtY = 0
	local currentAssetRegion = {}
	local selectedAssetCardIndex = 0
	local storeChangedCn = nil

	local itemCardSelector = Utilities.create'ImageLabel'
	{
		Name = 'CardSelector';
		Image = LayoutInfo.ItemCardSelectorImage;
		Position = UDim2.new(0, -7, 0, -7);
		Size = UDim2.new(1, 14, 1, 14);
		BackgroundTransparency = 1;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(51, 51, 103, 103);
	}

	local function recycleAssetCard(card)
		if not card then return end

		card.Parent = nil

		assetCardVersionKeys[card] = assetCardVersionKeys[card] + 1

		if activeAssetCards[card] then
			activeAssetCardsByIndex[activeAssetCards[card]] = nil
			activeAssetCards[card] = nil
		end

		if assetCardConnections[card] then
			for _, con in next, assetCardConnections[card] do
				con:disconnect()
			end
			assetCardConnections[card] = nil
		end

		table.insert(recycledAssetCardStack, card)
	end

	function this:invalidateAllAssetCards()
		for _, card in pairs(activeAssetCardsByIndex) do
			if typeof(card) == 'Instance' then
				recycleAssetCard(card)
			end
		end
		scrollingFrame:ClearAllChildren()
		lastSuccessfulAssetCardUpdateAtY = 0
		currentAssetRegion = {0, 0}
		selectedAssetCardIndex = 0
	end

	local function popRecycledAssetCard()
		local n = #recycledAssetCardStack

		if n > 0 then
			local card = recycledAssetCardStack[n]
			recycledAssetCardStack[n] = nil
			return card
		end
	end

	-- Check if scrollingFrame need to scroll up/down
	local function checkScroll(card)
		if activeAssetCards[card] then
			local bottonYBottom = (card.Position + card.Size).Y.Offset
			local scrollingFrameYBottom = scrollingFrame.AbsoluteWindowSize.Y + scrollingFrame.CanvasPosition.Y
			local bottomDistance = scrollingFrameYBottom - bottonYBottom
			local topDistance = card.Position.Y.Offset - scrollingFrame.CanvasPosition.Y

			local newCanvasPositionY = scrollingFrame.CanvasPosition.Y
			if bottomDistance < SELECTOR_BOTTOM_MIN_DISTANCE then
				newCanvasPositionY =  newCanvasPositionY + SELECTOR_BOTTOM_MIN_DISTANCE - bottomDistance
			elseif topDistance < 0 then
				newCanvasPositionY = newCanvasPositionY + topDistance - GRID_PADDING - 20
			end

			newCanvasPositionY =
				math.max(0,
					math.min(
						newCanvasPositionY,
						scrollingFrame.CanvasSize.Y.Offset - scrollingFrame.AbsoluteWindowSize.Y
					)
				)

			scrollingFrame.CanvasPosition = Vector2.new(scrollingFrame.CanvasPosition.X, newCanvasPositionY)
		end
	end

	local function makeNewAssetCard(cardName, image)
		local assetButton = Utilities.create'ImageButton'
		{
			AutoButtonColor = false;
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BorderColor3 = Color3.fromRGB(208, 208, 208);
			BackgroundTransparency = 1;
			ZIndex = LayoutInfo.BasicLayer;
			SelectionImageObject = itemCardSelector;
		}

		Utilities.create'ImageLabel'
		{
			Name = 'AssetButtonBackground';
			BackgroundTransparency = 1;
			ScaleType = Enum.ScaleType.Slice;
			ZIndex = LayoutInfo.BasicLayer;
			Image = "";
			SliceCenter = Rect.new(16, 16, 17, 17);
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0, 0, 0, 0);
			Parent = assetButton;
		}

		Utilities.create'ImageLabel'
		{
			Name = 'AssetItemImage';
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Size = UDim2.new(1, -10, 1, -10);
			Position = UDim2.new(0, 5, 0, 5);
			ZIndex = LayoutInfo.AssetImageLayer;
			Parent = assetButton;
		}

		Utilities.create'ImageLabel'
		{
			Name = 'AssetBorderMask';
			Position = UDim2.new(0, 0, 0, 0);
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Image = "";
			ZIndex = LayoutInfo.BorderMaskLayer;
			Parent = assetButton;
		}

		return assetButton
	end

	function this:makeAssetCard(i, cardName, image, clickFunction, isEquipped, unAvailable, YOffset)
		local card = popRecycledAssetCard() or makeNewAssetCard(cardName, image)
		YOffset = YOffset or 0

		local column = ((i-1) % BUTTONS_PER_ROW) + 1
		local row = math.ceil(i / BUTTONS_PER_ROW)
		card.Name = 'AssetButton'..cardName
		card.Size = UDim2.new(0, BUTTONS_SIZE, 0, BUTTONS_SIZE)
		card.Position = UDim2.new(
			0,
			(column-1) * (BUTTONS_SIZE + GRID_PADDING),
			0,
			(row - 1) * (BUTTONS_SIZE + GRID_PADDING) + YOffset
		)

		assetCardConnections[card] = {}
		activeAssetCardsByIndex[i] = card
		activeAssetCards[card] = i

		local myVersionKey = (assetCardVersionKeys[card] or 0) + 1
		assetCardVersionKeys[card] = myVersionKey

		table.insert(assetCardConnections[card], card.SelectionGained:connect(function()
			checkScroll(card)
			selectedAssetCardIndex = i
		end))

		if clickFunction then
			table.insert(assetCardConnections[card], card.MouseButton1Click:connect(clickFunction))
		end

		if type(image) == 'function' then
			Utilities.fastSpawn(function()
				local image = image()
				if myVersionKey == assetCardVersionKeys[card] then
					card.AssetItemImage.Image = image
				end
			end)
		else
			card.AssetItemImage.Image = image
		end

		if unAvailable then
			card.AssetButtonBackground.Image = LayoutInfo.ItemUnavailableBackgroundImage
			card.AssetBorderMask.Image = LayoutInfo.ItemMaskNotOwnedImage
		else
			card.AssetButtonBackground.Image = LayoutInfo.ItemAvailableBackgroundImage
			card.AssetBorderMask.Image = isEquipped and
				LayoutInfo.WearingIndicatorImage or
				LayoutInfo.ItemMaskImage
		end

		return card
	end

	local function renderAssetCardByIndex(i)
		local assetList = getAssetList()
		local assetId = assetList[i]
		local cardName, cardImage, clickFunction, isEquipped

		local state = AppState.Store:GetState()
		local categoryIndex = state.Category.CategoryIndex or 1
		local tabInfo = state.Category.TabsInfo[categoryIndex]
		local tabIndex = tabInfo and tabInfo.TabIndex or 1
		local currentPage = Categories[categoryIndex].pages[tabIndex]

		if currentPage.specialPageType == 'Outfits' or currentPage.specialPageType == 'Recent Outfits' then
			cardName = 'Outfit'..tostring(assetId)

			cardImage = function()
				return Urls.outfitImageUrlPrefix..tostring(assetId)
					.."&width=100&height=100&format=png"
			end

			clickFunction = function()
				characterManager.addToRecentAssetList('outfits', assetId)
				characterManager.wearOutfit(assetId)
			end
		else
			cardName = tostring(assetId)
			cardImage = Urls.assetImageUrl..tostring(assetId)
			isEquipped = characterManager.findIfEquipped(assetId)

			local wearFunction = function()
				AppState.Store:Dispatch(EquipAsset(AssetInfo.getAssetType(assetId), assetId))
			end

			local takeOffFunction = function()
				AppState.Store:Dispatch(UnequipAsset(AssetInfo.getAssetType(assetId), assetId))
			end

			local wearOrTakeOffFunction = function()
				if characterManager.findIfEquipped(assetId) then
					takeOffFunction()
				else
					wearFunction()
				end
			end

			clickFunction = function()
				wearOrTakeOffFunction()
			end
		end

		local card = this:makeAssetCard(i, cardName, cardImage, clickFunction, isEquipped)
		card.Parent = scrollingFrame
	end

	local function renderAssetCardRegion(a, b)
		for i = a, b do
			renderAssetCardByIndex(i)
		end
	end

	local function getVisibleAssetRegion()
		local assetList = getAssetList()
		return {1, #assetList}
	end

	local function updateVisibleAssetCards()
		local visibleRegion = getVisibleAssetRegion()

		if visibleRegion[1] == currentAssetRegion[1] and visibleRegion[2] == currentAssetRegion[2] then
			return
		end

		if currentAssetRegion[1] then
			renderAssetCardRegion(currentAssetRegion[2]+1, visibleRegion[2])
		else
			renderAssetCardRegion(1, visibleRegion[2])
			currentAssetRegion[1] = 1
		end

		currentAssetRegion[2] = visibleRegion[2]
	end

	function this:freshUpdateVisibleAssetCards()
		currentAssetRegion = {}
		updateVisibleAssetCards()
	end

	function this:tryUpdateVisibleAssetCards()
		local y = scrollingFrame.CanvasPosition.y

		if math.abs(y - lastSuccessfulAssetCardUpdateAtY) > 0 then --scrollingFrame.AbsoluteSize.x/4 then
			updateVisibleAssetCards()

			lastSuccessfulAssetCardUpdateAtY = y
		end
	end

	local function equipAsset(assetId)
		-- Create selection frames
		local assetButtonName = 'AssetButton'..tostring(assetId)
		for _, assetButton in pairs(scrollingFrame:GetChildren()) do
			if assetButton.Name == assetButtonName then
				assetButton.AssetBorderMask.Image = LayoutInfo.WearingIndicatorImage
			end
		end
	end

	local function unequipAsset(assetId)
		--Remove selectionBoxes
		local assetButtonName = 'AssetButton'..tostring(assetId)
		for _,assetButton in pairs(scrollingFrame:GetChildren()) do
			if assetButton.Name == assetButtonName then
				assetButton.AssetBorderMask.Image = LayoutInfo.ItemMaskImage
			end
		end
	end

	local function stateChanged(newState, oldState)
		if newState.Character.Assets ~= oldState.Character.Assets then
			--Remove assets which only exist in oldState
			for assetType, assetList in pairs(oldState.Character.Assets) do
				if not newState.Character.Assets[assetType] and assetList then
					for _, assetId in pairs(assetList) do
						unequipAsset(assetId)
					end
				end
			end

			for assetType, _ in pairs(newState.Character.Assets) do
				if newState.Character.Assets[assetType] ~= oldState.Character.Assets[assetType] then
					local addTheseAssets =
						TableUtilities.ListDifference(
							newState.Character.Assets[assetType] or {},
							oldState.Character.Assets[assetType] or {})

					local removeTheseAssets = TableUtilities.ListDifference(
						oldState.Character.Assets[assetType] or {},
						newState.Character.Assets[assetType] or {})

					for _, assetId in pairs(addTheseAssets) do
						equipAsset(assetId)
					end

					for _, assetId in pairs(removeTheseAssets) do
						unequipAsset(assetId)
					end
				end
			end
		end
	end

	function this:getFirstCard()
		if activeAssetCardsByIndex[1] then
			return activeAssetCardsByIndex[1]
		end

		return nil
	end

	function this:SelectNextPage()
		if selectedAssetCardIndex > 0 then
			local nextIndex = selectedAssetCardIndex + BUTTONS_PER_ROW * BUTTON_ROWS_PER_PAGE
			if nextIndex > #activeAssetCardsByIndex then
				local rows = math.floor(#activeAssetCardsByIndex / BUTTONS_PER_ROW)
				local remainderColumns = #activeAssetCardsByIndex % BUTTONS_PER_ROW
				local selectedColumn = selectedAssetCardIndex % BUTTONS_PER_ROW
				rows = (selectedColumn > remainderColumns) and (rows - 1) or rows
				nextIndex = rows * BUTTONS_PER_ROW + selectedColumn
			end
			GuiService.SelectedCoreObject = activeAssetCardsByIndex[nextIndex]
		end
	end

	function this:SelectPreviousPage()
		if selectedAssetCardIndex > 0 then
			local prevIndex = selectedAssetCardIndex - BUTTONS_PER_ROW * BUTTON_ROWS_PER_PAGE
			if prevIndex < 1 then
				local selectedColumn = (selectedAssetCardIndex - 1) % BUTTONS_PER_ROW + 1
				prevIndex = selectedColumn
			end
			GuiService.SelectedCoreObject = activeAssetCardsByIndex[prevIndex]
		end
	end

	function this:Focus()
		storeChangedCn = AppState.Store.Changed:Connect(stateChanged)
	end

	function this:RemoveFocus()
		storeChangedCn = Utilities.disconnectEvent(storeChangedCn)
	end

	return this
end

return createCardGrid
