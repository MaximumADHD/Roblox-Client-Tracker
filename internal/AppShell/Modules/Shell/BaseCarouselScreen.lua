--[[
			// BaseCarouselScreen.lua

			// Creates a base screen for a carousel view
			// To be used for game genre and search screens

			// Creates a Play and Favorite Button, details view (votes, description), and
			// a carousel view
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService('GuiService')
local UserInputService = game:GetService('UserInputService')
local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)

local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local Errors = require(ShellModules:FindFirstChild('Errors'))
local ErrorOverlayModule = require(ShellModules:FindFirstChild('ErrorOverlay'))
local GameData = require(ShellModules:FindFirstChild('GameData'))
local GameJoinModule = require(ShellModules:FindFirstChild('GameJoin'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local LoadingWidget = require(ShellModules:FindFirstChild('LoadingWidget'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))

local BaseScreen = require(ShellModules:FindFirstChild('BaseScreen'))
local CarouselView = require(ShellModules:FindFirstChild('CarouselView'))
local CarouselController = require(ShellModules:FindFirstChild('CarouselController'))
local VoteFrame = require(ShellModules:FindFirstChild('VoteFrame'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local function CreateBaseCarouselScreen()
	local this = BaseScreen()

	local newGameSelectedCn = nil
	local dataModelViewChangedCn = nil

	local canJoinGame = true
	local returnedFromGame = true

	-- we need to move ZIndex up because of drop shadows
	local BASE_ZINDEX = 2

	local playButtonColor = GlobalSettings.GreenButtonColor
	local playButtonSelectedColor = GlobalSettings.GreenSelectedButtonColor
	local favoriteButtonColor = GlobalSettings.GreyButtonColor
	local favoriteSelectedButtonColor = GlobalSettings.GreySelectedButtonColor
	local buttonTextColor = GlobalSettings.WhiteTextColor
	local buttonSelectedTextColor = GlobalSettings.TextSelectedColor

	local viewContainer = Utility.Create'Frame'
	{
		Name = "ViewContainer";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		Parent = this.Container;
	}
	this.ViewContainer = viewContainer

	local myCarouselView = CarouselView()
	myCarouselView:SetSize(UDim2.new(0, 1724, 0, 450))
	myCarouselView:SetPosition(UDim2.new(0, 0, 0, 240))
	myCarouselView:SetPadding(18)
	myCarouselView:SetItemSizePercentOfContainer(2/3)
	myCarouselView:SetParent(viewContainer)

	local myCarouselController = CarouselController(myCarouselView)

	local playButton = Utility.Create'ImageButton'
	{
		Name = "PlayButton";
		Size = UDim2.new(0, 228, 0, 72);
		Position = UDim2.new(0, 0, 1, -77);
		BackgroundTransparency = 1;
		ImageColor3 = playButtonColor;
		Image = GlobalSettings.RoundCornerButtonImage;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(Vector2.new(4, 4), Vector2.new(28, 28));
		ZIndex = BASE_ZINDEX;
		Parent = viewContainer;

		SoundManager:CreateSound('MoveSelection');
		AssetManager.CreateShadow(1);
	}
	local playText = Utility.Create'TextLabel'
	{
		Name = "PlayText";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		Text = Utility.Upper(Strings:LocalizedString("PlayWord"));
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextColor3 = buttonTextColor;
		ZIndex = BASE_ZINDEX;
		Parent = playButton;
	}
	Utility.ResizeButtonWithText(playButton, playText, GlobalSettings.TextHorizontalPadding)

	local favoriteButton = Utility.Create'ImageButton'
	{
		Name = "FavoriteButton";
		Position = UDim2.new(0, playButton.Size.X.Offset + 10, 1, -77);
		Size = UDim2.new(0, 228, 0, 72);
		BackgroundTransparency = 1;
		ImageColor3 = favoriteButtonColor;
		Image = GlobalSettings.RoundCornerButtonImage;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(Vector2.new(4, 4), Vector2.new(28, 28));
		ZIndex = BASE_ZINDEX;
		Parent = viewContainer;

		SoundManager:CreateSound('MoveSelection');
		AssetManager.CreateShadow(1);
	}
	local favoriteText = Utility.Create'TextLabel'
	{
		Name = "FavoriteText";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		Text = Utility.Upper(Strings:LocalizedString("FavoriteWord"));
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextColor3 = buttonTextColor;
		ZIndex = 2;
		Parent = favoriteButton;
	}

	local favoriteStarImage = Utility.Create'ImageLabel'
	{
		Name = "FavoriteStarImage";
		Size = UDim2.new(0, 32, 0, 31);
		Position = UDim2.new(0, 16, 0.5, -31/2);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/FavoriteStar@1080.png';
		Visible = false;
		ZIndex = BASE_ZINDEX;
		Parent = favoriteButton;
	}

	--Make it big enough to hold the star and text
	Utility.ResizeButtonWithDynamicText(favoriteButton, favoriteText, {Utility.Upper(Strings:LocalizedString("FavoritedWord"))},
		GlobalSettings.TextHorizontalPadding + (favoriteStarImage.Position.X.Offset + favoriteStarImage.Size.X.Offset + 12) / 2)

	-- begin game details content
	local gameDetailsContainer = Utility.Create'Frame'
	{
		Name = "GameDetailsContainer";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0, 18, 0, 732);
		BackgroundTransparency = 1;
		Parent = viewContainer;
	}
	local gameTitle = Utility.Create'TextLabel'
	{
		Name = "GameTitleLabel";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		Text = "";
		TextColor3 = GlobalSettings.WhiteTextColor;
		TextXAlignment = Enum.TextXAlignment.Left;
		Font = GlobalSettings.LightFont;
		FontSize = GlobalSettings.HeaderSize;
		Parent = gameDetailsContainer;
	}
	local voteFrame = VoteFrame(gameDetailsContainer, UDim2.new(0, 38, 0, 46))
	local voteFrameContainer = voteFrame:GetContainer()

	local thumbsUpImage = Utility.Create'ImageLabel'
	{
		Name = "ThumbsUpImage";
		Size = UDim2.new(0, 28, 0, 28);
		Position =  UDim2.new(0, 0, 0, voteFrameContainer.Position.Y.Offset + voteFrameContainer.Size.Y.Offset - 28);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/ThumbsUpIcon@1080.png';
		Parent = gameDetailsContainer;
	}
	local thumbsDownImage = Utility.Create'ImageLabel'
	{
		Name = "ThumbsDownImage";
		Size = UDim2.new(0, 28, 0, 28);
		Position = UDim2.new(0, voteFrameContainer.Position.X.Offset + voteFrameContainer.Size.X.Offset + 10, 0, voteFrameContainer.Position.Y.Offset);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/ThumbsDownIcon@1080.png';
		Parent = gameDetailsContainer;
	}
	local separatorDot = Utility.Create'ImageLabel'
	{
		Name = "SeparatorDot";
		Size = UDim2.new(0, 10, 0, 10);
		Position = UDim2.new(0, thumbsDownImage.Position.X.Offset + thumbsDownImage.Size.X.Offset + 32, 0, voteFrameContainer.Position.Y.Offset + (voteFrameContainer.Size.Y.Offset/2) - (10/2));
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/SeparatorDot@1080.png';
		Parent = gameDetailsContainer;
	}
	local creatorIcon = Utility.Create'ImageLabel'
	{
		Name = "CreatorIcon";
		Size = UDim2.new(0, 24, 0, 24);
		Position = UDim2.new(0, separatorDot.Position.X.Offset + separatorDot.Size.X.Offset + 32, 0, separatorDot.Position.Y.Offset + separatorDot.Size.Y.Offset/2 - 12);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/RobloxIcon24.png';
		Parent = gameDetailsContainer;
	}
	local creatorName = Utility.Create'TextLabel'
	{
		Name = "CreatorName";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0, creatorIcon.Position.X.Offset + creatorIcon.Size.X.Offset + 8, 0, separatorDot.Position.Y.Offset + separatorDot.Size.Y.Offset/2 - 2);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.DescriptionSize;
		TextColor3 = GlobalSettings.LightGreyTextColor;
		TextXAlignment = Enum.TextXAlignment.Left;
		Text = "";
		Parent = gameDetailsContainer;
	}
	local descriptionText = Utility.Create'TextLabel'
	{
		Name = "DescriptionText";
		Size = UDim2.new(0, 850, 0, 64);
		Position = UDim2.new(0, gameTitle.Position.X.Offset, 0, voteFrameContainer.Position.Y.Offset + voteFrameContainer.Size.Y.Offset + 20);
		BackgroundTransparency = 1;
		Text = "";
		TextColor3 = GlobalSettings.LightGreyTextColor;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		Font = GlobalSettings.LightFont;
		TextWrapped = true;
		FontSize = GlobalSettings.DescriptionSize;
		Parent = gameDetailsContainer;
	}

	local noResultsText = Utility.Create'TextLabel'
	{
		Name = "noResultsText";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		BackgroundTransparency = 1;
		Text = Strings:LocalizedString("NoGamesPhrase");
		TextColor3 = GlobalSettings.LightGreyTextColor;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.MediumFontSize;
		Visible = false;
		Parent = this.Container;
	}

	-- Selection overrides
	playButton.NextSelectionLeft = playButton
	favoriteButton.NextSelectionRight = favoriteButton

	playButton.SelectionGained:connect(function()
		playButton.ImageColor3 = playButtonSelectedColor
		playText.TextColor3 = buttonSelectedTextColor
	end)
	playButton.SelectionLost:connect(function()
		playButton.ImageColor3 = playButtonColor
		playText.TextColor3 = buttonTextColor
	end)
	favoriteButton.SelectionGained:connect(function()
		favoriteButton.ImageColor3 = favoriteSelectedButtonColor
		favoriteText.TextColor3 = buttonSelectedTextColor
	end)
	favoriteButton.SelectionLost:connect(function()
		favoriteButton.ImageColor3 = favoriteButtonColor
		favoriteText.TextColor3 = buttonTextColor
	end)

	local function setIsFavorited(isFavorited)
		if isFavorited == true then
			favoriteStarImage.Visible = true
			favoriteText.Position = UDim2.new(0, favoriteStarImage.Position.X.Offset + favoriteStarImage.Size.X.Offset + 12, 0, 0)
			favoriteText.Text = Utility.Upper(Strings:LocalizedString("FavoritedWord"))
			favoriteText.TextXAlignment = Enum.TextXAlignment.Left
		else
			favoriteStarImage.Visible = false
			favoriteText.Position = UDim2.new(0, 0, 0, 0)
			favoriteText.Text = Utility.Upper(Strings:LocalizedString("FavoriteWord"))
			favoriteText.TextXAlignment = Enum.TextXAlignment.Center
		end
	end
	local function setVoteView(voteData)
		local upVotes = voteData and voteData.UpVotes or 0
        local downVotes = voteData and voteData.DownVotes or 0
        if upVotes == 0 and downVotes == 0 then
            voteFrame:SetPercentFilled(nil)
        else
            voteFrame:SetPercentFilled(upVotes / (upVotes + downVotes))
        end
	end

	local GameSelectedConns = {}
	local onNewGameSelected = nil

	local function ClearGameSelectedView()
		--Disconnect Events
		Utility.DisconnectEvents(GameSelectedConns)
		GameSelectedConns = {}
        gameTitle.Text = ""
		creatorName.Text = ""
		descriptionText.Text = ""
		setVoteView()
		setIsFavorited()
    end

	onNewGameSelected = function(placeId)
		Utility.DisconnectEvents(GameSelectedConns)
		GameSelectedConns = {}

		local data = GameData:GetGameData(placeId)
		if data then
			--Use signals to make sure that these fetched data corresponds to the game we focus on
			table.insert(GameSelectedConns, data.OnGetVoteDataEnd:
				connect(function(voteData) setVoteView(voteData)
			end))

			table.insert(GameSelectedConns, data.OnGetGameDetailsEnd:
				connect(function(gameData)
					descriptionText.Text = gameData.Description or ""
					setIsFavorited(gameData.IsFavorited)
			end))
			gameTitle.Text = data.Name
			creatorName.Text = data.CreatorName
			descriptionText.Text = data.Description or ""
			setVoteView(data.VoteData)
			setIsFavorited(data.IsFavorited)
			spawn(function()
				if not data.VoteData then
					data:GetVoteDataAsync()
				end

				if not data.Description or data.IsFavorited == nil then
					data:GetGameDetailsAsync()
				end
			end)
		else
			ClearGameSelectedView()
		end
	end

	playButton.MouseButton1Click:connect(function()
		SoundManager:Play('ButtonPress')
		local placeId = myCarouselController:GetCurrentFocusGameData()
		local data = GameData:GetGameData(placeId)
		if data then
			if canJoinGame and returnedFromGame then
				canJoinGame = false
				--Should never happen, as all game in carousel inits with CreatorUserId
				if not data.CreatorUserId then
					data:GetGameDetailsAsync()
				end
				GameJoinModule:StartGame(GameJoinModule.JoinType.Normal, data.PlaceId, data.CreatorUserId)
				canJoinGame = true
			end
		end
	end)

	favoriteButton.MouseButton1Click:connect(function()
		SoundManager:Play('ButtonPress')
		local placeId = myCarouselController:GetCurrentFocusGameData()
		local data = GameData:GetGameData(placeId)
		if data then
			local success, reason = data:PostFavoriteAsync()
			if success then
				setIsFavorited(data.IsFavorited)
			elseif reason then
				local err = Errors.Favorite[reason]
				ScreenManager:OpenScreen(ErrorOverlayModule(err), false)
			end
		end
	end)

	function this:LoadGameCollection(gameCollection)
		viewContainer.Visible = false
		noResultsText.Visible = false
		myCarouselView:SetParent(nil)

		spawn(function()
			local loader = LoadingWidget(
				{ Parent = this.Container },
				{
					function()
						myCarouselController:InitializeAsync(gameCollection)
					end
				}
			)

			loader:AwaitFinished()
			loader:Cleanup()
			loader = nil

			myCarouselView:SetParent(viewContainer)
			if this:IsFocused() then
				if myCarouselController:HasResults() then
					viewContainer.Visible = true
					Utility.SetSelectedCoreObject(myCarouselView:GetFocusItem())
				else
					noResultsText.Visible = true
				end
			end
		end)
	end

	-- Override Base Functions
	function this:GetDefaultSelectionObject()
		return myCarouselView:GetFocusItem()
	end

	function this:GetAnalyticsInfo()
		return
		{
			[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('BaseCarouselScreenId');
			Title = this:GetTitle();
		}
	end

	local baseFocus = this.Focus
	function this:Focus()
		baseFocus(self)
		myCarouselView:Focus()

		if PlatformService then
			dataModelViewChangedCn = PlatformService.ViewChanged:connect(function(viewType)
				-- return from game debounce
				if viewType == 0 then
					returnedFromGame = false
					wait(1)
					returnedFromGame = true
				end
			end)
		end

		newGameSelectedCn = myCarouselController.NewItemSelected:connect(onNewGameSelected)
		onNewGameSelected(myCarouselController:GetCurrentFocusGameData())
		myCarouselController:Connect()
	end

	local baseRemoveFocus = this.RemoveFocus
	function this:RemoveFocus()
		baseRemoveFocus(self)
		dataModelViewChangedCn = Utility.DisconnectEvent(dataModelViewChangedCn)
		newGameSelectedCn = Utility.DisconnectEvent(newGameSelectedCn)
		myCarouselController:Disconnect()
		Utility.DisconnectEvents(GameSelectedConns)
		GameSelectedConns = {}
	end

	return this
end

return CreateBaseCarouselScreen
