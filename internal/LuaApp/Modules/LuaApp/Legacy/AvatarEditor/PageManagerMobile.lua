local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)

-------------- FFLAGS --------------
local AvatarEditorCatalogRecommended = Flags:GetFlag("AvatarEditorCatalogRecommended")
local AvatarEditorAnthroSliders = Flags:GetFlag("AvatarEditorAnthroSlidersUIOnly")

local AvatarEditorSliderUIAdjustments =
	Flags:GetFlag("AvatarEditorSliderUIAdjustments")

-------------- SERVICES --------------
local UserInputService = game:GetService('UserInputService')
local GuiService = game:GetService("GuiService")

------------ MODULES -------------------
local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)

local PageManagerBase = require(Modules.LuaApp.Legacy.AvatarEditor.PageManagerBase)
local SpriteManager = require(Modules.LuaApp.Legacy.AvatarEditor.SpriteSheetManager)
local CardGrid = require(Modules.LuaApp.Legacy.AvatarEditor.CardGrid)
local Utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)
local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfo)
local AssetInfo = require(Modules.LuaApp.Legacy.AvatarEditor.AssetInfo)
local Categories = require(Modules.LuaApp.Legacy.AvatarEditor.Categories)
local Strings = require(Modules.LuaApp.Legacy.AvatarEditor.LocalizedStrings)
local AssetTypeNames = require(Modules.LuaApp.Legacy.AvatarEditor.AssetTypeNames)
local Slider = require(Modules.LuaApp.Legacy.AvatarEditor.Slider)
local Urls = require(Modules.LuaApp.Legacy.AvatarEditor.Urls)

local EquipAsset = require(Modules.LuaApp.Actions.EquipAsset)
local UnequipAsset = require(Modules.LuaApp.Actions.UnequipAsset)
local SetBodyColors = require(Modules.LuaApp.Actions.SetBodyColors)

-------------- CONSTANTS --------------
local BUTTONS_PER_ROW = LayoutInfo.ButtonsPerRow
local SKIN_COLORS_PER_ROW = LayoutInfo.SkinColorsPerRow
local GRID_PADDING = LayoutInfo.GridPadding
local SKIN_COLOR_GRID_PADDING = LayoutInfo.SkinColorGridPadding
local EXTRA_VERTICAL_SHIFT = LayoutInfo.ExtraVerticalShift -- This is to make space for page title labels
local SKIN_COLOR_EXTRA_VERTICAL_SHIFT = LayoutInfo.SkinColorExtraVerticalShift

local ITEMS_PER_PAGE = 24 -- Number of items per http request for infinite scrolling
local ITEMS_PER_PAGE_NEW_URL = 25


return function(
	userId,
	equippedFrameTemplate,
	scrollingFrame,
	characterManager,
	longPressMenu)

local currentPage = nil
local loadingContent = false
local renderedRecommended = false
local recommendedDebounceCounter = 0
local renderedNoAssetsMessage = false
local currentLoadingContentCall = 0
local isAssetInList = {}
local nextCursor = ''
local cachedPages = {}
local assetList = {} -- all owned assets of a type

local cardGrid = CardGrid(
	equippedFrameTemplate,
	scrollingFrame,
	function()
		return assetList
	end
)

local this = PageManagerBase(characterManager)
local skinColorList = this:getSkinColorList()


local function loadPage(assetTypeId, cursor)

	if cachedPages[assetTypeId] then
		if cachedPages[assetTypeId][cursor] then
			return cachedPages[assetTypeId][cursor]
		end
	else
		cachedPages[assetTypeId] = {}
	end

	-- This prevents a previous recommended sort from loading over this page
	recommendedDebounceCounter = recommendedDebounceCounter + 1

	local pageInfo = {
		assets = {},
		reachedBottom = false,
		nextCursor = '',
		totalItems = nil
	}

	local typeStuff = Utilities.httpGet(
		"https://www."
		..Urls.domainUrl
		.."/users/inventory/list-json?assetTypeId="
		..assetTypeId
		.."&itemsPerPage="
		..ITEMS_PER_PAGE_NEW_URL
		.."&userId="
		..userId
		.."&cursor="
		..cursor)

	typeStuff = Utilities.decodeJSON(typeStuff)

	if typeStuff and typeStuff.IsValid and typeStuff.Data and typeStuff.Data.Items then
		pageInfo.nextCursor = typeStuff.Data.nextPageCursor

		if pageInfo.nextCursor == nil then
			pageInfo.reachedBottom = true
		end

		pageInfo.totalItems = tonumber(typeStuff.Data.TotalItems)

		for _, item in next, typeStuff.Data.Items do
			if (not item.UserItem or not item.UserItem.IsRentalExpired) then
				table.insert(pageInfo.assets, item.Item.AssetId)

				AssetInfo.setCachedAssetInfo(item.Item.AssetId, {
					AssetId = item.Item.AssetId,
					AssetTypeId = assetTypeId,
					Description = item.Item.Description,
					Name = item.Item.Name
				})
			end
		end
	end

	cachedPages[assetTypeId][cursor] = pageInfo

	return pageInfo
end

function this:renderAssetCardByIndex(i)
	local assetId = assetList[i]
	local cardName, cardImage, clickFunction, longPressFunction, isSelected

	if currentPage.specialPageType == 'Outfits' or currentPage.specialPageType == 'Recent Outfits' then
		cardName = 'Outfit'..tostring(assetId)

		cardImage = function()
			return "https://www."
				..Urls.domainUrl
				.."/outfit-thumbnail/image?userOutfitId="
				..assetId
				.."&width=100&height=100&format=png"
		end

		clickFunction = function()
			characterManager.addToRecentAssetList('outfits', assetId)
			characterManager.wearOutfit(assetId)
			longPressMenu:hideMenu()
		end
		longPressFunction = clickFunction
	else
		cardName = tostring(assetId)
		cardImage = Urls.assetImageUrl..tostring(assetId)
		isSelected = characterManager.findIfEquipped(assetId)

		local wearFunction = function()
			AppState.Store:Dispatch(EquipAsset(AssetInfo.getAssetType(assetId), assetId))
			longPressMenu:hideMenu()
		end

		local takeOffFunction = function()
			AppState.Store:Dispatch(UnequipAsset(AssetInfo.getAssetType(assetId), assetId))
			longPressMenu:hideMenu()
		end

		local wearOrTakeOffFunction = function()
			if characterManager.findIfEquipped(assetId) then
				takeOffFunction()
			else
				wearFunction()
			end
		end

		longPressFunction = function()
			local wearOrUnwearOption
			if characterManager.findIfEquipped(assetId) then
				wearOrUnwearOption = {text = Strings:LocalizedString("TakeOffWord"), func = takeOffFunction}
			else
				wearOrUnwearOption = {text = Strings:LocalizedString("WearWord"), func = wearFunction}
			end
			longPressMenu:showMenu(wearOrUnwearOption, assetId)
		end

		clickFunction = function()
			if UserInputService:IsKeyDown(Enum.KeyCode.Q) then
				longPressFunction()
			else
				wearOrTakeOffFunction()
			end
		end
	end

	local card = cardGrid:makeAssetCard(i, cardName, cardImage, clickFunction, longPressFunction, isSelected)
	card.Parent = scrollingFrame
end

local function makeShopPressFunction(url)
	return function()
		local url = "https://www." .. Urls.domainUrl .. (url or "/catalog")
		GuiService:OpenNativeOverlay( "Catalog", url )
	end
end

local function loadMoreListContent()
	loadingContent = true
	currentLoadingContentCall = currentLoadingContentCall + 1
	local thisLoadingContentCall = currentLoadingContentCall
	local reachedBottom = false
	local totalItems = nil

	if currentPage.typeName then
		local assetTypeId = AssetTypeNames[currentPage.typeName]

		local pageInfo = loadPage(assetTypeId, nextCursor)
		reachedBottom = pageInfo.reachedBottom
		nextCursor = pageInfo.nextCursor
		totalItems = pageInfo.totalItems

		if thisLoadingContentCall == currentLoadingContentCall then
			for _, assetId in next, pageInfo.assets do
				if not isAssetInList[assetId] then
					table.insert(assetList, assetId)
					isAssetInList[assetId] = true
				end
			end
		end

	elseif currentPage.specialPageType == 'Recent All' then
		assetList = Utilities.copyTable(characterManager.getOrCreateRecentAssetList('allAssets'))

	elseif currentPage.specialPageType == 'Recent Clothing' then
		assetList = Utilities.copyTable(characterManager.getOrCreateRecentAssetList('clothing'))

	elseif currentPage.specialPageType == 'Recent Body' then
		assetList = Utilities.copyTable(characterManager.getOrCreateRecentAssetList('body'))

	elseif currentPage.specialPageType == 'Recent Animation' then
		assetList = Utilities.copyTable(characterManager.getOrCreateRecentAssetList('animation'))

	elseif currentPage.specialPageType == 'Recent Outfits' then
		local newAssetList = {}
		for _, outfitId in pairs(characterManager.getOrCreateRecentAssetList('outfits')) do
			table.insert(newAssetList, outfitId)
		end
		assetList = newAssetList

	elseif currentPage.specialPageType == 'Outfits' then
		local desiredPageNumber = math.ceil((#assetList)/ITEMS_PER_PAGE)+1
		local typeStuff = Utilities.httpGet(
			Urls.avatarUrlPrefix
			.. "/v1/users/"
			.. userId
			.. "/outfits?page="
			.. desiredPageNumber
			.. "&itemsPerPage="
			.. ITEMS_PER_PAGE)

		if thisLoadingContentCall == currentLoadingContentCall then
			typeStuff = Utilities.decodeJSON(typeStuff)
			if typeStuff and typeStuff['data'] then
				local pageData = typeStuff['data']
				local outfitIds = {}
				for i,v in pairs(pageData) do
					outfitIds[i] = v.id
				end
				Utilities.addTables(assetList, outfitIds)
				if #outfitIds < ITEMS_PER_PAGE then
					reachedBottom = true
				end
			end
		end

	elseif currentPage.specialPageType == 'Skin Tone' then
		if LayoutInfo.isLandscape then
			scrollingFrame.Position = UDim2.new(0, 120, 0, 15)
			scrollingFrame.Size = UDim2.new(1, -135, 1, 0)
			scrollingFrame.ClipsDescendants = false
		end

		local availibleWidth = scrollingFrame.AbsoluteSize.X
		local buttonSize = (availibleWidth - ((SKIN_COLORS_PER_ROW+1) * SKIN_COLOR_GRID_PADDING)) / SKIN_COLORS_PER_ROW

		if LayoutInfo.isLandscape then
			local rows = math.ceil(#skinColorList/SKIN_COLORS_PER_ROW)

			Utilities.create'ImageLabel'
			{
				Name = 'SimpleBackgroundTemplate';
				Position = UDim2.new(0, -4, 0, -3);
				Size = UDim2.new(1, 8, 0, rows*buttonSize + (rows+1)*SKIN_COLOR_GRID_PADDING + 8);
				ZIndex = 2;
				BackgroundTransparency = 0;
				BackgroundColor3 = Color3.new(1,1,1);
				BorderSizePixel = 1;
				Visible = true;
				Parent = scrollingFrame
			}
		end

		local equippedFrame = Utilities.create'ImageLabel'
		{
			Name = "EquippedFrame";
			Position = UDim2.new(-.1, 0, -.1, 0);
			Size = UDim2.new(1.2, 0, 1.2, 0);
			BackgroundTransparency = 1;
			SizeConstraint = 'RelativeYY';
			ZIndex = scrollingFrame.ZIndex + 2;
		}
		SpriteManager.equip(equippedFrame, "gr-ring-selector")

		scrollingFrame.CanvasSize = UDim2.new(0, 0, 0,
			math.ceil(#skinColorList/SKIN_COLORS_PER_ROW)*(buttonSize+SKIN_COLOR_GRID_PADDING)
				+ SKIN_COLOR_GRID_PADDING
				+ SKIN_COLOR_EXTRA_VERTICAL_SHIFT)

		local sameBodyColor = this:getSameBodyColor()
		for i, brickColor in pairs(skinColorList) do
			local row = math.ceil(i/SKIN_COLORS_PER_ROW)
			local column = ((i-1)%SKIN_COLORS_PER_ROW)+1
			local colorButton =  Utilities.create'ImageButton'
			{
				Position = UDim2.new(
					0,
					SKIN_COLOR_GRID_PADDING + (column-1)*(buttonSize+SKIN_COLOR_GRID_PADDING),
					0,
					SKIN_COLOR_GRID_PADDING + (row-1)*(buttonSize+SKIN_COLOR_GRID_PADDING) + SKIN_COLOR_EXTRA_VERTICAL_SHIFT
				);
				Size = UDim2.new(0, buttonSize, 0, buttonSize);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				ImageColor3 = brickColor.Color;
				AutoButtonColor = false;
				ZIndex = scrollingFrame.ZIndex + 1;
				Parent = scrollingFrame;
			}
			SpriteManager.equip(colorButton, "gr-circle-white")

			local selectFunction = function()
				equippedFrame.Parent = colorButton
				local bodyColors = {
					["HeadColor"] = brickColor.Number,
					["LeftArmColor"] = brickColor.Number,
					["LeftLegColor"] = brickColor.Number,
					["RightArmColor"] = brickColor.Number,
					["RightLegColor"] = brickColor.Number,
					["TorsoColor"] = brickColor.Number,
				}
				AppState.Store:Dispatch(SetBodyColors(bodyColors))
			end
			colorButton.MouseButton1Click:connect(selectFunction)

			if LayoutInfo.isLandscape then
				local _, s, v = Color3.toHSV(brickColor.Color)

				if s < 0.1 and v > 0.9 then
					local outline = Utilities.create'ImageLabel'
					{
						Name = 'Outline';
						Position = UDim2.new(0, -1, 0, -1);
						Size = UDim2.new(1, 2, 1, 2);
						BackgroundTransparency = 1;
						ImageColor3 = Color3.new(0, 0, 0);
						ImageTransparency = 0.75;
						ZIndex = colorButton.ZIndex - 1;
						Parent = colorButton;
					}
					SpriteManager.equip(outline, 'gr-circle-white')
				end
			else
				local colorButtonShadow = Utilities.create'ImageLabel'
				{
					Name = 'DropShadow';
					Position = UDim2.new(-.07, 0, -.07, 0);
					Size = UDim2.new(1.13, 0, 1.13, 0);
					BackgroundTransparency = 1;
					ZIndex = colorButton.ZIndex - 1;
					Parent = colorButton;
				}
				SpriteManager.equip(colorButtonShadow, "gr-circle-shadow")
			end

			if sameBodyColor == brickColor.number then
				equippedFrame.Parent = colorButton
			end
		end

	elseif currentPage.specialPageType == 'Scale' then
		scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 260)

		if LayoutInfo.isLandscape then
			scrollingFrame.ClipsDescendants = false
			scrollingFrame.Position = UDim2.new(0, 116, 0, -1)
			scrollingFrame.Size = UDim2.new(1, -127, 1, 0)
		end

		local background = Utilities.create'ImageLabel'
		{
			Name = 'Background';
			Position =  UDim2.new(0, 3, 0, EXTRA_VERTICAL_SHIFT + 5);
			ZIndex = 2;
			Visible = true;
			BorderSizePixel = 1;
			BackgroundColor3 = Color3.new(1,1,1);

			Parent = scrollingFrame;
		}

		if AvatarEditorSliderUIAdjustments then
			background.BorderSizePixel = 0;
		end

		local scalesCount = this:getScalesInfoCount()
		local sliderPositionY = LayoutInfo.SliderPositionY
		local sliderSize = LayoutInfo.ScaleSliderSize

		for i = 1, scalesCount do
			local slider
if AvatarEditorAnthroSliders then
			slider = this:makeSlider(Slider, i, scrollingFrame)
else
			slider = this:makeSlider(Slider, i, (i > 1) and scrollingFrame or nil)
end
			slider.Position = LayoutInfo.isLandscape
				and UDim2.new(0, 29, 0, sliderPositionY)
				or UDim2.new(.1, 0, 0, sliderPositionY)
			slider.Size = sliderSize
			slider.Parent = scrollingFrame
			sliderPositionY = sliderPositionY + LayoutInfo.SliderVeritcalOffset
		end

		background.Size = UDim2.new(1, -6, 0, sliderPositionY);

		scrollingFrame.CanvasSize =
			UDim2.new( 0, 0, 0, sliderPositionY + EXTRA_VERTICAL_SHIFT + 8)
	end

	-- This is for rendering a generically layed out page
	if thisLoadingContentCall == currentLoadingContentCall then
		local buttonSize = cardGrid:getButtonSize()

		if not currentPage.special then
			scrollingFrame.CanvasSize =
				UDim2.new(0, 0, 0,
					cardGrid:getAssetCardY(totalItems or #assetList)
					+ buttonSize
					+ (LayoutInfo.isLandscape and 15 or GRID_PADDING))

			cardGrid:setRenderAssetCardCallback( function(...) return this:renderAssetCardByIndex(...) end )

			-- No assets text
			if #assetList == 0 and
				(reachedBottom or (currentPage.specialPageType and string.find(currentPage.specialPageType, 'Recent')))
				and not renderedNoAssetsMessage then

				renderedNoAssetsMessage = true
				Utilities.create'TextLabel'
				{
					Name = 'TextLabel';
					Position = UDim2.new(.5, 0, .5, -15);
					Size = UDim2.new(0, 0, 0, 0);
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					Font = LayoutInfo.BackgroundTextFont;
					FontSize = "Size18";
					Text = string.format(Strings:LocalizedString("NoAssetsPhrase"), currentPage.title);
					TextColor3 = LayoutInfo.BackgroundTextColor;
					TextXAlignment = "Center";
					ZIndex = 3;
					Parent = scrollingFrame;
				}

if AvatarEditorCatalogRecommended then
			if currentPage.shopUrl then
				-- Create "shop in catalog" button
				local shopInCatalogButton = Utilities.create'ImageButton'
				{
					Name = 'ShopInCatalogButton';
					AnchorPoint = Vector2.new(.5, 0);
					Position = UDim2.new(.5, 0, .5, 0);
					Size = UDim2.new(0, 160, 0, 36);
					ZIndex = 5;
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					Image = 'rbxasset://textures/AvatarEditorImages/btn.png';
					ImageRectOffset = Vector2.new(0, 0);
					ImageRectSize = Vector2.new(0, 0);
					ScaleType = Enum.ScaleType.Slice;
					SliceCenter = Rect.new(3, 3, 4, 4);
					Visible = true;
					Parent = scrollingFrame;
				}
				Utilities.create'TextLabel'
				{
					Name = 'TextLabel';
					Position = UDim2.new(0, 0, 0, -1);
					Size = UDim2.new(1, 0, 1, 0);
					ZIndex = 5;
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					Font = Enum.Font.SourceSans;
					Text = 'Shop in Catalog';
					TextSize = 22;
					TextColor3 = Color3.new(1,1,1);
					TextScaled = false;
					TextStrokeTransparency = 1;
					Parent = shopInCatalogButton
				}

				local pressFunction = makeShopPressFunction( currentPage.shopUrl )
				shopInCatalogButton.MouseButton1Click:connect( pressFunction )
			end
end

				scrollingFrame.CanvasSize =
					UDim2.new(0, scrollingFrame.AbsoluteSize.X, 0, scrollingFrame.AbsoluteSize.Y)
			elseif currentPage.typeName and not LayoutInfo.isLandscape then
				local pageTitleLabel = scrollingFrame:FindFirstChild('PageTitleLabel')
				if pageTitleLabel then
					pageTitleLabel.Visible = true
				end
			end
		end

if AvatarEditorCatalogRecommended then
		Utilities.fastSpawn(function()
			if reachedBottom
				and not renderedRecommended
				and currentPage.shopUrl
				and currentPage.typeName
				and thisLoadingContentCall == currentLoadingContentCall
				and not renderedNoAssetsMessage then

				-- Render recommended section
				recommendedDebounceCounter = recommendedDebounceCounter + 1
				local thisRecommendedDebounceCounter = recommendedDebounceCounter
				renderedRecommended = true

				local recommendedYPosition = scrollingFrame.CanvasSize.Y.Offset + 5

				local bonusYPixels = 8
				if LayoutInfo.isLandscape then
					bonusYPixels = bonusYPixels + 20
				end

				-- Tablet Text is on dark background, Phone text is on white background
				Utilities.create'TextLabel'
				{
					Position = UDim2.new(0, 7, 0, recommendedYPosition - 2);
					Size = UDim2.new(1, -14, 0, 25);
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					Font = LayoutInfo.isLandscape and "SourceSans" or "SourceSansLight";
					FontSize = "Size18";
					Text = string.upper(Strings:LocalizedString("RecommendedWord"));
					TextXAlignment = "Left";
					TextColor3 = LayoutInfo.isLandscape and Color3.new(.9, .9, .9) or Color3.fromRGB(65, 78, 89);
					ZIndex = 3;
					Parent = scrollingFrame;
				}

				-- Create "Shop Now" button
				local shopNowButton = Utilities.create'ImageButton'
				{
					Name = 'ShopNowButtonTemplate';
					Position = LayoutInfo.isLandscape and
						UDim2.new(1, -100, 0, recommendedYPosition - 3) or
						UDim2.new(1, -88, 0, recommendedYPosition - 3);
					Size = UDim2.new(0, 85, 0, 26);
					ZIndex = 5;
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					Image = 'rbxasset://textures/AvatarEditorImages/btn.png';
					ImageRectOffset = Vector2.new(0, 0);
					ImageRectSize = Vector2.new(0, 0);
					ScaleType = Enum.ScaleType.Slice;
					SliceCenter = Rect.new(3, 3, 4, 4);
					Visible = true;
					Parent = scrollingFrame;
				}
				Utilities.create'TextLabel'
				{
					Name = 'TextLabel';
					Position = UDim2.new(0, 0, 0, -1);
					Size = UDim2.new(1, 0, 1, 0);
					ZIndex = 5;
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					Font = Enum.Font.SourceSans;
					Text = Strings:LocalizedString("ShopNowWord");
					TextSize = 18;
					TextColor3 = Color3.new(1,1,1);
					TextScaled = false;
					TextStrokeTransparency = 1;
					Parent = shopNowButton;
				}

				local pressFunction = makeShopPressFunction( currentPage.shopUrl )
				shopNowButton.MouseButton1Click:connect( pressFunction )

				local recommendedAssetListRequest =
					Utilities.httpGet(
						"https://www."
						..Urls.domainUrl
						.."/assets/recommended-json?assetTypeId="
						..AssetTypeNames[currentPage.typeName]
						.."&numItems=4")

				recommendedAssetListRequest = Utilities.decodeJSON(recommendedAssetListRequest)
				if recommendedAssetListRequest
					and recommendedAssetListRequest.data
					and recommendedAssetListRequest.data.Items
					and thisRecommendedDebounceCounter == recommendedDebounceCounter
					and thisLoadingContentCall == currentLoadingContentCall then
					for i, itemData in pairs(recommendedAssetListRequest.data.Items) do
						if itemData and itemData.Item then
							-- Create card for recommended item

							local assetId = itemData.Item.AssetId

							local position = UDim2.new(
								0,
								GRID_PADDING + (i-1)*(buttonSize+GRID_PADDING) -3,
								0,
								recommendedYPosition + 30
							)
							local cardName = tostring(assetId)
							local cardImage = Urls.assetImageUrl..tostring(assetId)

							local clickFunction = function()
								if longPressMenu then
									longPressMenu:openDetails(assetId)
								end
							end

							local card = cardGrid:makeAssetCard(
								#assetList + i,
								cardName,
								cardImage,
								clickFunction,
								function() end,
								false,
								position)

							card.Parent = scrollingFrame
						end
					end
				end

				scrollingFrame.CanvasSize =
					UDim2.new(
						0, 0, 0, (
							math.ceil(#assetList/BUTTONS_PER_ROW) + 1)*(buttonSize + GRID_PADDING)
							+ GRID_PADDING
							+ 2 * EXTRA_VERTICAL_SHIFT
							+ bonusYPixels)
			end
		end)
end
	end

	loadingContent = false

	return reachedBottom
end


local reachedBottomOfCurrentPage = false

local function selectPage(categoryIndex, tabIndex)
	local desiredPage = Categories[categoryIndex].pages[tabIndex]
	if desiredPage ~= currentPage then
		currentPage = desiredPage

		cardGrid:invalidateAllAssetCards()
		scrollingFrame.CanvasPosition = Vector2.new(0, 0)

		if desiredPage.typeName then
			loadPage(AssetTypeNames[desiredPage.typeName], '')
		end

		-- Check again in case CategoryIndex or TabIndex has already been changed
		if currentPage ~= desiredPage then
			return
		end

		if not LayoutInfo.isLandscape then
			Utilities.create'TextLabel'
			{
				Name = 'PageTitleLabel';
				Position = UDim2.new(0, 7, 0, 3);
				Size = UDim2.new(1, -14, 0, 25);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Font = "SourceSansLight";
				FontSize = "Size18";
				Text = string.upper(desiredPage.title);
				TextColor3 = Color3.fromRGB(65, 78, 89);
				TextXAlignment = "Left";
				ZIndex = 3;
				Visible = not desiredPage.typeName;
				Parent = scrollingFrame;
			}
		end

		if desiredPage.name == 'Skin Tone' then
			if not LayoutInfo.isLandscape then
				Utilities.create'ImageLabel'
				{
					Name = 'WhiteFrameTemplate';
					Position = UDim2.new(0, 2, 0, 27);
					Size = UDim2.new(1, -4, 1, -29);
					ZIndex = 3;
					BackgroundTransparency = 0;
					BorderSizePixel = 0;
					BackgroundColor3 = Color3.new(1,1,1);
					Visible = true;
					Parent = scrollingFrame;
				}
			end
		end

		loadingContent = false
		renderedRecommended = false
		renderedNoAssetsMessage = false
		reachedBottomOfCurrentPage = false
		assetList = {}
		isAssetInList = {}
		nextCursor = ''

		reachedBottomOfCurrentPage = loadMoreListContent()

		cardGrid:freshUpdateVisibleAssetCards()
	end
end


function this:updateListContent(canvasPosition)
	-- -100 pixels to give us a buffer to load more content so the user doesn't actually reach the end of the page
	if canvasPosition >=
		cardGrid:getAssetCardY(#assetList)
			- 100
			- 2 * cardGrid:getButtonSize()
			- scrollingFrame.CanvasSize.Y.Offset then

		if not loadingContent
			and not renderedRecommended
			and currentPage.infiniteScrolling
			and not reachedBottomOfCurrentPage then

			reachedBottomOfCurrentPage = loadMoreListContent()
			cardGrid:tryUpdateVisibleAssetCards()
		end
	end
end

local function update(newState, oldState)
	-- Either CategoryIndex changed (by selecting new category) or TabsInfo changed (by selecting new tab)
	if newState.Category.CategoryIndex ~= oldState.Category.CategoryIndex or
		newState.Category.TabsInfo ~= oldState.Category.TabsInfo then

		local categoryIndex = newState.Category.CategoryIndex
		local tabInfo = categoryIndex and newState.Category.TabsInfo[categoryIndex]
		local tabIndex = tabInfo and tabInfo.TabIndex or 1

		Utilities.fastSpawn(function()
			selectPage(categoryIndex, tabIndex)
		end)
	end
end


	AppState.Store.Changed:Connect(update)

	return this
end

