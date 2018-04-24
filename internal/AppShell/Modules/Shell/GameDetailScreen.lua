--[[
			// GameDetailScreen.lua
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local GuiService = game:GetService('GuiService')
local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)

local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local GameData = require(ShellModules:FindFirstChild('GameData'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local ImageOverlayModule = require(ShellModules:FindFirstChild('ImageOverlay'))
local ReportOverlayModule = require(ShellModules:FindFirstChild('ReportOverlay'))
local BadgeSortModule = require(ShellModules:FindFirstChild('BadgeSort'))
local ScrollingTextBox = require(ShellModules:FindFirstChild('ScrollingTextBox'))
local PopupText = require(ShellModules:FindFirstChild('PopupText'))
local LoadingWidget = require(ShellModules:FindFirstChild('LoadingWidget'))
local Errors = require(ShellModules:FindFirstChild('Errors'))
local ErrorOverlayModule = require(ShellModules:FindFirstChild('ErrorOverlay'))
local GameJoinModule = require(ShellModules:FindFirstChild('GameJoin'))
local ThumbnailLoader = require(ShellModules:FindFirstChild('ThumbnailLoader'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local VoteViewModule = require(ShellModules:FindFirstChild('VoteView'))
local BaseScreen = require(ShellModules:FindFirstChild('BaseScreen'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local WidgetModules = ShellModules:FindFirstChild("Widgets")
local MoreButtonModule = require(WidgetModules:FindFirstChild("MoreButton"))
local AchievementManager = require(ShellModules:FindFirstChild('AchievementManager'))

local function CreateGameDetail(placeId)
	local this = BaseScreen()

	local PLAY_BUTTON_SIZE = Vector2.new(228,72)
	local FAVORITE_BUTTON_SIZE = Vector2.new(228,72)

	local LEFT_MARGIN = 8
	local TWEEN_TIME = 0.5
	local BASE_ZINDEX = 2
	local baseButtonTextColor = GlobalSettings.WhiteTextColor
	local selectedButtonTextColor = GlobalSettings.TextSelectedColor

	local selectionChangedCn = nil
	local dataModelViewChangedCn = nil
	local playButtonDebounce = false
	local canJoinGame = true
	local returnedFromGame = true
	local gameData = nil

	--[[ Cache Game Data ]]--
	local getGameDataDebounce = false
	--This func will be async if placeId not stored in gamecacheddata
	local function getDataAsync()
		while getGameDataDebounce do
			wait()
		end
		getGameDataDebounce = true
		if not gameData then
			gameData = GameData:GetGameData(placeId, true)
			--We get details(refresh) only once to make sure the game detail pieces are synced
			gameData:GetGameDetailsAsync()
		end
		getGameDataDebounce = false
		return gameData
	end

	-- override selection image
	local edgeSelectionImage = Utility.Create'ImageLabel'
	{
		Name = "EdgeSelectionImage";
		Size = UDim2.new(1, 32, 1, 32);
		Position = UDim2.new(0, -16, 0, -16);
		Image = 'rbxasset://textures/ui/SelectionBox.png';
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(21,21,41,41);
		BackgroundTransparency = 1;
	}

--[[ Top Level Elements ]]--
	--This Scrolling Frame ensures that we can select sth off screen, so we won't lose selection
	local GameDetailContainer = Utility.Create'ScrollingFrame'
	{
		Name = "ScrollingFrame";
		ClipsDescendants = false;
		Size = UDim2.new(1, 0, 1, 0);
		CanvasSize = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		Parent = this.Container;
		ScrollingEnabled = false;
		Selectable = false;
		BorderSizePixel = 0;
		ScrollBarThickness = 0;
	}

	this:SetTitle('')
	spawn(function()
		local data = getDataAsync()
		this:SetTitle(data.Name or '')
	end)

	--[[ Inner Class - ContentManager - Handles Positioning/Visiblity of content on this screen ]]--
	local function createContentManager(size, position, parent)
		local contentManager = {}

		-- items are an array from left to right
		local contentItems = {}
		local isTweeningContentLeft = false
		local isTweeningContentRight = false

		local contentContainer = Utility.Create'Frame'
		{
			Name = "ContentContainer";
			Size = size;
			Position = position;
			BackgroundTransparency = 1;
			Parent = parent;
		}

		local function recalcLayout()
			local offset = 0
			for i = 1, #contentItems do
				local currentItem = contentItems[i]
				currentItem.Item.Position = UDim2.new(0, offset + currentItem.Padding.x, 0, currentItem.Padding.y)
				offset = offset + currentItem.Item.Size.X.Offset + currentItem.Padding.x
			end
		end

		function contentManager:AddItem(newItem, padding)
			local contentItem = {}
			contentItem.Item = newItem
			contentItem.Padding = padding or Vector2.new(0, 0)
			newItem.Parent = contentContainer
			table.insert(contentItems, contentItem)
			recalcLayout()
		end

		function contentManager:RemoveItem(itemToRemove)
			for i = 1, #contentItems do
				local contentItem = contentItems[i]
				if contentItem.Item == itemToRemove then
					contentItem.Item.Parent = nil
					table.remove(contentItems, i)
					recalcLayout()
					return
				end
			end
		end

		function contentManager:TweenContentLeft()
			if not isTweeningContentLeft then
				isTweeningContentLeft = true
				contentContainer:TweenPosition(UDim2.new(0, LEFT_MARGIN, 0, contentContainer.Position.Y.Offset), Enum.EasingDirection.InOut,
					Enum.EasingStyle.Quad, TWEEN_TIME, true, function(tweenStatus)
						isTweeningContentLeft = false
					end)
			end
		end

		function contentManager:TweenContentRight()
			if not isTweeningContentRight then
				isTweeningContentRight = true
				contentContainer:TweenPosition(UDim2.new(-1, LEFT_MARGIN, 0, contentContainer.Position.Y.Offset), Enum.EasingDirection.InOut,
					Enum.EasingStyle.Quad, TWEEN_TIME, true, function(tweenStatus)
						isTweeningContentRight = false
					end)
			end
		end

		function contentManager:TweenContent(selectedObject)
			if selectedObject and selectedObject:IsDescendantOf(contentContainer) then
				-- find parent container of selection
				local parentContainer = selectedObject
				while parentContainer.Parent ~= contentContainer do
					parentContainer = parentContainer.Parent
				end

				if parentContainer.Position.X.Offset + parentContainer.Size.X.Offset > contentContainer.AbsoluteSize.x then
					self:TweenContentRight()
				elseif parentContainer.Position.X.Offset < contentContainer.AbsoluteSize.x then
					self:TweenContentLeft()
				end
			end
		end

		function contentManager:ResetTween()
			isTweeningContentLeft = false
			isTweeningContentRight = false
		end

		return contentManager
	end

	local MyContentManager = createContentManager(UDim2.new(1, 0, 0, 622), UDim2.new(0, LEFT_MARGIN, 0, 210), GameDetailContainer)

	local PlayButton = Utility.Create'ImageButton'
	{
		Name = "PlayButton";
		Size = UDim2.new(0, PLAY_BUTTON_SIZE.X, 0, PLAY_BUTTON_SIZE.Y);
		Position = UDim2.new(0, 0, 1, -77);
		BackgroundTransparency = 1;
		ImageColor3 = GlobalSettings.GreenButtonColor;
		Image = GlobalSettings.RoundCornerButtonImage;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(Vector2.new(4, 4), Vector2.new(28, 28));
		Parent = GameDetailContainer;
		ZIndex = BASE_ZINDEX;

		SoundManager:CreateSound('MoveSelection');
		AssetManager.CreateShadow(1)
	}

	local PlayText = Utility.Create'TextLabel'
	{
		Name = "PlayText";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		Text = Strings:LocalizedString("PlayWord");
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextColor3 = baseButtonTextColor;
		ZIndex = BASE_ZINDEX;
		Parent = PlayButton;
	}
	Utility.ResizeButtonWithText(PlayButton, PlayText, GlobalSettings.TextHorizontalPadding)

	local FavoriteButton = Utility.Create'ImageButton'
	{
		Name = "FavoriteButton";
		Size = UDim2.new(0, FAVORITE_BUTTON_SIZE.X, 0, FAVORITE_BUTTON_SIZE.Y);
		BackgroundTransparency = 1;
		ImageColor3 = GlobalSettings.GreyButtonColor;
		ScaleType = Enum.ScaleType.Slice;
		Parent = GameDetailContainer;
		Position = UDim2.new(0, PlayButton.Size.X.Offset + 10, 1, -77);
		Image = GlobalSettings.RoundCornerButtonImage;
		SliceCenter = Rect.new(Vector2.new(4, 4), Vector2.new(28, 28));
		ZIndex = BASE_ZINDEX;

		SoundManager:CreateSound('MoveSelection');
		AssetManager.CreateShadow(1)
	}

	FavoriteButton.NextSelectionLeft = PlayButton;
	FavoriteButton.NextSelectionDown = FavoriteButton;
	FavoriteButton.NextSelectionUp = FavoriteButton;
	FavoriteButton.NextSelectionRight = FavoriteButton;

	local FavoriteText = Utility.Create'TextLabel'
	{
		Name = "FavoriteText";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		Text = Strings:LocalizedString("FavoriteWord");
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextColor3 = baseButtonTextColor;
		ZIndex = BASE_ZINDEX;
		Parent = FavoriteButton;
	}

	local FavoriteStarImage = Utility.Create'ImageLabel'
	{
		Name = "FavoriteStarImage";
		BackgroundTransparency = 1;
		Visible = false;
		ZIndex = BASE_ZINDEX;
		Parent = FavoriteButton;
		Image = "rbxasset://textures/ui/Shell/Icons/FavoriteStar@1080.png";
		Size = UDim2.new(0,32,0,31);
	}
	FavoriteStarImage.Position = UDim2.new(0, 16, 0.5, -FavoriteStarImage.Size.Y.Offset / 2)
	--Make it big enough to hold the star and text
	Utility.ResizeButtonWithDynamicText(FavoriteButton, FavoriteText, {Strings:LocalizedString("FavoritedWord")},
		GlobalSettings.TextHorizontalPadding + (FavoriteStarImage.Position.X.Offset + FavoriteStarImage.Size.X.Offset + 12) / 2)

	local FavoriteRedirectFrame = Utility.Create'Frame'
	{
		Name = "FavoriteRedirectFrame";
		Size = UDim2.new(1, 0, 0, FavoriteButton.Size.Y.Offset);
		Position = UDim2.new(0, FavoriteButton.Position.X.Offset + FavoriteButton.Size.X.Offset, 1, FavoriteButton.Position.Y.Offset);
		BackgroundTransparency = 1;
		Selectable = true;
		Parent = GameDetailContainer;
	}

--[[ Scrolling Content Items ]]--

	--[[ Icon Image ]]--
	local GameIconContainer = Utility.Create'Frame'
	{
		Name = "GameIconContainer";
		Size = UDim2.new(0, 566, 1, 0);
		BackgroundTransparency = 1;
	}
	MyContentManager:AddItem(GameIconContainer, Vector2.new(0, 0))
	local GameIconImage = Utility.Create'ImageLabel'
	{
		Name = "GameIconImage";
		Size = UDim2.new(1, 0, 0, 566);
		Position = UDim2.new(0, 0, 0.5, -566/2);
		BackgroundTransparency = 0;
		BorderSizePixel = 0;
		BackgroundColor3 = Color3.new();
		ZIndex = BASE_ZINDEX;
		Parent = GameIconContainer;
		AssetManager.CreateShadow(1);
	}
	local function loadGameIcon(assetId)
		local gameIconLoader = ThumbnailLoader:Create(GameIconImage, assetId,
			ThumbnailLoader.Sizes.Medium, ThumbnailLoader.AssetType.SquareIcon)
		spawn(function()
			gameIconLoader:LoadAsync(true, true, { ZIndex = GameIconImage.ZIndex } )
		end)
	end

	spawn(function()
		local data = getDataAsync()
		loadGameIcon(data.IconId)
		GameData:AddRelatedGuiObject(placeId, GameIconImage)
	end)

	--[[ Rating and Description ]]--
	local RatingDescriptionContainer = Utility.Create'Frame'
	{
		Name = "RatingDescriptionContainer";
		Size = UDim2.new(0, 394, 1, 0);
		BackgroundTransparency = 1;
	}
	MyContentManager:AddItem(RatingDescriptionContainer, Vector2.new(38, 0))
	local RatingDescriptionTitle = Utility.Create'TextLabel'
	{
		Name = "RatingDescriptionTitle";
		Size = UDim2.new(0, 0, 0, 33);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		Text = Strings:LocalizedString("RatingDescriptionTitle");
		TextXAlignment = Enum.TextXAlignment.Left;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.SubHeaderSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Parent = RatingDescriptionContainer;
	}
	local VoteView = VoteViewModule()
	VoteView:SetPosition(UDim2.new(0, 0, 0, RatingDescriptionTitle.Size.Y.Offset))
	local VoteViewContainer = VoteView.Container

	local RatingDescriptionLineBreak = Utility.Create'Frame'
	{
		Name = "RatingDescriptionLineBreak";
		Size = UDim2.new(0, 362, 0, 2);
		Position = UDim2.new(0, 0, 0, VoteViewContainer.Position.Y.Offset + VoteViewContainer.Size.Y.Offset);
		BorderSizePixel = 0;
		BackgroundColor3 = GlobalSettings.LineBreakColor;
		Parent = RatingDescriptionContainer;
	}

	--[[ Description Container ]]--
	local DescriptionContainer = Utility.Create'Frame'
	{
		Name = "DescriptionContainer";
		Size = UDim2.new(1, 0, 0, 430);
		Position = UDim2.new(0, 0, 0, RatingDescriptionLineBreak.Position.Y.Offset + RatingDescriptionLineBreak.Size.Y.Offset + 20);
		BackgroundTransparency = 1;
		Parent = RatingDescriptionContainer;
	}
	local DescriptionScrollingTextBox = ScrollingTextBox(UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), DescriptionContainer)

	--Used to overwrite the selection when the voteview/descriptionScrollingTextBox selectable changes
	local function updateRatingDescriptionSelection()
		local defaultVoteSelection = VoteView:GetDefaultSelection()
		if defaultVoteSelection then --Make sure the vote view is loaded when overwrite the selections
			defaultVoteSelection.NextSelectionLeft = FavoriteButton

			if DescriptionScrollingTextBox:IsSelectable() then
				local descriptionSelectionObject = DescriptionScrollingTextBox:GetSelectableObject()
				descriptionSelectionObject.NextSelectionUp = defaultVoteSelection
				defaultVoteSelection.NextSelectionDown = descriptionSelectionObject
				FavoriteButton.NextSelectionRight = descriptionSelectionObject
				FavoriteButton.NextSelectionUp = descriptionSelectionObject

				descriptionSelectionObject.NextSelectionLeft = FavoriteButton
				descriptionSelectionObject.NextSelectionDown = FavoriteButton
			else
				defaultVoteSelection.NextSelectionDown = FavoriteButton
				FavoriteButton.NextSelectionRight = defaultVoteSelection
				FavoriteButton.NextSelectionUp = defaultVoteSelection
			end
		end
	end

--[[ Line Break ]]--
	local RatingThumbsLineBreak = Utility.Create'Frame'
	{
		Name = "LineBreak";
		Size = UDim2.new(0, 2, 0, 566);
		BackgroundTransparency = 0;
		BorderSizePixel = 0;
		BackgroundColor3 = Color3.new(78/255, 78/255, 78/255);
		BorderSizePixel = 0;
	}
	MyContentManager:AddItem(RatingThumbsLineBreak, Vector2.new(32, 33))

--[[ Additional Thumbs ]]--
	local ThumbsContainer = Utility.Create'Frame'
	{
		Name = "ThumbsContainer";
		Size = UDim2.new(0, 630, 1, 0);
		BackgroundTransparency = 1;
	}
	MyContentManager:AddItem(ThumbsContainer, Vector2.new(52, 0))

	local ThumbsTitle = RatingDescriptionTitle:Clone()
	ThumbsTitle.Name = "ThumbsTitle"
	ThumbsTitle.Text = Strings:LocalizedString("GameImagesTitle")
	ThumbsTitle.Parent = ThumbsContainer

	local ThumbsContent = Utility.Create'Frame'
	{
		Name = "ThumbsContent";
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		Parent = ThumbsContainer;
	}

	local MainThumbImage = Utility.Create'ImageButton'
	{
		Name = "MainThumbImage";
		Size = UDim2.new(1, 0, 0, 374);
		Position = UDim2.new(0, 0, 0, ThumbsTitle.Size.Y.Offset);
		BackgroundTransparency = 0;
		BorderSizePixel = 0;
		BackgroundColor3 = Color3.new();
		ZIndex = BASE_ZINDEX;
		Parent = ThumbsContent;

		SoundManager:CreateSound('MoveSelection');
		AssetManager.CreateShadow(1);
	}
	local SmThumbLeft = Utility.Create'ImageButton'
	{
		Name = "SmThumbLeft";
		Size = UDim2.new(0, 310, 0, 184);
		Position = UDim2.new(0, 0, 0, MainThumbImage.Position.Y.Offset + MainThumbImage.Size.Y.Offset + 8);
		BackgroundTransparency = 0;
		BackgroundColor3 = Color3.new();
		BorderSizePixel = 0;
		ZIndex = BASE_ZINDEX;
		Parent = ThumbsContent;

		SoundManager:CreateSound('MoveSelection');
		AssetManager.CreateShadow(1);
	}
	SmThumbRight = SmThumbLeft:Clone()
	SmThumbRight.Name = "SmThumbRight"
	SmThumbRight.Position = UDim2.new(0, SmThumbLeft.Size.X.Offset + 10, 0, SmThumbRight.Position.Y.Offset)
	SmThumbRight.Parent = ThumbsContent

	local MoreThumbsButton = MoreButtonModule()
	MoreThumbsButton.Size = UDim2.new(0, 108, 0, 50)

	MoreThumbsButton.Image = "rbxasset://textures/ui/Shell/Buttons/MoreButton@1080.png"

	MoreThumbsButton.Position = UDim2.new(1, -MoreThumbsButton.Size.X.Offset + 3, 0,
		SmThumbRight.Position.Y.Offset + SmThumbRight.Size.Y.Offset + 12)
	MoreThumbsButton.Visible = false
	MoreThumbsButton.ZIndex = BASE_ZINDEX
	MoreThumbsButton.SelectionImageObject = nil
	MoreThumbsButton.Parent = ThumbsContent

--[[ Badges ]]--
	local BadgeContainer = Utility.Create'Frame'
	{
		Name = "BadgeContainer";
		Size = UDim2.new(0, 568, 1, 0);
		BackgroundTransparency = 1;
	}
	MyContentManager:AddItem(BadgeContainer, Vector2.new(52, 0))
	local BadgeTitle = RatingDescriptionTitle:Clone()
	BadgeTitle.Name = "BadgeTitle"
	BadgeTitle.Text = Strings:LocalizedString("GameBadgesTitle")
	BadgeTitle.Parent = BadgeContainer

	--[[ Related Games ]]--
	local RelatedGamesContainer = Utility.Create'Frame'
	{
		Name = "RelatedGamesContainer";
		Size = BadgeContainer.Size;
		BackgroundTransparency = 1;
	}

	local HideRelatedGames = not AchievementManager:AllGamesUnlocked()
	if not HideRelatedGames then
		MyContentManager:AddItem(RelatedGamesContainer, Vector2.new(52, 0))
	end

	local RelatedGamesTitle = BadgeTitle:Clone()
	RelatedGamesTitle.Name = "RelatedGamesTitle"
	RelatedGamesTitle.Text = Strings:LocalizedString("RelatedGamesTitle")
	RelatedGamesTitle.Parent = RelatedGamesContainer

	local RelatedGamesImageFrame = Utility.Create'Frame'
	{
		Name = "RelatedGamesImageFrame";
		Size = UDim2.new(1, 0, 566, 0);
		Position = UDim2.new(0, 0, 0, RelatedGamesTitle.Size.Y.Offset);
		BackgroundTransparency = 1;
		Parent = RelatedGamesContainer;
	}
	-- 2x2 grid of related games
	local RelatedGameImages = {}
	local relatedIndex = 1
	local relatedMargin = 14
	local relatedSize = (566 - relatedMargin) / 2
	for i = 1, 2 do
		for j = 1, 2 do
			local image = Utility.Create'ImageButton'
			{
				Name = tostring(relatedIndex);
				Size = UDim2.new(0, relatedSize, 0, relatedSize);
				Position = UDim2.new(0, (i - 1) * relatedSize + (i - 1) * relatedMargin, 0, (j - 1) * relatedSize + (j - 1) * relatedMargin);
				BackgroundTransparency = 0;
				BackgroundColor3 = GlobalSettings.GreyButtonColor;
				BorderSizePixel = 0;
				ZIndex = BASE_ZINDEX;
				Parent = RelatedGamesImageFrame;

				SoundManager:CreateSound('MoveSelection');
				AssetManager.CreateShadow(1);
			}
			RelatedGameImages[relatedIndex] = image
			relatedIndex = relatedIndex + 1
		end
	end

	local RelatedGamesMoreDetailsLineBreak = RatingThumbsLineBreak:Clone()
	RelatedGamesMoreDetailsLineBreak.Name = "RelatedGamesMoreDetailsLineBreak"
	MyContentManager:AddItem(RelatedGamesMoreDetailsLineBreak, Vector2.new(52, RelatedGamesMoreDetailsLineBreak.Position.Y.Offset))

	--[[ More Details ]]--
	local MoreDetailsContainer = Utility.Create'Frame'
	{
		Name = "MoreDetailsContainer";
		Size = UDim2.new(0, 386, 1, 0);
		BackgroundTransparency = 1;
		Selectable = true;
	}
	MyContentManager:AddItem(MoreDetailsContainer, Vector2.new(52, 0))

	local MoreDetailsTitle = RelatedGamesTitle:Clone()
	MoreDetailsTitle.Name = "MoreDetailsTitle"
	MoreDetailsTitle.Text = Strings:LocalizedString("MoreDetailsTitle")
	MoreDetailsTitle.Parent = MoreDetailsContainer

	local MoreDetailsContent = Utility.Create'Frame'
	{
		Name = "MoreDetailsContent";
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		Parent = MoreDetailsContainer;
	}
	local UpdatedText = Utility.Create'TextLabel'
	{
		Name = "UpdatedText";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0, 0, 0, MoreDetailsTitle.Size.Y.Offset + 48);
		BackgroundTransparency = 1;
		Text = Strings:LocalizedString("LastUpdatedWord");
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.SmallTitleSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		TextXAlignment = Enum.TextXAlignment.Left;
		Parent = MoreDetailsContent;
	}
	local LastUpdatedText = Utility.Create'TextLabel'
	{
		Name = "LastUpdatedText";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0, 0, 0, UpdatedText.Position.Y.Offset + 34);
		BackgroundTransparency = 1;
		Text = "";
		Font = GlobalSettings.LightFont;
		FontSize = GlobalSettings.TitleSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		TextXAlignment = Enum.TextXAlignment.Left;
		Parent = MoreDetailsContent;
	}
	local CreationText = UpdatedText:Clone()
	CreationText.Name = "CreationText"
	CreationText.Position = UDim2.new(0, 0, 0, LastUpdatedText.Position.Y.Offset + 70)
	CreationText.Text = Strings:LocalizedString("CreationDateWord")
	CreationText.Parent = MoreDetailsContent

	local CreationDateText = LastUpdatedText:Clone()
	CreationDateText.Name = "CreationDateText"
	CreationDateText.Position = UDim2.new(0, 0, 0, CreationText.Position.Y.Offset + 34)
	CreationDateText.Parent = MoreDetailsContent

	local MaxPlayersText = UpdatedText:Clone()
	MaxPlayersText.Name = "MaxPlayersText"
	MaxPlayersText.Position = UDim2.new(0, 0, 0, CreationDateText.Position.Y.Offset + 70)
	MaxPlayersText.Text = Strings:LocalizedString("MaxPlayersWord")
	MaxPlayersText.Parent = MoreDetailsContent

	local MaxPlayersCountText = LastUpdatedText:Clone()
	MaxPlayersCountText.Name = "MaxPlayersCountText"
	MaxPlayersCountText.Position = UDim2.new(0, 0, 0, MaxPlayersText.Position.Y.Offset + 34)
	MaxPlayersCountText.Parent = MoreDetailsContent

	local CreatorText = UpdatedText:Clone()
	CreatorText.Name = "CreatorText"
	CreatorText.Position = UDim2.new(0, 0, 0, MaxPlayersCountText.Position.Y.Offset + 70)
	CreatorText.Text = Strings:LocalizedString("CreatedByWord")
	CreatorText.Parent = MoreDetailsContent

	local CreatorIcon = Utility.Create'ImageLabel'
	{
		Name = "CreatorIcon";
		Size = UDim2.new(0, 32, 0, 32);
		Position = UDim2.new(0, 0, 0, CreatorText.Position.Y.Offset + 34 - 14);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/RobloxIcon32.png';
		Parent = MoreDetailsContent;
	}
	local CreatorNameText = LastUpdatedText:Clone()
	CreatorNameText.Name = "CreatorNameText"
	CreatorNameText.Position = UDim2.new(0, CreatorIcon.Size.X.Offset + 8, 0, CreatorText.Position.Y.Offset + 34)
	CreatorNameText.Parent = MoreDetailsContent

	local DetailsBottomLineBreak = Utility.Create'Frame'
	{
		Name = "DetailsBottomLineBreak";
		Size = UDim2.new(0, 308, 0, 2);
		Position = UDim2.new(0, 107, 0, MoreDetailsTitle.Size.Y.Offset + 566 - 2);
		BorderSizePixel = 0;
		BackgroundColor3 = GlobalSettings.LineBreakColor;
		Parent = MoreDetailsContainer;
	}
	local ReportFrame = Utility.Create'TextButton'
	{
		Name = "ReportFrame";
		Size = UDim2.new(0, 91, 0, 91);
		Position = UDim2.new(0, 0, 0, DetailsBottomLineBreak.Position.Y.Offset - 95);
		BackgroundColor3 = GlobalSettings.GreyButtonColor;
		BackgroundTransparency = 0;
		BorderSizePixel = 0;
		Text = "";
		Parent = MoreDetailsContainer;
		ZIndex = BASE_ZINDEX;

		SoundManager:CreateSound('MoveSelection');
		AssetManager.CreateShadow(1);
	}
	local ReportIcon = Utility.Create'ImageLabel'
	{
		Name = "ReportIcon";
		BackgroundTransparency = 1;
		ZIndex = BASE_ZINDEX;
		Parent = ReportFrame;
		Image = "rbxasset://textures/ui/Shell/Icons/ReportIcon@1080.png";
		Size = UDim2.new(0,52,0,43);
	}
	ReportIcon.Position = UDim2.new(0.5, -ReportIcon.Size.X.Offset / 2, 0.5, -ReportIcon.Size.Y.Offset / 2)
	local ReportText = Utility.Create'TextLabel'
	{
		Name = "ReportText";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(1, 16, 0.5, 0);
		BackgroundTransparency = 1;
		Font = GlobalSettings.LightFont;
		FontSize = GlobalSettings.TitleSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		TextXAlignment = Enum.TextXAlignment.Left;
		Text = Strings:LocalizedString("ReportGameWord");
		Parent = ReportFrame;
	}
	ReportFrame.MouseButton1Click:connect(function()
		ScreenManager:OpenScreen(ReportOverlayModule:CreateReportOverlay(ReportOverlayModule.ReportType.REPORT_GAME, placeId), false)
	end)

	--[[ Custom Selection Logic ]]--
	PlayButton.NextSelectionRight = FavoriteButton
	SmThumbLeft.NextSelectionDown = MoreThumbsButton
	SmThumbLeft.NextSelectionRight = SmThumbRight

	local function JoinGame()
		if canJoinGame and returnedFromGame then
			canJoinGame = false
			local data = getDataAsync()
			local creatorUserId = nil
			if data then
				creatorUserId = data.CreatorUserId
			end
			GameJoinModule:StartGame(GameJoinModule.JoinType.Normal, placeId, creatorUserId)
			canJoinGame = true
		end
	end

	local function toggleFavoriteButton(value)
		if value == true then
			FavoriteStarImage.Visible = true
			FavoriteText.Position = UDim2.new(0, FavoriteStarImage.Position.X.Offset + FavoriteStarImage.Size.X.Offset + 12, 0, 0)
			FavoriteText.Text = Strings:LocalizedString("FavoritedWord")
			FavoriteText.TextXAlignment = Enum.TextXAlignment.Left
		elseif value == false then
			FavoriteStarImage.Visible = false
			FavoriteText.Position = UDim2.new(0, 0, 0, 0)
			FavoriteText.Text = Strings:LocalizedString("FavoriteWord")
			FavoriteText.TextXAlignment = Enum.TextXAlignment.Center
		end
	end

	--[[ SelectionGained/Lost Connections ]]--
	PlayButton.SelectionGained:connect(function()
		PlayButton.ImageColor3 = GlobalSettings.GreenSelectedButtonColor
		PlayText.TextColor3 = selectedButtonTextColor
	end)
	PlayButton.SelectionLost:connect(function()
		PlayButton.ImageColor3 = GlobalSettings.GreenButtonColor
		PlayText.TextColor3 = baseButtonTextColor
	end)
	FavoriteButton.SelectionGained:connect(function()
		FavoriteButton.ImageColor3 = GlobalSettings.GreySelectedButtonColor
		FavoriteText.TextColor3 = selectedButtonTextColor
	end)
	FavoriteButton.SelectionLost:connect(function()
		FavoriteButton.ImageColor3 = GlobalSettings.GreyButtonColor
		FavoriteText.TextColor3 = baseButtonTextColor
	end)
	MoreDetailsContainer.SelectionGained:connect(function()
		-- redirect
		Utility.SetSelectedCoreObject(ReportFrame)
	end)
	FavoriteRedirectFrame.SelectionGained:connect(function()
		Utility.SetSelectedCoreObject(FavoriteButton)
	end)

	--[[ Input Events ]]--
	PlayButton.MouseButton1Click:connect(function()
		SoundManager:Play('ButtonPress')
		if playButtonDebounce then return end
		playButtonDebounce = true
		JoinGame()
		playButtonDebounce = false
	end)

	local favoriteDebounce = false
	FavoriteButton.MouseButton1Click:connect(function()
		SoundManager:Play('ButtonPress')
		if favoriteDebounce then return end
		favoriteDebounce = true
		local data = getDataAsync()
		if data then
			local success, reason = data:PostFavoriteAsync()
			if success == true then
				toggleFavoriteButton(data.IsFavorited)
			elseif reason then
				local err = Errors.Favorite[reason]
				ScreenManager:OpenScreen(ErrorOverlayModule(err), false)
			end
		end
		favoriteDebounce = false
	end)

	--[[ Content Set Functions ]]--
	local function connectThumbImage(image, index, thumbIds)
		local loader = ThumbnailLoader:Create(image, thumbIds[index], ThumbnailLoader.Sizes.Large,
			ThumbnailLoader.AssetType.Icon, false)
		image.MouseButton1Click:connect(function()
			SoundManager:Play('OverlayOpen')
			ScreenManager:OpenScreen(ImageOverlayModule(thumbIds, index), false)
		end)
		spawn(function()
			loader:LoadAsync(true, true, { ZIndex = image.ZIndex } )
		end)
	end
	local function setAdditionalThumbs(thumbIds)
		if #thumbIds >= 3 then
			connectThumbImage(MainThumbImage, 1, thumbIds)
			connectThumbImage(SmThumbLeft, 2, thumbIds)
			connectThumbImage(SmThumbRight, 3, thumbIds)

			if #thumbIds > 3 then
				MoreThumbsButton.Visible = true
				MoreThumbsButton.MouseButton1Click:connect(function()
					SoundManager:Play('OverlayOpen')
					ScreenManager:OpenScreen(ImageOverlayModule(thumbIds, 1), false)
				end)
			end
		else
			MyContentManager:RemoveItem(ThumbsContainer)
		end
	end
	local function setRelatedGames(placeIds)
		if #placeIds > 0 then
			for i = 1, #RelatedGameImages do
				local image = RelatedGameImages[i]
				if placeIds[i] then
					local thisData = GameData:GetGameData(placeIds[i])
					local thumbLoader = ThumbnailLoader:Create(image, thisData.IconId,
						ThumbnailLoader.Sizes.Medium, ThumbnailLoader.AssetType.SquareIcon)
					spawn(function()
						thumbLoader:LoadAsync(true, true, { ZIndex = image.ZIndex } )
					end)
					-- connect open detail event
					image.MouseButton1Click:connect(function()
						EventHub:dispatchEvent(EventHub.Notifications["OpenGameDetail"], thisData.PlaceId, thisData.Name, thisData.IconId)
					end)
					PopupText(image, thisData["Name"])
					GameData:AddRelatedGuiObject(placeId, image)
				end
			end
		else
			MyContentManager:RemoveItem(RelatedGamesContainer)
		end
	end
	local function setNoteDisplay(OverrideAvatar, IsExperimental)
		local noteText = ""
		if OverrideAvatar then
			noteText = Strings:LocalizedString("CustomAvatarPhrase")
		end

		if IsExperimental then
			local experimentalGamePhrase = Strings:LocalizedString("ExperimentalGamePhrase")
			noteText = noteText ~= "" and (noteText.."\n") or noteText
			noteText = noteText..experimentalGamePhrase
		end

		if noteText ~= "" then
			local noteFrame = Utility.Create'Frame'
			{
				Name = "NoteFrame";
				Size = UDim2.new(1, 0, 0.1, 0);
				BackgroundTransparency = 1;
				Parent = DescriptionContainer;
			}
			local noteText = Utility.Create'TextLabel'
			{
				Name = "NoteText";
				Size = UDim2.new(0, 0, 0, 0);
				Position = UDim2.new(0, 190, 0.5, 0);
				BackgroundTransparency = 1;
				Font = GlobalSettings.BoldFont;
				FontSize = GlobalSettings.SubHeaderSize;
				TextColor3 = GlobalSettings.GreyTextColor;
				Text = noteText;
				Parent = noteFrame;
			}
			DescriptionScrollingTextBox:SetPosition(UDim2.new(0, 0, 0.15, 0))
			DescriptionScrollingTextBox:SetSize(UDim2.new(1, 0, 0.85, 0))
		else
			DescriptionScrollingTextBox:SetPosition(UDim2.new(0, 0, 0, 0))
			DescriptionScrollingTextBox:SetSize(UDim2.new(1, 0, 1, 0))
		end
	end

	--[[ Initialize Content - Don't Block ]]--
	local scrollingTextBoxSelectableChangedCn = nil

	local function waitForTweensToFinish()
		while this and this.TransitionTweens and this.TransitionTweens[1] and not this.TransitionTweens[1]:IsFinished() do
			wait()
		end
	end
	local function concatTables(t1, t2)
		for _, value in pairs(t2) do
			table.insert(t1, value)
		end
	end

	--This is a utility class to update the selection between each game detail page "Chunk"
	local function CreateChunk(container, titleFrame)
		local this = {}
		this.Container = container
		this.SelectionHolder = Utility.Create'Frame'
		{
			Name = "SelectionHolder";
			Size = UDim2.new(1, 0, 1, -titleFrame.Size.Y.Offset);
			Position = UDim2.new(0, 0, 0, titleFrame.Size.Y.Offset);
			BackgroundTransparency = 1;
			Parent = this.Container;
			Selectable = true;
		}

		this.DefaultSelection = this.SelectionHolder
		this.Container.SelectionGained:connect(function()
			Utility.SetSelectedCoreObject(this.DefaultSelection)
		end)

		--Should be called when the container's internal data get loaded
		function this:PostLoaded()
			--If we are selecting the selectionHolder, we switch to the new defaultSelection
			self.SelectionHolder.Selectable = false
			if GuiService.SelectedCoreObject == self.SelectionHolder and self.DefaultSelection then
				Utility.SetSelectedCoreObject(self.DefaultSelection)
			end
			self.SelectionHolder:Destroy()
		end

		return this
	end

	--[[Create the detail Chunk]]
	local GameDetailChunks = {}
	table.insert(GameDetailChunks, CreateChunk(RatingDescriptionContainer, RatingDescriptionTitle))
	table.insert(GameDetailChunks, CreateChunk(ThumbsContainer, ThumbsTitle))
	table.insert(GameDetailChunks, CreateChunk(BadgeContainer, BadgeTitle))
	if not HideRelatedGames then
		table.insert(GameDetailChunks, CreateChunk(RelatedGamesContainer, RelatedGamesTitle))
	end


	local function GetPrevDefaultSelectionForChunk(index)
		local defaultSelection = FavoriteButton
		index = index - 1
		while index > 0 and GameDetailChunks[index] do
			if GameDetailChunks[index].DefaultSelection then
				defaultSelection = GameDetailChunks[index].DefaultSelection
				break
			else
				index = index - 1
			end
		end

		return defaultSelection
	end

	local function GetNextDefaultSelectionForChunk(index)
		local defaultSelection = ReportFrame
		index = index + 1
		while index > 0 and GameDetailChunks[index] do
			if GameDetailChunks[index].DefaultSelection then
				defaultSelection = GameDetailChunks[index].DefaultSelection
				break
			else
				index = index + 1
			end
		end

		return defaultSelection
	end

	do
		RatingDescriptionLineBreak.Visible = false
		DescriptionContainer.Visible = false

		local function loadFavoritedDataAsync()
			local data = getDataAsync()
			if not data then
				Utility.DebugLog("GameDetail:loadFavoritedDataAsync() could not fetch data.")
				return
			end

			-- set favorite
			toggleFavoriteButton(data.IsFavorited)
		end

		local function loadDescriptionDataAsync()
			local data = getDataAsync()
			if not data then
				Utility.DebugLog("GameDetail:loadDescriptionDataAsync() could not fetch data.")
				return
			end

			local descriptionData = data.Description
			local overridesDefaultAvatar = data.OverridesDefaultAvatar
			--Only show Experimental text when the flag is on
			setNoteDisplay(overridesDefaultAvatar, data.IsExperimental)
			DescriptionScrollingTextBox:SetText(descriptionData)
		end

		local function loadVoteDataAsync()
			local data = getDataAsync()
			if not data then
				Utility.DebugLog("GameDetail:loadVoteDataAsync() could not fetch data.")
				return
			end
			VoteView:InitializeAsync(data)
		end

		FavoriteButton.NextSelectionRight = GameDetailChunks[1].SelectionHolder
		FavoriteButton.NextSelectionUp = GameDetailChunks[1].SelectionHolder
		GameDetailChunks[1].SelectionHolder.NextSelectionLeft = FavoriteButton
		GameDetailChunks[1].SelectionHolder.NextSelectionDown = FavoriteButton
		local loader = LoadingWidget({Parent = GameDetailChunks[1].SelectionHolder}, {loadFavoritedDataAsync, loadDescriptionDataAsync, loadVoteDataAsync, waitForTweensToFinish})
		spawn(function()
			loader:AwaitFinished()
			loader:Cleanup()
			loader = nil
			RatingDescriptionLineBreak.Visible = true
			DescriptionContainer.Visible = true
			VoteView:SetParent(RatingDescriptionContainer)
			VoteView:SetVisible(true)

			--Hook up Selections after loading
			updateRatingDescriptionSelection()

			GameDetailChunks[1].DefaultSelection = VoteView:GetDefaultSelection() or GetNextDefaultSelectionForChunk(1)
			GameDetailChunks[1]:PostLoaded()

			if this then
				this.TransitionTweens = this.TransitionTweens or {}
				concatTables(this.TransitionTweens, ScreenManager:FadeInSitu(RatingDescriptionLineBreak))
				concatTables(this.TransitionTweens, ScreenManager:FadeInSitu(DescriptionContainer))
				--Recalc position
				MyContentManager:TweenContent(GuiService.SelectedCoreObject)
			end
		end)
	end

	do
		local gameThumbIds = {}
		local function loadThumbsAsync()
			local data = getDataAsync()
			if not data then
				Utility.DebugLog("GameDetail:loadThumbsAsync() could not fetch data.")
				return
			end

			gameThumbIds = data:GetThumbnailIdsAsync()
		end
		ThumbsContent.Visible = false
		local loader = LoadingWidget({Parent = GameDetailChunks[2].SelectionHolder}, {loadThumbsAsync, waitForTweensToFinish})

		spawn(function()
			loader:AwaitFinished()
			loader:Cleanup()
			loader = nil
			ThumbsContent.Visible = true

			-- set additional thumbnails
			local hasThumbs = #gameThumbIds >= 3
			setAdditionalThumbs(gameThumbIds)

			GameDetailChunks[2].DefaultSelection = hasThumbs and MainThumbImage or GetNextDefaultSelectionForChunk(2)
			GameDetailChunks[2]:PostLoaded()

			if this then
				this.TransitionTweens = this.TransitionTweens or {}
				concatTables(this.TransitionTweens, ScreenManager:FadeInSitu(ThumbsContent))
				--Recalc position
				MyContentManager:TweenContent(GuiService.SelectedCoreObject)
			end
		end)
	end

	do
		local badgeData = {}
		local placeName = ""
		local function loadBadgeDataAsync()
			local data = getDataAsync()
			if not data then
				Utility.DebugLog("GameDetail:loadBadgeDataAsync() could not fetch data.")
				return
			end
			-- set badge data
			badgeData = data:GetBadgeDataAsync()
			placeName = data.Name or ""
		end

		local loader = LoadingWidget({Parent = GameDetailChunks[3].SelectionHolder}, {loadBadgeDataAsync, waitForTweensToFinish})
		spawn(function()
			loader:AwaitFinished()
			loader:Cleanup()
			loader = nil
			-- set badges
			local hasBadges = #badgeData >= 4
			local BadgeSort
			if hasBadges then
				BadgeSort = BadgeSortModule(placeName, UDim2.new(1, 0, 0, 566), UDim2.new(0, 0, 0, BadgeTitle.Size.Y.Offset), BadgeContainer)
				BadgeSort:Initialize(badgeData)
				GameDetailChunks[3].DefaultSelection = BadgeSort:GetDefaultSelection()
			else
				MyContentManager:RemoveItem(BadgeContainer)
				GameDetailChunks[3].DefaultSelection = GetNextDefaultSelectionForChunk(3)
			end
			GameDetailChunks[3]:PostLoaded()

			if this then
				this.TransitionTweens = this.TransitionTweens or {}
				if BadgeSort then
					concatTables(this.TransitionTweens, ScreenManager:FadeInSitu(BadgeSort:GetContainer()))
				end
				--Recalc position
				MyContentManager:TweenContent(GuiService.SelectedCoreObject)
			end
		end)
	end


	if not HideRelatedGames then
		do
			local relatedGames = {}
			local function loadRelatedGamesAsync()
				local data = getDataAsync()
				if not data then
					Utility.DebugLog("GameDetail:loadRelatedGamesAsync() could not fetch data.")
					return
				end
				-- set related games sort data
				relatedGames = data:GetRecommendedGamesAsync()
			end

			RelatedGamesImageFrame.Visible = false
			local loader = LoadingWidget({Parent = GameDetailChunks[4].SelectionHolder}, {loadRelatedGamesAsync, waitForTweensToFinish})
			spawn(function()
				loader:AwaitFinished()
				loader:Cleanup()
				loader = nil

				RelatedGamesImageFrame.Visible = true
				setRelatedGames(relatedGames)

				GameDetailChunks[4].DefaultSelection = (#relatedGames > 0) and RelatedGameImages[1] or GetNextDefaultSelectionForChunk(4)
				GameDetailChunks[4]:PostLoaded()

				if this then
					this.TransitionTweens = this.TransitionTweens or {}
					concatTables(this.TransitionTweens, ScreenManager:FadeInSitu(RelatedGamesImageFrame))
					--Recalc position
					MyContentManager:TweenContent(GuiService.SelectedCoreObject)
				end
			end)
		end
	end

	do
		local function loadMoreGameDetailsAsync()
			local data = getDataAsync()
			if not data then
				Utility.DebugLog("GameDetail:loadMoreGameDetailsAsync() could not fetch data.")
				return
			end

			-- set more details
			LastUpdatedText.Text = data.LastUpdated or LastUpdatedText.Text
			CreationDateText.Text = data.CreationDate or CreationDateText.Text
			CreatorNameText.Text = data.CreatorName or CreatorNameText.Text
			MaxPlayersCountText.Text = data.MaxPlayers or MaxPlayersCountText.Text
		end

		MoreDetailsContent.Visible = false
		local loader = LoadingWidget({Parent = MoreDetailsContent}, {loadMoreGameDetailsAsync, waitForTweensToFinish})
		spawn(function()
			loader:AwaitFinished()
			loader:Cleanup()
			loader = nil
			MoreDetailsContent.Visible = true

			if this then
				this.TransitionTweens = this.TransitionTweens or {}
				concatTables(this.TransitionTweens, ScreenManager:FadeInSitu(MoreDetailsContent))
				--Recalc position
				MyContentManager:TweenContent(GuiService.SelectedCoreObject)
			end
		end)
	end

	--[[ Public API ]]--

	--Override
	function this:GetAnalyticsInfo()
		return
		{
			[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('GameDetailId');
			PlaceId = placeId;
		}
	end

	function this:GetDefaultSelectionObject()
		return PlayButton
	end

	-- Override
	local baseShow = this.Show
	function this:Show()
		baseShow(self)
	end

	-- Override
	local baseFocus = this.Focus
	function this:Focus()
		baseFocus(self)
		--This ensures that we can still navigate even if the callback of TweenPosition fails to be called
		MyContentManager:ResetTween()
		MyContentManager:TweenContent(GuiService.SelectedCoreObject)

		selectionChangedCn = GuiService:GetPropertyChangedSignal('SelectedCoreObject'):connect(function()
			local newSelectedObject = GuiService.SelectedCoreObject
			if newSelectedObject then
				MyContentManager:TweenContent(newSelectedObject)
			end
		end)
		if PlatformService then
			dataModelViewChangedCn = PlatformService.ViewChanged:connect(function(viewType)
				if viewType == 0 then
					returnedFromGame = false
					wait(1)
					returnedFromGame = true
				end
			end)
		end

		EventHub:addEventListener(EventHub.Notifications["GameJoin"], "gameJoin",
		function(success)
			if not VoteView:GetCanVote() then
				if success then
					VoteView:SetCanVote(true)
					updateRatingDescriptionSelection()
				end
			end
		end)

		scrollingTextBoxSelectableChangedCn = DescriptionScrollingTextBox.OnSelectableChanged:connect(updateRatingDescriptionSelection)
	end

	-- Override
	local baseRemoveFocus = this.RemoveFocus
	function this:RemoveFocus()
		baseRemoveFocus(self)
		selectionChangedCn = Utility.DisconnectEvent(selectionChangedCn)
		dataModelViewChangedCn = Utility.DisconnectEvent(dataModelViewChangedCn)
		EventHub:removeEventListener(EventHub.Notifications["GameJoin"], "gameJoin")
		scrollingTextBoxSelectableChangedCn = Utility.DisconnectEvent(scrollingTextBoxSelectableChangedCn)
	end

	return this
end

return CreateGameDetail
