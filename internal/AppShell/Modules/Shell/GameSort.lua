--[[
			// GameSort.lua
			// Creates a grid layout for a game sort
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local WidgetModules = ShellModules:FindFirstChild("Widgets")
local GuiService = game:GetService('GuiService')

local Utility = require(ShellModules:FindFirstChild('Utility'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local PopupText = require(ShellModules:FindFirstChild('PopupText'))
local ThumbnailLoader = require(ShellModules:FindFirstChild('ThumbnailLoader'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Alerts = require(ShellModules:FindFirstChild('Alerts'))
local ErrorOverlay = require(ShellModules:FindFirstChild('ErrorOverlay'))
local LockedGameSortView = require(ShellModules:FindFirstChild('LockedGameSortView'))
local MoreButtonModule = require(WidgetModules:FindFirstChild("MoreButton"))
local GameData = require(ShellModules:FindFirstChild('GameData'))
local SortsData = require(ShellModules:FindFirstChild('SortsData'))

local GameSort = {}

local function createSortTitle(name)
	local sortTitleLabel = Utility.Create'TextLabel'
	{
		Name = "SortTitle";
		Size = UDim2.new(1, 0, 0, 36);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.SubHeaderSize;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = name;
	}

	return sortTitleLabel
end

local function createMoreButton(margin, parent)
	local moreButton, overrideSelection = MoreButtonModule()

	-- we override the selection on moreButton to fit around the moreImage
	overrideSelection = Utility.Create'ImageLabel'
	{
		Name = "OverrideSelection";
		Image = 'rbxasset://textures/ui/SelectionBox.png';
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(19,19,43,43);
		BackgroundTransparency = 1;
	}

	moreButton = Utility.Create'ImageButton'
	{
		Name = "MoreButton";
		Size = UDim2.new(1, 0, 0, 50);
		Position = UDim2.new(0, 0, 1, margin);
		BackgroundTransparency = 1;
		ZIndex = 2;
		Visible = false;
		SelectionImageObject = overrideSelection;
		Parent = parent;
		SoundManager:CreateSound('MoveSelection');
	}
	local moreImage = Utility.Create'ImageLabel'
	{
		Name = "MoreImage";
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		ZIndex = 2;
		Parent = moreButton;
	}

	local function updateMoreImage(isSelected)
		moreImage.Image = isSelected and 'rbxasset://textures/ui/Shell/Buttons/MoreButtonSelected@1080.png'
										or  'rbxasset://textures/ui/Shell/Buttons/MoreButton@1080.png'
		moreImage.Size = UDim2.new(0,108,0,50);

		moreImage.Position = UDim2.new(1, -moreImage.Size.X.Offset, 0, 0)

		overrideSelection.Size = UDim2.new(0, moreImage.Size.X.Offset + 14, 0, moreImage.Size.Y.Offset + 14)
		overrideSelection.Position = UDim2.new(1, -overrideSelection.Size.X.Offset + 7, 0, -7)
	end

	moreButton.SelectionGained:connect(function()
		updateMoreImage(true)
	end)
	moreButton.SelectionLost:connect(function()
		updateMoreImage(false)
	end)

	updateMoreImage(GuiService.SelectedCoreObject == moreButton)

	return moreButton
end

local function createImageButton(size, position)
	return Utility.Create'ImageButton'
		{
			Name = "GameThumbButton";
			Size = size;
			Position = position;
			BackgroundTransparency = 0;
			BorderSizePixel = 0;
			BackgroundColor3 = GlobalSettings.ModalBackgroundColor;
			SoundManager:CreateSound('MoveSelection');
		}
end

local function createImageGrid(rows, columns, size, spacing, images)
	for i = 1, rows do
		for j = 1, columns do
			local image = createImageButton(size,
				UDim2.new(0, (j - 1) * size.X.Offset + (j - 1) * spacing.x, 0, (i - 1) * size.Y.Offset + (i - 1) * spacing.y))
			table.insert(images, image)
			image.Name = tostring(#images)
		end
	end
end

local function createPopupText(images)
	local popupText = {}
	for i = 1, #images do
		local popup = PopupText(images[i], "")
		table.insert(popupText, popup)
	end

	return popupText
end

local function setImages(imageIds, images)
	local size = ThumbnailLoader.Sizes.Medium
	local assetType = ThumbnailLoader.AssetType.SquareIcon
	for i = 1, #images do
		if imageIds[i] then
			local thumbLoader = ThumbnailLoader:Create(images[i], imageIds[i], size, assetType)
			spawn(function()
				if not thumbLoader:LoadAsync(true, false) then
					-- TODO
				end
			end)
		else
			images[i].BackgroundColor3 = GlobalSettings.GreyButtonColor
			images[i].Image = ""
			local image = Utility.Create'ImageLabel'
			{
				Name = "NoGameImage";
				Size = UDim2.new(0, 102, 0, 102);
				BackgroundTransparency = 1;
				Image = 'rbxasset://textures/ui/Shell/Icons/GamePlusIcon.png';
				ZIndex = images[i].ZIndex;
				Parent = images[i];
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.new(0.5, 0, 0.5, 0);
			}
		end
	end
end

local function createBaseGrid(size, images, imageContainerSizeY)
	local this = {}

	local moreButtonSpacing = 12
	local isViewLocked = false
	local shouldShowMoreButton = false

	this.Container = Utility.Create'Frame'
	{
		Name = "SortContainer";
		Size = size;
		BackgroundTransparency = 1;
	}
	local titleLabel = createSortTitle("")
	titleLabel.Parent = this.Container
	local moreButton = createMoreButton(moreButtonSpacing, this.Container)
	local popupText = createPopupText(images)

	-- set up images
	local imageContainer = Utility.Create'Frame'
	{
		Name = "ImageContainer";
		Size = UDim2.new(1, 0, 0, imageContainerSizeY);
		Position = UDim2.new(0, 0, 0, 36);
		BackgroundTransparency = 1;
		Parent = this.Container;
	}
	for i = 1, #images do
		images[i].Parent = imageContainer
	end

	--[[ Begin UGC Locked UI ]]--
	local lockedView = LockedGameSortView()

	local function lockIcons()
		for i = 1, #images do
			lockedView:CreateLockedIconOverlay(images[i])
			images[i].Selectable = false
		end
	end
	local function onLockedStateChanged()
		if isViewLocked == true then
			lockedView:SetParent(imageContainer)
			lockIcons()
			moreButton.Visible = false
		else
			lockedView:SetParent(nil)
			lockedView:RemoveLockedIconOverlays()
			moreButton.Visible = shouldShowMoreButton
		end
	end

	function this:SetLockState(newState)
		isViewLocked = newState
		onLockedStateChanged()
	end

	--[[ End UGC Locked UI ]]--

	function this:SetParent(newParent)
		self.Container.Parent = newParent
	end
	function this:GetContainer()
		return self.Container
	end
	function this:SetPosition(newPosition)
		self.Container.Position = newPosition
	end
	function this:SetTitle(newTitle)
		titleLabel.Text = newTitle
	end
	function this:SetVisible(value)
		self.Container.Visible = value
	end
	function this:SetImages(imageIds)
		setImages(imageIds, images)
	end

	function this:SetPlaceIds(placeIds, sortName, gameSort)
		if placeIds then
			for i = 1, #images do
				local placeId = placeIds[i]
				local size = ThumbnailLoader.Sizes.Medium
				local assetType = ThumbnailLoader.AssetType.SquareIcon
				if placeId then
					local gameData = GameData:GetGameData(placeId)
					if gameData then
						if images[i] then
							local thumbLoader = ThumbnailLoader:Create(images[i], gameData.IconId, size, assetType)
							spawn(function()
								if not thumbLoader:LoadAsync(true, false) then
									-- TODO
								end
							end)

							images[i].MouseButton1Click:connect(function()
								EventHub:dispatchEvent(EventHub.Notifications["OpenGameDetail"], placeId)
							end)
							GameData:AddRelatedGuiObject(placeId, images[i])
						end

						if popupText[i] then
							popupText[i]:SetText(gameData.Name)
						end
					end
				else  --If don't have enough games in the sort
					images[i].BackgroundColor3 = GlobalSettings.GreyButtonColor
					images[i].Image = ""
					local image = Utility.Create'ImageLabel'
					{
						Name = "NoGameImage";
						Size = UDim2.new(0, 102, 0, 102);
						BackgroundTransparency = 1;
						Image = 'rbxasset://textures/ui/Shell/Icons/GamePlusIcon.png';
						ZIndex = images[i].ZIndex;
						Parent = images[i];
						AnchorPoint = Vector2.new(0.5, 0.5);
						Position = UDim2.new(0.5, 0, 0.5, 0);
					}

					images[i].MouseButton1Click:connect(function()
						-- If there are not enough games in my games section then let them know how to make more!
						if gameSort == SortsData:GetUserPlaces() then
							ScreenManager:OpenScreen(ErrorOverlay(Alerts.PlayMyPlaceMoreGames), false)
						else
							-- if there is no game to load in this slot, we're going to redirect to the featured sort if the user presses this button
							EventHub:dispatchEvent(EventHub.Notifications["OpenGameGenre"], Strings:LocalizedString('FeaturedTitle'),
								SortsData:GetSort(SortsData.DefaultSortId.Featured))
						end
					end)

					if popupText[i] then
						popupText[i]:SetText(Strings:LocalizedString("MoreGamesPhrase"))
					end
				end
			end

			--If we have more games than the showing ones
			shouldShowMoreButton = #placeIds > #images
			moreButton.Visible = shouldShowMoreButton
			moreButton.MouseButton1Click:connect(function()
				EventHub:dispatchEvent(EventHub.Notifications["OpenGameGenre"], sortName, gameSort)
			end)
			EventHub:addEventListener(EventHub.Notifications["UnlockedUGC"], "unlockView",
			function()
				this:SetLockState(false)
			end)
		end
	end

	function this:GetDefaultSelection()
		local default = nil
		if isViewLocked then
			default = lockedView:GetSelection()
		else
			if #images > 0 then
				default = images[1]
			end
		end

		return default
	end
	function this:Contains(guiObject)
		for i = 1, #images do
			if images[i] == guiObject then
				return true
			end
		end
		return false
	end
	function this:Destroy()
		EventHub:removeEventListener(EventHub.Notifications["UnlockedUGC"], "unlockView")
		self.Container:Destroy()
	end

	return this
end

function GameSort:CreateMainGridView(size, spacing, lgImageSize, smImageSize)
	local images = {}
	local imageContainerSizeY = lgImageSize.Y.Offset + spacing.y + smImageSize.Y.Offset

	local mainImage = createImageButton(lgImageSize, UDim2.new(0, 0, 0, 0))
	table.insert(images, mainImage)
	mainImage.Name = tostring(#images)

	for i = 1, 2 do
		local smImage = createImageButton(smImageSize,
			UDim2.new(0, (i - 1) * smImageSize.X.Offset + (i - 1) * spacing.x, 1, -smImageSize.Y.Offset))
		table.insert(images, smImage)
		smImage.Name = tostring(#images)
	end

	local this = createBaseGrid(size, images, imageContainerSizeY)

	return this
end

-- 2x2 grid for the games page
function GameSort:CreateGridView(size, imageSize, spacing, rows, columns)
	local images = {}
	local imageContainerSizeY = (imageSize.Y.Offset * columns) + ((columns - 1) * spacing.y)
	createImageGrid(rows, columns, imageSize, spacing, images)

	local this = createBaseGrid(size, images, imageContainerSizeY)

	return this
end

return GameSort
