--[[
                // GamesPaneDetailsView.lua

                // Creates a details view for the currently selected game in the IGG
]]
local CoreGui = Game:GetService("CoreGui")
local TextService = Game:GetService('TextService')
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local GuiService = game:GetService('GuiService')

local GameData = require(ShellModules:FindFirstChild('GameData'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local ThumbnailLoader = require(ShellModules:FindFirstChild('ThumbnailLoader'))
local Utility = require(ShellModules:FindFirstChild('Utility'))

local VoteFrame = require(ShellModules:FindFirstChild('VoteFrame'))

-- local Object, will handle the rotating of thumbnails.
local function createThumbnailView(thumbIds, parentContainer, faded)
    local this = {}

    local PREVIEW_TIME = 4

    local currentImageColor = faded and Color3.new(0.4, 0.4, 0.4) or Color3.new(1, 1, 1)

    local container = Utility.Create'Frame'
    {
        Name = "ThumbViewContainer";
        Size = UDim2.new(1, 0, 1, 0);
        BackgroundTransparency = 1;
        Parent = parentContainer;
    }

    local function createImage()
        return Utility.Create'ImageLabel'
        {
            Name = "ThumbImage";
            Size = UDim2.new(1, 0, 1, 0);
            BackgroundTransparency = 1;
            ImageTransparency = 1;
            ImageColor3 = currentImageColor;
            Parent = container;
        }
    end

    local killView = false
    function this:KillView()
        killView = true
        container.Parent = nil
    end

    local thumbs = {}
    if thumbIds and #thumbIds > 0 then
        -- get first thumb loaded right away
        local firstImage = createImage()
        table.insert(thumbs, firstImage)
        local loader = ThumbnailLoader:Create(firstImage, thumbIds[1],
            ThumbnailLoader.Sizes.Large, ThumbnailLoader.AssetType.Icon, false)

        spawn(function()
            loader:LoadAsync(true, true)

            -- start loading the rest
            if #thumbIds > 1 then
                for i = 2, #thumbIds do
                    local img = createImage()
                    table.insert(thumbs, img)
                    local ldr = ThumbnailLoader:Create(img, thumbIds[i],
                        ThumbnailLoader.Sizes.Large, ThumbnailLoader.AssetType.Icon, false)
                    spawn(function()
                        ldr:LoadAsync(true, false)
                    end)
                end

                local currentThunbIndex = 1
                while not killView do
                    wait(PREVIEW_TIME)
                    if killView then
                        break
                    end

                    -- cross fade
                    Utility.PropertyTweener(thumbs[currentThunbIndex], 'ImageTransparency', 0, 1, 1, Utility.EaseOutQuad, true)

                    currentThunbIndex = currentThunbIndex + 1
                    if currentThunbIndex > #thumbIds then
                        currentThunbIndex = 1
                    end

                    Utility.PropertyTweener(thumbs[currentThunbIndex], 'ImageTransparency', 1, 0, 1, Utility.EaseOutQuad, true)
                end
            end
        end)
    end

    function this:SetImageColor(color)
        if not color then return end

        currentImageColor = color
        for i = 1, #thumbs do
            thumbs[i].ImageColor3 = currentImageColor
        end
    end

    return this
end

local function createGamesPaneDetailsView()
    local this = {}

    local inFocus = false
    this.PlaceId = nil
    local GamesPaneDetailsConns = {}

    local DETAILS_START_POS = UDim2.new(0, 0, 0, 196)
    local DETAILS_FINAL_POS = UDim2.new(0, 0, 0, 116)

    -- GUI Objects
    local viewContainer = Utility.Create'Frame'
    {
        Name = "ViewContainer";
        Size = UDim2.new(0, 1690, 0, 380);
        Position = UDim2.new(0, 0, 0, -84);
        BackgroundTransparency = 1;
    }

    local detailsContainer = Utility.Create'Frame'
    {
        Name = "DetailsContainer";
        Size = UDim2.new(0, 900, 0, 216);
        Position = DETAILS_START_POS;
        BackgroundTransparency = 1;
        Parent = viewContainer;
    }

    local gameTitle = Utility.Create'TextLabel'
    {
        Name = "GameTitle";
        Size = UDim2.new(0, 0, 0, 0);
        Position = UDim2.new(0, 0, 0, 18);
        BackgroundTransparency = 1;
        Font = GlobalSettings.RegularFont;
        FontSize = GlobalSettings.HeaderSize;
        Text = "";
        TextColor3 = GlobalSettings.WhiteTextColor;
        TextXAlignment = Enum.TextXAlignment.Left;
        Parent = detailsContainer;
    }

    local gameImageContainer = Utility.Create'Frame'
    {
        Name = "GameImageContainer";
        Size = UDim2.new(0, 700, 0, 380);
        Position = UDim2.new(1, -700, 0, 6);
        BackgroundTransparency = 1;
        Parent = viewContainer;
    }

    local voteFrame = VoteFrame(detailsContainer, UDim2.new(0, 40, 0, 76))
    local voteFrameContainer = voteFrame:GetContainer()

    local thumbsUpImage = Utility.Create'ImageLabel'
    {
        Name = "ThumbsUpImage";
        Size = UDim2.new(0, 28, 0, 28);
        Position =  UDim2.new(0, 0, 0, voteFrameContainer.Position.Y.Offset + voteFrameContainer.Size.Y.Offset - 28);
        BackgroundTransparency = 1;
        Image = 'rbxasset://textures/ui/Shell/Icons/ThumbsUpIcon@1080.png';
        Parent = detailsContainer;
    }

    local thumbsDownImage = Utility.Create'ImageLabel'
	{
		Name = "ThumbsDownImage";
		Size = UDim2.new(0, 28, 0, 28);
		Position = UDim2.new(0, voteFrameContainer.Position.X.Offset + voteFrameContainer.Size.X.Offset + 10, 0, voteFrameContainer.Position.Y.Offset);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/ThumbsDownIcon@1080.png';
		Parent = detailsContainer;
	}

    local separatorDot = Utility.Create'ImageLabel'
	{
		Name = "SeparatorDot";
		Size = UDim2.new(0, 10, 0, 10);
		Position = UDim2.new(0, thumbsDownImage.Position.X.Offset + thumbsDownImage.Size.X.Offset + 24, 0, voteFrameContainer.Position.Y.Offset + (voteFrameContainer.Size.Y.Offset/2) - (10/2));
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/SeparatorDot@1080.png';
		Parent = detailsContainer;
	}


    local creatorIcon = Utility.Create'ImageLabel'
	{
		Name = "CreatorIcon";
		Size = UDim2.new(0, 24, 0, 24);
		Position = UDim2.new(0, separatorDot.Position.X.Offset + separatorDot.Size.X.Offset + 16, 0, separatorDot.Position.Y.Offset + separatorDot.Size.Y.Offset/2 - 12);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/RobloxIcon24.png';
		Parent = detailsContainer;
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
		Parent = detailsContainer;
	}

    local descriptionText = Utility.Create'TextLabel'
	{
		Name = "DescriptionText";
		Size = UDim2.new(1, 0, 0, 96);
		Position = UDim2.new(0, 0, 1, -96);
		BackgroundTransparency = 1;
        Text = "";
		TextColor3 = GlobalSettings.LightGreyTextColor;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		Font = GlobalSettings.LightFont;
		TextWrapped = true;
		FontSize = GlobalSettings.DescriptionSize;
		Parent = detailsContainer;
	}

    local function setGameTitle(title)
        if not title or title == gameTitle.Text then return end

        local function stringWidth(s)
			return TextService:GetTextSize(s,
				Utility.ConvertFontSizeEnumToInt(gameTitle.FontSize),
				gameTitle.Font,
				Vector2.new(0, 0)).X
		end

        local suffix = ""
		while stringWidth(title..suffix) > gameTitle.Parent.AbsoluteSize.X do
			title = string.sub(title, 1,-2)
			suffix = "..."
		end

        gameTitle.Text = title..suffix
    end

    local function setCreatorName(newName)
        if not newName or newName == creatorName.Text then return end
        creatorName.Text = newName
    end

    local function setVotePanel(voteData)
        local upVotes = voteData and voteData.UpVotes or 0
        local downVotes = voteData and voteData.DownVotes or 0
        if upVotes == 0 and downVotes == 0 then
            voteFrame:SetPercentFilled(nil)
        else
            voteFrame:SetPercentFilled(upVotes / (upVotes + downVotes))
        end
    end

    local function setDescription(newDescription)
        if not newDescription or newDescription == descriptionText.Text then return end

        descriptionText.Text = newDescription
    end

    local thumbnailView = nil
    local function setThumbnailView(thumbIds, faded)
        if thumbnailView then
            thumbnailView:KillView()
            thumbnailView = nil
        end

        if thumbIds and #thumbIds > 1 then
            thumbnailView = createThumbnailView(thumbIds, gameImageContainer, faded)
        end
    end

    local function setFaded(faded)
        local fadeColor = faded and Color3.new(0.4, 0.4, 0.4) or Color3.new(1, 1, 1)
        local tint = faded and 0.4 or 1

        for _,child in pairs(detailsContainer:GetChildren()) do
            if child:IsA('TextLabel') then
                child.TextColor3 = fadeColor
            elseif child:IsA('ImageLabel') then
                child.ImageColor3 = fadeColor
            end
        end
        voteFrame:SetImageColorTint(tint)
        if thumbnailView then
            thumbnailView:SetImageColor(fadeColor)
        end
    end

    function this:SetParent(newParent)
        viewContainer.Parent = newParent
    end

    function this:TweenTransparency(value, duration)
        voteFrame:TweenTransparency(value, duration)
        for _,child in pairs(detailsContainer:GetChildren()) do
            if child:IsA('TextLabel') then
                Utility.PropertyTweener(child, 'TextTransparency', child.TextTransparency, value, duration, Utility.Linear, true)
            elseif child:IsA('ImageLabel') then
                Utility.PropertyTweener(child, 'ImageTransparency', child.ImageTransparency, value, duration, Utility.Linear, true)
            end
        end
    end


    local function ClearGamePreview()
        --Disconnect Events
        Utility.DisconnectEvents(GamesPaneDetailsConns)
        GamesPaneDetailsConns = {}
        this.PlaceId = nil
        setGameTitle("")
        setCreatorName("")
        setVotePanel()
        setDescription("")
        setThumbnailView()
    end

    function this:SetGamePreview(placeId, faded)
        Utility.DisconnectEvents(GamesPaneDetailsConns)
        GamesPaneDetailsConns = {}

        local data = GameData:GetGameData(placeId)
        if data then
            --Use signals to make sure that these fetched data corresponds to the game we focus on
            table.insert(GamesPaneDetailsConns, data.OnGetVoteDataEnd:
                connect(function(voteData) setVotePanel(voteData)
            end))

            table.insert(GamesPaneDetailsConns, data.OnGetGameDetailsEnd:
                connect(function(gameData) setDescription(gameData.Description or "")
            end))

            table.insert(GamesPaneDetailsConns, data.OnGetThumbnailIdsEnd:
                connect(function(thumbnailIds) setThumbnailView(thumbnailIds, faded)
            end))

            setGameTitle(data.Name)
            setCreatorName(data.CreatorName)
            setVotePanel(data.VoteData)
            setDescription(data.Description or "")
            setThumbnailView(data.ThumbnailIds, faded)
            setFaded(faded)


            spawn(function()
                if not data.VoteData and inFocus then
                    data:GetVoteDataAsync()
                end

                if not data.Description and inFocus then
                    data:GetGameDetailsAsync()
                end

                if not data.ThumbnailIds and inFocus then
                    data:GetThumbnailIdsAsync()
                end
            end)
        else
            ClearGamePreview()
        end
    end


    function this:Remove()
        viewContainer:Destroy()
    end

    function this:Focus()
        if inFocus then
            return
        end

        inFocus = true
        self:TweenTransparency(0, GlobalSettings.TabDockTweenDuration)
        Utility.PropertyTweener(detailsContainer, 'Position', detailsContainer.Position, DETAILS_FINAL_POS,
            GlobalSettings.TabDockTweenDuration, Utility.SCurveUDim2, true)
    end

    function this:RemoveFocus()
        --Disconnect Events
        Utility.DisconnectEvents(GamesPaneDetailsConns)
        GamesPaneDetailsConns = {}

        if not inFocus then
            return
        end
        this.PlaceId = nil
        inFocus = false
        Utility.PropertyTweener(detailsContainer, 'Position', detailsContainer.Position, DETAILS_START_POS,
            GlobalSettings.TabDockTweenDuration, Utility.SCurveUDim2, true)
        self:TweenTransparency(1, GlobalSettings.TabDockTweenDuration)
        setThumbnailView(nil, false)
    end

    return this
end

return createGamesPaneDetailsView
