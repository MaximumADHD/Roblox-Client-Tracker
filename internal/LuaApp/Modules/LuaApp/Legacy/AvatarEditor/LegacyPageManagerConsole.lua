local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local GuiService = game:GetService("GuiService")

local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)

local CreateCardGrid = require(Modules.LuaApp.Legacy.AvatarEditor.LegacyCardGridConsole)
local Slider = require(Modules.LuaApp.Legacy.AvatarEditor.SliderConsole)

local AssetInfo = require(Modules.LuaApp.Legacy.AvatarEditor.AssetInfo)
local AssetTypeNames = require(Modules.LuaApp.Legacy.AvatarEditor.AssetTypeNames)
local Categories = require(Modules.LuaApp.Legacy.AvatarEditor.Categories)
local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfoConsole)
local Strings = require(Modules.LuaApp.Legacy.AvatarEditor.LocalizedStrings)
local TweenController = require(Modules.LuaApp.Legacy.AvatarEditor.TweenInstanceController)
local Utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)
local Urls = require(Modules.LuaApp.Legacy.AvatarEditor.Urls)
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)

local EquipAsset = require(Modules.LuaApp.Actions.EquipAsset)
local UnequipAsset = require(Modules.LuaApp.Actions.UnequipAsset)
local SetAvatarHeight = require(Modules.LuaApp.Actions.SetAvatarHeight)
local SetAvatarWidth = require(Modules.LuaApp.Actions.SetAvatarWidth)
local SetAvatarHeadSize = require(Modules.LuaApp.Actions.SetAvatarHeadSize)
local SetBodyColors = require(Modules.LuaApp.Actions.SetBodyColors)

local ShellModules = Modules:FindFirstChild("Shell")
local LoadingWidget = require(ShellModules:FindFirstChild('LoadingWidget'))

local this = {}

local BUTTONS_PER_ROW = LayoutInfo.ButtonsPerRow
local GRID_PADDING = LayoutInfo.GridPadding
local BUTTONS_SIZE = LayoutInfo.ButtonSize
local SKIN_COLORS_PER_ROW = LayoutInfo.SkinColorsPerRow
local SKIN_COLOR_GRID_PADDING = LayoutInfo.SkinColorGridPadding
local SKIN_COLOR_EXTRA_VERTICAL_SHIFT = LayoutInfo.SkinColorExtraVerticalShift
local SKIN_COLOR_BUTTONS_SIZE = LayoutInfo.SkinColorButtonSize
local SELECTOR_BOTTOM_MIN_DISTANCE = LayoutInfo.SelectorBottomMinDistance

local ITEMS_PER_PAGE = 24		-- Number of items per http request for infinite scrolling
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

--Mutables
local currentPage = nil
local userId = nil
local scrollingFrame = nil
local loadingSpinnerFrame = nil
local firstColorButton = nil
local firstScaleButton = nil
local CardGrid = nil
local characterManager = nil
local loadingContent = false
local loadingSpinner = nil
local renderedRecommended = false
local recommendedDebounceCounter = 0
local renderedNoAssetsMessage = false
local currentLoadingContentCall = 0
local isAssetInList = {}
local nextCursor = ''
local cachedPages = {}
local assetList = {} -- all owned assets of a type
local storeChangedCn = nil

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
	}

	if loadingSpinner then
		loadingSpinner:Cleanup()
		loadingSpinner = nil
	end

	loadingSpinnerFrame = loadingSpinnerFrame or
	Utilities.create'Frame'
	{
		Name = 'loadingSpinnerFrame';
		AnchorPoint = scrollingFrame.AnchorPoint;
		Position = scrollingFrame.Position;
		Size = scrollingFrame.Size;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		ZIndex = LayoutInfo.BasicLayer;
		Parent = scrollingFrame.Parent;
	}

	loadingSpinner = LoadingWidget(
		{Parent = loadingSpinnerFrame, Position = UDim2.new(0.5, 0, 0.5, -SELECTOR_BOTTOM_MIN_DISTANCE/2)},
		{function()
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
		end}
	)

	loadingSpinner:AwaitFinished()

	if loadingSpinner then
		loadingSpinner:Cleanup()
		loadingSpinner = nil
	end

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
	local cardName, cardImage, clickFunction, isEquipped

	if currentPage.specialPageType == 'Outfits' or currentPage.specialPageType == 'Recent Outfits' then
		cardName = 'Outfit'..tostring(assetId)

		cardImage = function()
			return outfitImageFetch(assetId)
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

	local card = CardGrid:makeAssetCard(i, cardName, cardImage, clickFunction, isEquipped)
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

	scrollingFrame.ClipsDescendants = true
	if currentPage.typeName then
		local assetTypeId = AssetTypeNames[currentPage.typeName]
		local pageInfo = loadPage(assetTypeId, nextCursor)
		reachedBottom = pageInfo.reachedBottom
		nextCursor = pageInfo.nextCursor

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
		local rows = math.ceil(#skinColorList/SKIN_COLORS_PER_ROW)
		Utilities.create'ImageLabel'
		{
			Name = 'SimpleBackgroundTemplate';
			Image = "rbxasset://textures/ui/Shell/AvatarEditor/color selector/color panel.png";
			Position = UDim2.new(0, -4, 0, -3);
			Size = UDim2.new(0, 490, 0, rows * SKIN_COLOR_BUTTONS_SIZE + (rows+1)*SKIN_COLOR_GRID_PADDING + 8);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect.new(8, 8, 9, 9);
			ZIndex = LayoutInfo.BasicLayer;
			Parent = scrollingFrame
		}

		local equippedFrame = Utilities.create'ImageLabel'
		{
			Name = 'EquippedFrame';
			Image = "rbxasset://textures/ui/Shell/AvatarEditor/color selector/color dot-selected.png";
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.new(0.5, 0, 0.5, 0);
			Size = UDim2.new(1, 10, 1, 10);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			ZIndex = LayoutInfo.BorderMaskLayer;
		}

		Utilities.create'ImageLabel'
		{
			Name = 'CheckMark';
			Image = "rbxasset://textures/ui/Shell/AvatarEditor/icon/ic-checkmark.png";
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.new(0.5, 0, 0.5, 0);
			Size = UDim2.new(0, 32, 0, 32);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			ZIndex = LayoutInfo.BorderMaskLayer;
			Parent = equippedFrame;
		}

		local colorSelector = Utilities.create'ImageLabel'
		{
			Name = 'Selector';
			Image = "rbxasset://textures/ui/Shell/AvatarEditor/color selector/color dot-select.png";
			Position = UDim2.new(0, -12, 0, -12);
			Size = UDim2.new(1, 24, 1, 24);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			ZIndex = LayoutInfo.BorderMaskLayer;
		}

		scrollingFrame.CanvasSize = UDim2.new(0, 0, 0,
			math.ceil(
				#skinColorList/SKIN_COLORS_PER_ROW)*(SKIN_COLOR_BUTTONS_SIZE + SKIN_COLOR_GRID_PADDING)
			+ SKIN_COLOR_GRID_PADDING
			+ SKIN_COLOR_EXTRA_VERTICAL_SHIFT)

		for i,brickColor in pairs(skinColorList) do
			local row = math.ceil(i/SKIN_COLORS_PER_ROW)
			local column = ((i-1)%SKIN_COLORS_PER_ROW)+1
			local colorButton = Utilities.create'ImageButton'
			{
				Name = i < 10 and 'Color0'..i or 'Color'..i;
				Position = UDim2.new(
					0,
					SKIN_COLOR_GRID_PADDING + (column-1)*(SKIN_COLOR_BUTTONS_SIZE + SKIN_COLOR_GRID_PADDING),
					0,
					SKIN_COLOR_GRID_PADDING + (row-1)*(SKIN_COLOR_BUTTONS_SIZE + SKIN_COLOR_GRID_PADDING)
						+ SKIN_COLOR_EXTRA_VERTICAL_SHIFT
				);
				Size = UDim2.new(0, SKIN_COLOR_BUTTONS_SIZE, 0, SKIN_COLOR_BUTTONS_SIZE);
				Image = "rbxasset://textures/ui/Shell/AvatarEditor/color selector/color dot.png";
				ImageColor3 = brickColor.Color;
				AutoButtonColor = false;
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				ZIndex = scrollingFrame.ZIndex + 1;
				SelectionImageObject = colorSelector;
				Parent = scrollingFrame;
			}

			Utilities.create'ImageLabel'
			{
				Name = 'DropShadow';
				Image = "rbxasset://textures/ui/Shell/AvatarEditor/color selector/color dot shadow.png";
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.new(0.5, 0, 0.5, 1);
				Size = UDim2.new(1, 8, 1, 9);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				ZIndex = colorButton.ZIndex - 1;
				Parent = colorButton;
			}

			if i == 1 then
				firstColorButton = colorButton
			end

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

			if getSameBodyColor() == brickColor.number then
				equippedFrame.Parent = colorButton
			end
		end

	elseif currentPage.specialPageType == 'Scale' then
		scrollingFrame.ClipsDescendants = false
		scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 260)

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

		heightSlider.Position = UDim2.new(0, 0, 0, 56)
		heightSlider.Size = UDim2.new(1, 0, 0, 30)
		heightSlider.Parent = scrollingFrame
		local heightDragger = heightSlider:WaitForChild('Dragger')
		local heightDraggerButton = heightDragger:WaitForChild('DraggerButton')
		firstScaleButton = heightDraggerButton

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
			defaultValue)


		widthSlider.Position = UDim2.new(0, 0, 0, 176)
		widthSlider.Size = UDim2.new(1, 0, 0, 30)
		widthSlider.Parent = scrollingFrame

		-- Initialize Head Scale Slider
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
			defaultValue)

		headSlider.Position = UDim2.new(0, 0, 0, 296)
		headSlider.Size = UDim2.new(1, 0, 0, 30)
		headSlider.Parent = scrollingFrame
	end

	-- This is for rendering a generically layed out page
	if thisLoadingContentCall == currentLoadingContentCall then
		local noAssetsLabel = nil
		if not currentPage.special then
			scrollingFrame.CanvasSize =
				UDim2.new(0, 0, 0,
					math.floor((#assetList - 1) / BUTTONS_PER_ROW) * (BUTTONS_SIZE + GRID_PADDING)
					+ BUTTONS_SIZE
					+ SELECTOR_BOTTOM_MIN_DISTANCE)

			CardGrid:setRenderAssetCardCallback( function(...) return this:renderAssetCardByIndex(...) end )

			if #assetList == 0 and
				(reachedBottom or (currentPage.specialPageType and string.find(currentPage.specialPageType, 'Recent'))) and
				not renderedNoAssetsMessage then

				renderedNoAssetsMessage = true

				noAssetsLabel = Utilities.create'TextLabel'
				{
					Name = "NoAssetsLabel";
					Position = UDim2.new(0, 0, 0, 0);
					Size = UDim2.new(1, 0, 1, -SELECTOR_BOTTOM_MIN_DISTANCE);
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					Font = LayoutInfo.RegularFont;
					TextSize = LayoutInfo.ButtonFontSize;
					TextColor3 = LayoutInfo.WhiteTextColor;
					TextXAlignment = Enum.TextXAlignment.Center;
					TextYAlignment = Enum.TextYAlignment.Center;
					TextWrapped = true;
					ZIndex = 3;
					Parent = scrollingFrame;
				}

				scrollingFrame.CanvasSize = UDim2.new(0,scrollingFrame.AbsoluteSize.X,0,scrollingFrame.AbsoluteSize.Y)

				if currentPage.specialPageType and string.find(currentPage.specialPageType, 'Recent') then
					noAssetsLabel.Text = string.format(
						Strings:LocalizedString("NoAssetsPhrase"),
						Strings:LocalizedString("RecentItemsWord"))
				else
					noAssetsLabel.Text = string.format(Strings:LocalizedString("NoAssetsPhrase"), currentPage.title)
				end
			end
		end


		Utilities.fastSpawn(function()
			if reachedBottom
				and not renderedRecommended
				and currentPage.recommendedSort
				and AvatarEditorUsesBrowserWindowCall
				and currentPage.typeName
				and thisLoadingContentCall == currentLoadingContentCall then

				-- Render recommended section
				recommendedDebounceCounter = recommendedDebounceCounter + 1
				local thisRecommendedDebounceCounter = recommendedDebounceCounter
				renderedRecommended = true

				local recommendedLabel = Utilities.create'TextLabel'
				{
					Name = "recommendedTextLabel";
					Size = UDim2.new(1, 0, 0, 24);
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					Font = LayoutInfo.RegularFont;
					Text = Strings:LocalizedString("RecommendedWord");
					TextSize = LayoutInfo.SubHeaderFontSize;
					TextColor3 = LayoutInfo.WhiteTextColor;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextYAlignment = Enum.TextYAlignment.Center;
					ZIndex = LayoutInfo.AssetImageLayer;
				}

				local recommendedAssetListRequest =
					Utilities.httpGet(
						"https://"
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

					local currRow = (#assetList == 0) and 1 or math.ceil(#assetList / BUTTONS_PER_ROW)
					local adjustedStartIndex = currRow * BUTTONS_PER_ROW
					local recommendedCount = 0
					local recommendedYOffset = 40
					for i, itemData in ipairs(recommendedAssetListRequest.data.Items) do
						if itemData and itemData.Item then
							recommendedCount = recommendedCount + 1
							-- Create card for recommended item
							local assetId = itemData.Item.AssetId

							local index = adjustedStartIndex + i
							local cardName = tostring(assetId)
							local cardImage = Urls.assetImageUrl..tostring(assetId)

							local clickFunction = function()
							end

							local card = CardGrid:makeAssetCard(
								index,
								cardName,
								cardImage,
								clickFunction,
								false,
								true,
								recommendedYOffset)

							card.Parent = scrollingFrame
						end
					end

					if recommendedCount > 0 then
						if noAssetsLabel then
							noAssetsLabel.Size = UDim2.new(1, 0, 0, BUTTONS_SIZE)
						end
						recommendedLabel.Position = UDim2.new(0, 0, 0, currRow * (BUTTONS_SIZE + GRID_PADDING) + 4)
						recommendedLabel.Parent = scrollingFrame
						scrollingFrame.CanvasSize = UDim2.new(0, 0, 0,
							math.floor((adjustedStartIndex + recommendedCount - 1) / BUTTONS_PER_ROW) * (BUTTONS_SIZE + GRID_PADDING)
							+ BUTTONS_SIZE
							+ SELECTOR_BOTTOM_MIN_DISTANCE
							+ recommendedYOffset)
					end
				end
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


function this:updateListContent(canvasPositionY)
	-- -100 pixels to give us a buffer to load more content so the user doesn't actually reach the end of the page
	local currBottomY = canvasPositionY + scrollingFrame.AbsoluteWindowSize.Y
	local scrollingFrameBottomY = scrollingFrame.CanvasSize.Y.Offset
	local loadingBufferY = SELECTOR_BOTTOM_MIN_DISTANCE + 2 * (BUTTONS_SIZE + GRID_PADDING)
	if currBottomY + loadingBufferY >= scrollingFrameBottomY then
		if not loadingContent
			and not renderedRecommended
			and currentPage.infiniteScrolling
			and not reachedBottomOfCurrentPage then

			reachedBottomOfCurrentPage = loadMoreListContent()
			CardGrid:tryUpdateVisibleAssetCards()
		end
	end
end

function this:hasAssets()
	return currentPage.special or (CardGrid and CardGrid:getFirstCard())
end

function this:focusOnCard()
	if CardGrid and CardGrid:getFirstCard() then
		GuiService.SelectedCoreObject = CardGrid:getFirstCard()
	elseif currentPage.specialPageType == 'Skin Tone' then
		GuiService.SelectedCoreObject = firstColorButton
	elseif currentPage.specialPageType == 'Scale' then
		GuiService.SelectedCoreObject = firstScaleButton
	end
end

local function tweenPage(isFullview)
	local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

	if isFullview then
		TweenController(scrollingFrame, tweenInfo, { Position = UDim2.new(1, 600, 0, 270) })
	else
		TweenController(scrollingFrame, tweenInfo, { Position = UDim2.new(1, -99, 0, 270) })
	end
end

local function update(newState, oldState)
	if newState.FullView ~= oldState.FullView then
		tweenPage(newState.FullView)
	end

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

return function(inUserId, inScrollingFrame, inCharacterManager)
	--Reset all mutables when recreate the PageManager
	currentPage = nil
	userId = nil
	scrollingFrame = nil
	firstColorButton = nil
	firstScaleButton = nil
	CardGrid = nil
	characterManager = nil
	loadingContent = false
	loadingSpinner = nil
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

	CardGrid = CreateCardGrid(
		scrollingFrame,
		function()
			return assetList
		end,
		true
	)

	Utilities.fastSpawn(updateAvatarRules)

	function this:Focus()
		storeChangedCn = AppState.Store.Changed:Connect(update)
		CardGrid:Focus()
		GuiService:AddSelectionParent("ScrollingFrame", scrollingFrame)
	end

	function this:RemoveFocus()
		storeChangedCn = Utilities.disconnectEvent(storeChangedCn)
		CardGrid:RemoveFocus()
		GuiService:RemoveSelectionGroup("ScrollingFrame")
	end

	return this
end

