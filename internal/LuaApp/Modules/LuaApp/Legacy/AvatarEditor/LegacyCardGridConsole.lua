local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)
local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfoConsole)
local Utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)
local TableUtilities = require(Modules.LuaApp.TableUtilities)

--Constants
local BUTTONS_PER_ROW = LayoutInfo.ButtonsPerRow
local GRID_PADDING = LayoutInfo.GridPadding
local BUTTONS_SIZE = LayoutInfo.ButtonSize
local SELECTOR_BOTTOM_MIN_DISTANCE = LayoutInfo.SelectorBottomMinDistance

--Mutables
local scrollingFrame = nil
local getAssetList = function() return {} end
local recycledAssetCardStack = {}
local assetCardConnections = {}
local activeAssetCards = {}
local activeAssetCardsByIndex = {}
local assetCardVersionKeys = {}
local lastSuccessfulAssetCardUpdateAtY = 0
local renderAssetCard = function() end
local currentAssetRegion = {}
local storeChangedCn = nil

local this = {}

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

local function popRecycledAssetCard()
	local n = #recycledAssetCardStack

	if n > 0 then
		local card = recycledAssetCardStack[n]
		recycledAssetCardStack[n] = nil
		return card
	end
end


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

	assetButton.SelectionGained:connect(function()
		checkScroll(assetButton)
	end)
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

function this:getFirstCard()
	if activeAssetCardsByIndex[1] then
		return activeAssetCardsByIndex[1]
	end

	return nil
end


local function getVisibleAssetRegion()
	local assetList = getAssetList()
	return {1, #assetList}
end


local function renderAssetCardRegion(a, b)
	for i = a, b do
		renderAssetCard(i)
	end
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


function this:setRenderAssetCardCallback(callback)
	renderAssetCard = callback
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

return function(inScrollingFrame, inGetAssetList)
	--Reset all mutables when recreate the new card grid
	scrollingFrame = nil
	getAssetList = function() return {} end
	recycledAssetCardStack = {}
	assetCardConnections = {}
	activeAssetCards = {}
	activeAssetCardsByIndex = {}
	assetCardVersionKeys = {}
	lastSuccessfulAssetCardUpdateAtY = 0
	renderAssetCard = function() end
	currentAssetRegion = {}

	--Set up
	scrollingFrame = inScrollingFrame
	getAssetList = inGetAssetList

	function this:Focus()
		storeChangedCn = AppState.Store.Changed:Connect(stateChanged)
	end

	function this:RemoveFocus()
		storeChangedCn = Utilities.disconnectEvent(storeChangedCn)
	end

	return this
end
