local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local UserInputService = game:GetService('UserInputService')
local GuiService = game:GetService("GuiService")

local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)

local SpriteManager = require(Modules.LuaApp.Legacy.AvatarEditor.SpriteSheetManager)
local CreateCardGrid = require(Modules.LuaApp.Legacy.AvatarEditor.CardGrid)
local Utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)
local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfo)
local AssetInfo = require(Modules.LuaApp.Legacy.AvatarEditor.AssetInfo)
local Categories = require(Modules.LuaApp.Legacy.AvatarEditor.Categories)
local Strings = require(Modules.LuaApp.Legacy.AvatarEditor.LocalizedStrings)
local AssetTypeNames = require(Modules.LuaApp.Legacy.AvatarEditor.AssetTypeNames)
local Slider = require(Modules.LuaApp.Legacy.AvatarEditor.Slider)
local Urls = require(Modules.LuaApp.Legacy.AvatarEditor.Urls)
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)

local EquipAsset = require(Modules.LuaApp.Actions.EquipAsset)
local UnequipAsset = require(Modules.LuaApp.Actions.UnequipAsset)
local SetAvatarHeight = require(Modules.LuaApp.Actions.SetAvatarHeight)
local SetAvatarWidth = require(Modules.LuaApp.Actions.SetAvatarWidth)
local SetAvatarHeadSize = require(Modules.LuaApp.Actions.SetAvatarHeadSize)
local SetBodyColors = require(Modules.LuaApp.Actions.SetBodyColors)


local BUTTONS_PER_ROW = LayoutInfo.ButtonsPerRow
local SKIN_COLORS_PER_ROW = LayoutInfo.SkinColorsPerRow
local GRID_PADDING = LayoutInfo.GridPadding
local SKIN_COLOR_GRID_PADDING = LayoutInfo.SkinColorGridPadding
local EXTRA_VERTICAL_SHIFT = LayoutInfo.ExtraVerticalShift -- This is to make space for page title labels
local SKIN_COLOR_EXTRA_VERTICAL_SHIFT = LayoutInfo.SkinColorExtraVerticalShift

local ITEMS_PER_PAGE = 24 -- Number of items per http request for infinite scrolling
local ITEMS_PER_PAGE_NEW_URL = 25


local skinColorList = {}
for i,v in pairs({
	'Dark taupe','Brown','Linen','Nougat','Light orange',
	'Dirt brown','Reddish brown','Cork','Burlap','Brick yellow',
	'Sand red','Dusty Rose','Medium red','Pastel orange','Carnation pink',
	'Sand blue','Steel blue','Pastel Blue','Pastel violet','Lilac',
	'Bright bluish green','Shamrock','Moss','Medium green','Br. yellowish orange',
	'Bright yellow','Daisy orange','Dark stone grey','Mid grey','Institutional white',
	}) do
	skinColorList[i] = BrickColor.new(v)
end

local currentPage = nil
local userId = nil
local scrollingFrame = nil
local CardGrid = nil
local characterManager = nil
local longPressMenu = nil
local loadingContent = false
local renderedRecommended = false
local recommendedDebounceCounter = 0
local renderedNoAssetsMessage = false
local currentLoadingContentCall = 0
local isAssetInList = {}
local nextCursor = ''
local cachedPages = {}
local assetList = {} -- all owned assets of a type


local this = {}

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

local ScalesName = {
	Height = "Height";
	Width = "Width";
	Head = "Head";
}

local DEFAULT_INCREMENT = 1

local HeightScaleMin = .95
local HeightScaleMax = 1.05
local HeightScaleIncrement = .01

local WidthScaleMin = .70
local WidthScaleMax = 1.00
local WidthScaleIncrement = .01

local HeadScaleMin = .95
local HeadScaleMax = 1.00
local HeadScaleIncrement = .01

local minimumDeltaEBodyColorDifference = 0

local function updateAvatarRules()
	local avatarRulesRequest = Utilities.httpGet(Urls.avatarUrlPrefix.."/v1/avatar-rules")
	avatarRulesRequest = Utilities.decodeJSON(avatarRulesRequest)
	if avatarRulesRequest then
		local scaleRulesRequest = avatarRulesRequest['scales']
		if scaleRulesRequest then
			local scaleHeightRules = scaleRulesRequest['height']
			if scaleHeightRules then
				if scaleHeightRules['min'] then
					HeightScaleMin = scaleHeightRules['min']
				end
				if scaleHeightRules['max'] then
					HeightScaleMax = scaleHeightRules['max']
				end
				if scaleHeightRules['increment'] then
					HeightScaleIncrement = scaleHeightRules['increment']
				end
			end
			local scaleWidthRules = scaleRulesRequest['width']
			if scaleWidthRules then
				if scaleWidthRules['min'] then
					WidthScaleMin = scaleWidthRules['min']
				end
				if scaleWidthRules['max'] then
					WidthScaleMax = scaleWidthRules['max']
				end
				if scaleWidthRules['increment'] then
					WidthScaleIncrement = scaleWidthRules['increment']
				end
			end
			local scaleHeadRules = scaleRulesRequest['head']
			if scaleHeadRules then
				if scaleHeadRules['min'] then
					HeadScaleMin = scaleHeadRules['min']
				end
				if scaleHeadRules['max'] then
					HeadScaleMax = scaleHeadRules['max']
				end
				if scaleHeadRules['increment'] then
					HeadScaleIncrement = scaleHeadRules['increment']
				end
			end
		end

		local minimumDeltaEBodyColorDifferenceRequest = avatarRulesRequest['minimumDeltaEBodyColorDifference']
		if minimumDeltaEBodyColorDifferenceRequest then
			minimumDeltaEBodyColorDifference = minimumDeltaEBodyColorDifferenceRequest
			characterManager.setMinDeltaEBodyColorDifference(minimumDeltaEBodyColorDifference)
		end
	end
end

local function outfitImageFetch(outfitId, attemptNumber)
	return "https://www."
		..Urls.domainUrl
		.."/outfit-thumbnail/image?userOutfitId="
		..outfitId
		.."&width=100&height=100&format=png"
end


function this:renderAssetCardByIndex(i)
	local assetId = assetList[i]
	local cardName, cardImage, clickFunction, longPressFunction, isSelected

	if currentPage.specialPageType == 'Outfits' or currentPage.specialPageType == 'Recent Outfits' then
		cardName = 'Outfit'..tostring(assetId)

		cardImage = function()
			return outfitImageFetch(assetId)
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

	local card = CardGrid:makeAssetCard(i, cardName, cardImage, clickFunction, longPressFunction, isSelected)
	card.Parent = scrollingFrame
end

local function getBodyColors()
	return AppState.Store:GetState().Character.BodyColors
end

--Return bodyColor value if all parts are using the same color, otherwise return nil
local function getSameBodyColor()
	local bodyColors = getBodyColors()
	local bodyColor = nil
	for _, value in pairs(bodyColors) do
		if bodyColor == nil then
			bodyColor = value
		elseif bodyColor ~= value then
			return nil
		end
	end
	return bodyColor
end

local function getScales()
	return AppState.Store:GetState().Character.Scales
end

local function scalesChangeFunction(name, value)
	if name == ScalesName.Height then
		local heightScaleIncrement = HeightScaleIncrement or DEFAULT_INCREMENT
		local resultPercent = HeightScaleMin + value * heightScaleIncrement

		local height = math.min(HeightScaleMax, math.max(HeightScaleMin, resultPercent))

		AppState.Store:Dispatch(SetAvatarHeight(height))
	elseif name == ScalesName.Width then
		local widthScaleIncrement = WidthScaleIncrement or DEFAULT_INCREMENT
		local resultPercent = WidthScaleMin + value * widthScaleIncrement

		local width = math.min(WidthScaleMax, math.max(WidthScaleMin, resultPercent))
		local depth = 1 + (width - 1) * .5	-- Depth change is linked to half of the width change.

		AppState.Store:Dispatch(SetAvatarWidth(width, depth))
	elseif name == ScalesName.Head then
		local headScaleIncrement = HeadScaleIncrement or DEFAULT_INCREMENT
		local resultPercent = HeadScaleMin + value * headScaleIncrement

		local head = math.min(HeadScaleMax, math.max(HeadScaleMin, resultPercent))

		AppState.Store:Dispatch(SetAvatarHeadSize(head))
	end
end

local AvatarEditorUsesBrowserWindowCall = Flags:GetFlag("AvatarEditorUsesBrowserWindowCall")

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

		local equippedFrame = Instance.new('ImageLabel')
		equippedFrame.Name = "EquippedFrame"

		if SpriteManager.enabled then
			SpriteManager.equip(equippedFrame, "gr-ring-selector")
		else
			equippedFrame.Image = "rbxassetid://431878613"
			equippedFrame.ImageColor3 = Color3.new(.2, .65, .9)
		end
		equippedFrame.BackgroundTransparency = 1
		equippedFrame.Size = UDim2.new(1.2, 0, 1.2, 0)
		equippedFrame.Position = UDim2.new(-.1, 0, -.1, 0)
		equippedFrame.SizeConstraint = 'RelativeYY'
		equippedFrame.ZIndex = scrollingFrame.ZIndex + 2

		scrollingFrame.CanvasSize = UDim2.new(0, 0, 0,
			math.ceil(#skinColorList/SKIN_COLORS_PER_ROW)*(buttonSize+SKIN_COLOR_GRID_PADDING)
				+ SKIN_COLOR_GRID_PADDING
				+ SKIN_COLOR_EXTRA_VERTICAL_SHIFT)

		for i,brickColor in pairs(skinColorList) do
			local row = math.ceil(i/SKIN_COLORS_PER_ROW)
			local column = ((i-1)%SKIN_COLORS_PER_ROW)+1
			local colorButton = Instance.new('ImageButton')

			colorButton.AutoButtonColor = false
			colorButton.BorderSizePixel = 0
			colorButton.BackgroundTransparency = 1
			if SpriteManager.enabled then
				SpriteManager.equip(colorButton, "gr-circle-white")
			else
				colorButton.Image = "rbxassetid://431879450"
			end
			colorButton.ImageColor3 = brickColor.Color
			colorButton.Size = UDim2.new(0, buttonSize, 0, buttonSize)
			colorButton.Position = UDim2.new(
				0,
				SKIN_COLOR_GRID_PADDING + (column-1)*(buttonSize+SKIN_COLOR_GRID_PADDING),
				0,
				SKIN_COLOR_GRID_PADDING + (row-1)*(buttonSize+SKIN_COLOR_GRID_PADDING) + SKIN_COLOR_EXTRA_VERTICAL_SHIFT
			)
			colorButton.ZIndex = scrollingFrame.ZIndex + 1
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
					local outline = Instance.new'ImageLabel'
					outline.Name = 'Outline'
					outline.BackgroundTransparency = 1
					outline.Position = UDim2.new(0, -1, 0, -1)
					outline.Size = UDim2.new(1, 2, 1, 2)
					SpriteManager.equip(outline, 'gr-circle-white')
					outline.ImageColor3 = Color3.new(0, 0, 0)
					outline.ImageTransparency = 0.75
					outline.ZIndex = colorButton.ZIndex - 1
					outline.Parent = colorButton
				end
			else
				local colorButtonShadow = Instance.new('ImageLabel')
				colorButtonShadow.Name = 'DropShadow'
				if SpriteManager.enabled then
					SpriteManager.equip(colorButtonShadow, "gr-circle-shadow")
				else
					colorButtonShadow.Image =
						"rbxasset://textures/AvatarEditorIcons/ColorSelection/gr-circle-shadow@2x.png"
				end
				colorButtonShadow.BackgroundTransparency = 1
				colorButtonShadow.ZIndex = colorButton.ZIndex - 1
				colorButtonShadow.Size = UDim2.new(1.13,0,1.13,0)
				colorButtonShadow.Position = UDim2.new(-.07,0,-.07,0)
				colorButtonShadow.Parent = colorButton
			end

			colorButton.Parent = scrollingFrame
			if getSameBodyColor() == brickColor.number then
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
			Position = UDim2.new(0, 3, 0, EXTRA_VERTICAL_SHIFT + 5);
			Size = UDim2.new(1, -6, 0, 240);
			ZIndex = 2;
			Visible = true;
			BorderSizePixel = 1;
			BackgroundColor3 = Color3.new(1,1,1);

			Parent = scrollingFrame;
		}

		if LayoutInfo.isLandscape then
			background.Position = UDim2.new(0, 0, 0, 13)
			background.Size = UDim2.new(1, 0, 0, 165)
		end

		-- Initialize Height Scale Slider
		local heightIntervals = nil
		local heightScaleIncrement = HeightScaleIncrement or DEFAULT_INCREMENT
		local defaultValue = nil
		if heightScaleIncrement > 0 then
			heightIntervals = ((HeightScaleMax - HeightScaleMin) / heightScaleIncrement) + 1
			defaultValue = (1 - HeightScaleMin) / heightScaleIncrement
		end
		local sliderPercent = (getScales().Height - HeightScaleMin) / (HeightScaleMax - HeightScaleMin)
		local heightSlider = Slider.renderSlider(
			ScalesName.Height,
			Strings:LocalizedString("HeightWord"),
			scalesChangeFunction,
			sliderPercent,
			heightIntervals,
			defaultValue)

		heightSlider.Position = UDim2.new(.1, 0, 0, 70)
		heightSlider.Parent = scrollingFrame

		-- Initialize Width Scale Slider
		local widthIntervals = nil
		local widthScaleIncrement = WidthScaleIncrement or DEFAULT_INCREMENT
		defaultValue = nil
		if widthScaleIncrement > 0 then
			widthIntervals = ((WidthScaleMax - WidthScaleMin) / widthScaleIncrement) + 1
			defaultValue = (1 - WidthScaleMin) / widthScaleIncrement
		end

		sliderPercent = (getScales().Width - WidthScaleMin) / (WidthScaleMax - WidthScaleMin)
		local widthSlider = Slider.renderSlider(
			ScalesName.Width,
			Strings:LocalizedString("WidthWord"),
			scalesChangeFunction,
			sliderPercent,
			widthIntervals,
			defaultValue,
			scrollingFrame)

		widthSlider.Position = UDim2.new(.1, 0, 0, 140)
		if LayoutInfo.isLandscape then
			heightSlider.Position = UDim2.new(0, 29, 0, 56)
			heightSlider.Size = UDim2.new(1, -57, 0, 30)
			widthSlider.Position = UDim2.new(0, 29, 0, 123)
			widthSlider.Size = UDim2.new(1, -57, 0, 30)
			background.Position = UDim2.new(0, 0, 0, 13)
			background.Size = UDim2.new(1, 0, 0, 165)
		end
		widthSlider.Parent = scrollingFrame

		local headIntervals = nil
		local headScaleIncrement = HeadScaleIncrement or DEFAULT_INCREMENT
		defaultValue = nil
		if headScaleIncrement > 0 then
			headIntervals = ((HeadScaleMax - HeadScaleMin) / headScaleIncrement) + 1
			defaultValue = (1 - HeadScaleMin) / headScaleIncrement
		end
		sliderPercent = (getScales().Head - HeadScaleMin) / (HeadScaleMax - HeadScaleMin)
		local headSlider = Slider.renderSlider(
			ScalesName.Head,
			Strings:LocalizedString("HeadWord"),
			scalesChangeFunction,
			sliderPercent,
			headIntervals,
			defaultValue,
			scrollingFrame)

		headSlider.Position = UDim2.new(.1, 0, 0, 210)
		if LayoutInfo.isLandscape then
			headSlider.Position = UDim2.new(0, 29, 0, 190)
			headSlider.Size = UDim2.new(1, -57, 0, 30)
			background.Size = UDim2.new(1, 0, 0, 232)
		end
		headSlider.Parent = scrollingFrame
	end

	-- This is for rendering a generically layed out page
	if thisLoadingContentCall == currentLoadingContentCall then
		local buttonSize = CardGrid:getButtonSize()

		if not currentPage.special then
			scrollingFrame.CanvasSize =
				UDim2.new(0, 0, 0,
					CardGrid:getAssetCardY(totalItems or #assetList)
					+ buttonSize
					+ (LayoutInfo.isLandscape and 15 or GRID_PADDING))

			CardGrid:setRenderAssetCardCallback( function(...) return this:renderAssetCardByIndex(...) end )

			-- No assets text
			if #assetList == 0 and
				(reachedBottom or (currentPage.specialPageType and string.find(currentPage.specialPageType, 'Recent'))) and
				not renderedNoAssetsMessage then

				renderedNoAssetsMessage = true
				local noAssetsLabel = Instance.new('TextLabel')
				noAssetsLabel.Text = string.format(Strings:LocalizedString("NoAssetsPhrase"), currentPage.title)
				noAssetsLabel.BackgroundTransparency = 1
				noAssetsLabel.Size = UDim2.new(0, 0, 0, 0)
				noAssetsLabel.Position = UDim2.new(.5, 0, .5, -15)
				noAssetsLabel.FontSize = "Size18"
				noAssetsLabel.TextXAlignment = "Center"
				noAssetsLabel.TextColor3 = LayoutInfo.BackgroundTextColor
				noAssetsLabel.Font = LayoutInfo.BackgroundTextFont
				noAssetsLabel.ZIndex = 3
				noAssetsLabel.Parent = scrollingFrame

				if AvatarEditorUsesBrowserWindowCall then
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
					local function pressFunction()
						GuiService:OpenNativeOverlay(
							"Catalog",
							"https://www."
							..Urls.domainUrl
							.."/catalog/?Category=11&Subcategory="
							..AssetTypeNames[currentPage.typeName])
					end
					shopInCatalogButton.MouseButton1Click:connect(pressFunction)
					shopInCatalogButton.TouchLongPress:connect(pressFunction)
					shopInCatalogButton.Visible = true
					shopInCatalogButton.Parent = scrollingFrame
				end

				scrollingFrame.CanvasSize = UDim2.new(0, scrollingFrame.AbsoluteSize.X, 0, scrollingFrame.AbsoluteSize.Y)
			elseif currentPage.typeName and not LayoutInfo.isLandscape then
				local pageTitleLabel = scrollingFrame:FindFirstChild('PageTitleLabel')
				if pageTitleLabel then
					pageTitleLabel.Visible = true
				end
			end
		end

		Utilities.fastSpawn(function()
			if reachedBottom
				and not renderedRecommended
				and currentPage.recommendedSort
				and AvatarEditorUsesBrowserWindowCall
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

				local recommendedLabel = Instance.new('TextLabel')
				recommendedLabel.Text = string.upper(Strings:LocalizedString("RecommendedWord")) --"Recommended"
				recommendedLabel.BackgroundTransparency = 1
				if LayoutInfo.isLandscape then
					recommendedLabel.TextColor3 = Color3.new(.9,.9,.9)		-- Tablet Text is on dark background
					recommendedLabel.Font = "SourceSans"
				else
					recommendedLabel.TextColor3 = Color3.fromRGB(65,78,89)	-- Phone text is on white background
					recommendedLabel.Font = "SourceSansLight"
				end
				recommendedLabel.Size = UDim2.new(1,-14,0,25)
				recommendedLabel.Position = UDim2.new(0,7,0,recommendedYPosition - 2)
				recommendedLabel.FontSize = "Size18"
				recommendedLabel.TextXAlignment = "Left"
				recommendedLabel.ZIndex = 3
				recommendedLabel.Parent = scrollingFrame

				if AvatarEditorUsesBrowserWindowCall then
					-- Create "Shop Now" button
					local shopNowButton = Utilities.create'ImageButton'
					{
						Name = 'ShopNowButtonTemplate';
						Position = UDim2.new(0, 10, 0, 80);
						Size = UDim2.new(0, 85, 0, 26);
						ZIndex = 5;
						BackgroundTransparency = 1;
						BorderSizePixel = 0;
						Image = 'rbxasset://textures/AvatarEditorImages/btn.png';
						ImageRectOffset = Vector2.new(0, 0);
						ImageRectSize = Vector2.new(0, 0);
						ScaleType = Enum.ScaleType.Slice;
						SliceCenter = Rect.new(3, 3, 4, 4);
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
						Text = 'Shop Now';
						TextSize = 18;
						TextColor3 = Color3.new(1,1,1);
						TextScaled = false;
						TextStrokeTransparency = 1;
						Parent = shopNowButton;
					}

					if LayoutInfo.isLandscape then
						shopNowButton.Position = UDim2.new(1,-shopNowButton.Size.X.Offset - 15,0,recommendedYPosition - 3)
					else
						shopNowButton.Position = UDim2.new(1,-shopNowButton.Size.X.Offset - 3,0,recommendedYPosition - 3)
					end
					local function pressFunction()
						GuiService:OpenNativeOverlay(
							"Catalog",
							"https://"
							..Urls.domainUrl
							.."/catalog/?Category=11&Subcategory="
							..AssetTypeNames[currentPage.typeName])
					end
					shopNowButton.MouseButton1Click:connect(pressFunction)
					shopNowButton.TouchLongPress:connect(pressFunction)
					shopNowButton.Visible = true
					shopNowButton.Parent = scrollingFrame
				end

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

							local longPressFunction = function()
								if longPressMenu then
									longPressMenu:openDetails(assetId)
								end
							end
							local clickFunction = function()
								if longPressMenu then
									longPressMenu:openDetails(assetId)
								end
							end

							local card = CardGrid:makeAssetCard(
								#assetList + i,
								cardName,
								cardImage,
								clickFunction,
								longPressFunction,
								false,
								position)

							card.Parent = scrollingFrame
						end
					end
				end

				scrollingFrame.CanvasSize =
					UDim2.new(
						0,0,0,(
							math.ceil(#assetList/BUTTONS_PER_ROW) + 1)*(buttonSize + GRID_PADDING)
							+ GRID_PADDING
							+ 2 * EXTRA_VERTICAL_SHIFT
							+ bonusYPixels)
			end
		end)
	end

	loadingContent = false

	return reachedBottom
end


local reachedBottomOfCurrentPage = false

local function selectPage(categoryIndex, tabIndex)
	local desiredPage = Categories[categoryIndex].pages[tabIndex]
	if desiredPage ~= currentPage then
		currentPage = desiredPage

		CardGrid:invalidateAllAssetCards()
		scrollingFrame.CanvasPosition = Vector2.new(0, 0)

		if desiredPage.typeName then
			loadPage(AssetTypeNames[desiredPage.typeName], '')
		end

		-- Check again in case CategoryIndex or TabIndex has already been changed
		if currentPage ~= desiredPage then
			return
		end

		if not LayoutInfo.isLandscape then
			local pageLabel = Instance.new('TextLabel')
			pageLabel.Name = 'PageTitleLabel'
			pageLabel.Text = string.upper(desiredPage.title)
			pageLabel.BackgroundTransparency = 1
			pageLabel.TextColor3 = Color3.fromRGB(65,78,89)
			pageLabel.Size = UDim2.new(1,-14,0,25)
			pageLabel.Position = UDim2.new(0,7,0,3)
			pageLabel.Font = "SourceSansLight"
			pageLabel.FontSize = "Size18"
			pageLabel.TextXAlignment = "Left"
			pageLabel.ZIndex = 3
			pageLabel.Visible = not desiredPage.typeName
			pageLabel.Parent = scrollingFrame
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

		CardGrid:freshUpdateVisibleAssetCards()
	end
end


function this:updateListContent(canvasPosition)
	-- -100 pixels to give us a buffer to load more content so the user doesn't actually reach the end of the page
	if canvasPosition >=
		CardGrid:getAssetCardY(#assetList)
			- 100
			- 2 * CardGrid:getButtonSize()
			- scrollingFrame.CanvasSize.Y.Offset then

		if not loadingContent
			and not renderedRecommended
			and currentPage.infiniteScrolling
			and not reachedBottomOfCurrentPage then

			reachedBottomOfCurrentPage = loadMoreListContent()
			CardGrid:tryUpdateVisibleAssetCards()
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

return function(inUserId, equippedFrameTemplate, inScrollingFrame, inCharacterManager, inLongPressMenu)
	--Reset all mutables when recreate the PageManager
	currentPage = nil
	userId = nil
	scrollingFrame = nil
	CardGrid = nil
	characterManager = nil
	longPressMenu = nil
	loadingContent = false
	renderedRecommended = false
	recommendedDebounceCounter = 0
	renderedNoAssetsMessage = false
	currentLoadingContentCall = 0
	isAssetInList = {}
	nextCursor = ''
	cachedPages = {}
	assetList = {} -- all owned assets of a type

	userId = inUserId
	scrollingFrame = inScrollingFrame
	characterManager = inCharacterManager
	longPressMenu = inLongPressMenu

	CardGrid = CreateCardGrid(
		equippedFrameTemplate,
		scrollingFrame,
		function()
			return assetList
		end
	)

	Utilities.fastSpawn(updateAvatarRules)
	AppState.Store.Changed:Connect(update)

	return this
end

