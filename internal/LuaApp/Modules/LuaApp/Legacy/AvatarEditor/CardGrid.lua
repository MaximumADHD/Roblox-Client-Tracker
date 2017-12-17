local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)

local spriteManager = require(Modules.LuaApp.Legacy.AvatarEditor.SpriteSheetManager)
local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfo)
local utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)
local TableUtilities = require(Modules.LuaApp.TableUtilities)

--Constants
local BUTTONS_PER_ROW = LayoutInfo.ButtonsPerRow
local GRID_PADDING = LayoutInfo.GridPadding

--Mutables
local equippedFrameTemplate = nil
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

local this = {}


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

	if card:FindFirstChild'EquippedFrame' then
		card.EquippedFrame:Destroy()
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



if LayoutInfo.isLandscape then
	local leadingOffset = 11

	function this:getButtonSize()
		local availableWidth = scrollingFrame.AbsoluteSize.X + 9
		local buttonWidthBudget = availableWidth/BUTTONS_PER_ROW
		return buttonWidthBudget - GRID_PADDING - 5
	end

	function this:getAssetCardY(i)
		local row = math.floor((i-1)/BUTTONS_PER_ROW)+1
		local rowHeight = this:getButtonSize() + GRID_PADDING
		return (row-1)*rowHeight + leadingOffset
	end
else
	local leadingOffset = 30

	function this:getButtonSize()
		local availableWidth = scrollingFrame.AbsoluteSize.X + 0
		local buttonWidthBudget = availableWidth/BUTTONS_PER_ROW
		return buttonWidthBudget - GRID_PADDING
	end

	function this:getAssetCardY(i)
		local row = math.floor((i-1)/BUTTONS_PER_ROW)+1
		local rowHeight = this:getButtonSize() + GRID_PADDING
		return (row-1)*rowHeight + leadingOffset
	end
end


local function makeNewAssetCard(cardName, image)
	local assetButton = Instance.new('ImageButton')

	assetButton.AutoButtonColor = false
	assetButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
	assetButton.BorderColor3 = Color3.fromRGB(208,208,208)
	assetButton.BackgroundTransparency = 1
	assetButton.ZIndex = scrollingFrame.ZIndex

	local assetButtonBackgroud = Instance.new('ImageLabel', assetButton)
	assetButtonBackgroud.Name = 'AssetButtonBackground'
	assetButtonBackgroud.BackgroundTransparency = 1
	assetButtonBackgroud.ScaleType = Enum.ScaleType.Slice
	assetButtonBackgroud.SliceCenter = Rect.new(6,6,7,7)
	assetButtonBackgroud.ZIndex = assetButton.ZIndex
	assetButtonBackgroud.Size = UDim2.new(1, 6, 1, 6)
	assetButtonBackgroud.Position = UDim2.new(0, -3, 0, -3)
	spriteManager.equip(assetButtonBackgroud, "gr-card corner", true)

	local assetImageLabel = Instance.new('ImageLabel')
	assetImageLabel.BackgroundTransparency = 1
	assetImageLabel.BorderSizePixel = 0
	if LayoutInfo.isLandscape then
		assetImageLabel.Size = UDim2.new(1, -6, 1, -6)
		assetImageLabel.Position = UDim2.new(0,3,0,3)
	else
		assetImageLabel.Size = UDim2.new(1,-8,1,-8)
		assetImageLabel.Position = UDim2.new(0,4,0,4)
	end
	assetImageLabel.ZIndex = assetButton.ZIndex + 1
	assetImageLabel.Parent = assetButton
	return assetButton
end

function this:makeAssetCard(i, cardName, image, clickFunction, longPressFunction, isSelected, positionOverride)
	local card = popRecycledAssetCard() or makeNewAssetCard(cardName, image)

	local column = ((i-1)%BUTTONS_PER_ROW)+1
	local buttonSize = this:getButtonSize()

	card.Name = 'AssetButton'..cardName
	card.Size = UDim2.new(0, buttonSize, 0, buttonSize)
	card.Position = positionOverride or UDim2.new(
		0,
		GRID_PADDING + (column-1) * (buttonSize+GRID_PADDING) -3,
		0,
		this:getAssetCardY(i)
	)

	assetCardConnections[card] = {}
	activeAssetCardsByIndex[i] = card
	activeAssetCards[card] = i

	local myVersionKey = (assetCardVersionKeys[card] or 0) + 1
	assetCardVersionKeys[card] = myVersionKey

	if clickFunction then
		table.insert(assetCardConnections[card], card.MouseButton1Click:connect(clickFunction))
	end
	if longPressFunction then
		table.insert(assetCardConnections[card], card.TouchLongPress:connect(longPressFunction))
	end
	if isSelected then
		local equippedFrame = equippedFrameTemplate:clone()
		equippedFrame.Name = 'EquippedFrame'
		equippedFrame.ZIndex = card.ZIndex + 2
		equippedFrame.Visible = true
		equippedFrame.Parent = card
	end

	if type(image) == 'function' then
		utilities.fastSpawn(function()
			local image = image()
			if myVersionKey == assetCardVersionKeys[card] then
				card.ImageLabel.Image = image
			end
		end)
	else
		card.ImageLabel.Image = image
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
			local equippedFrame = assetButton:FindFirstChild('EquippedFrame')
			if not equippedFrame then
				local equippedFrame = equippedFrameTemplate:clone()
				equippedFrame.Name = 'EquippedFrame'
				equippedFrame.ZIndex = assetButton.ZIndex
				equippedFrame.Visible = true
				equippedFrame.Parent = assetButton
			end
		end
	end
end

local function unequipAsset(assetId)
	--Remove selectionBoxes
	local assetButtonName = 'AssetButton'..tostring(assetId)
	for _,assetButton in pairs(scrollingFrame:GetChildren()) do
		if assetButton.Name == assetButtonName then
			local equippedFrame = assetButton:FindFirstChild('EquippedFrame')
			if equippedFrame then
				equippedFrame:Destroy()
			end
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

return function(inEquippedFrameTemplate, inScrollingFrame, inGetAssetList)
	--Reset all mutables when recreate the new card grid
	equippedFrameTemplate = nil
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
	equippedFrameTemplate = inEquippedFrameTemplate
	scrollingFrame = inScrollingFrame
	getAssetList = inGetAssetList

	AppState.Store.Changed:Connect(stateChanged)

	return this
end
