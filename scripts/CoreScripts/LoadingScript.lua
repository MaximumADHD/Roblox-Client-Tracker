-- Creates the generic "ROBLOX" loading screen on startup
-- Written by ArceusInator & Ben Tkacheff, 2014
local AssetService = game:GetService('AssetService')
local MarketplaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")
local VRService = game:GetService("VRService")
local GuiService = game:GetService("GuiService")
local ContextActionService = game:GetService("ContextActionService")
local RunService = game:GetService("RunService")
local ContentProvider = game:GetService("ContentProvider")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

--FFlags
local enableGetAssetThumbnailSuccess, enableGetAssetThumbnailValue = pcall(function() return settings():GetFFlag('EnableGetAssetThumbnail') end)
local enableGetAssetThumbnail = enableGetAssetThumbnailSuccess and enableGetAssetThumbnailValue

local persistentConnectionHealthDialogSuccess, persistentConnectionHealthDialogValue = pcall(function() return settings():GetFFlag("PersistentConnectionHealthDialog") end)
local persistentConnectionHealthDialog = persistentConnectionHealthDialogSuccess and persistentConnectionHealthDialogValue

local FFlagLoadTheLoadingScreenFasterSuccess, FFlagLoadTheLoadingScreenFasterValue = pcall(function() return settings():GetFFlag("LoadTheLoadingScreenFaster") end)
local FFlagLoadTheLoadingScreenFaster = FFlagLoadTheLoadingScreenFasterSuccess and FFlagLoadTheLoadingScreenFasterValue

local debugMode = false

local startTime = tick()
local loadingImageInputBeganConn = nil

local COLORS = {
	BACKGROUND_COLOR = Color3.fromRGB(45, 45, 45),
	TEXT_COLOR = Color3.fromRGB(255, 255, 255),
	ERROR = Color3.fromRGB(253, 68, 72)
}
local spinnerImageId = "rbxasset://textures/loading/robloxTilt.png"

local gameIconSubstitutionType = {
	None = 0;
	Unapproved = 1;
	PendingReview = 2;
	Broken = 3;
	Unavailable = 4;
	Unknown = 5;
}

--
-- Variables
local GameAssetInfo -- loaded by InfoProvider:LoadAssets()
local currScreenGui, renderSteppedConnection = nil, nil
local destroyingBackground, destroyedLoadingGui, hasReplicatedFirstElements = false, false, false
local isTenFootInterface = GuiService:IsTenFootInterface()
local platform = UserInputService:GetPlatform()

local placeLabel, creatorLabel = nil, nil
local backgroundFadeStarted = false
local tweenPlaceIcon = nil

local connectionHealthShown = false
local connectionHealthCon

local function IsConvertMyPlaceNameInXboxAppEnabled()
	if UserInputService:GetPlatform() == Enum.Platform.XBoxOne then
		local success, flagValue = pcall(function() return settings():GetFFlag("ConvertMyPlaceNameInXboxApp") end)
		return (success and flagValue == true)
	end
	return false
end

--
-- Utility functions
local create = function(className, defaultParent)
	return function(propertyList)
		local object = Instance.new(className)
		local parent = nil

		for index, value in next, propertyList do
			if typeof(index) == 'string' then
				if index == 'Parent' then
					parent = value
				else
					object[index] = value
				end
			else
				local valueType = typeof(value)
				if valueType == 'function' then
					value(object)
				elseif valueType == 'Instance' then
					value.Parent = object
				end
			end
		end

		if parent then
			object.Parent = parent
		end

		if object.Parent == nil then
			object.Parent = defaultParent
		end

		return object
	end
end

--
-- Create objects

local MainGui = {}
local InfoProvider = {}

local function WaitForPlaceId()
	local placeId = game.PlaceId
	if placeId == 0 then
		game:GetPropertyChangedSignal("PlaceId"):wait()
		placeId = game.PlaceId
	end
	return placeId
end

local function ExtractGeneratedUsername(gameName)
	local tempUsername = string.match(gameName, "^([0-9a-fA-F]+)'s Place$")
	if tempUsername and #tempUsername == 32 then
		return tempUsername
	end
end

-- Fix places that have been made with incorrect temporary usernames
local function GetFilteredGameName(gameName, creatorName)
	if gameName and type(gameName) == 'string' then
		local tempUsername = ExtractGeneratedUsername(gameName)
		if tempUsername then
			local newGameName = string.gsub(gameName, tempUsername, creatorName, 1)
			if newGameName then
				return newGameName
			end
		end
	end
	return gameName
end


function InfoProvider:GetGameName()
	if GameAssetInfo ~= nil then
		if IsConvertMyPlaceNameInXboxAppEnabled() then
			return GetFilteredGameName(GameAssetInfo.Name, self:GetCreatorName())
		else
			return GameAssetInfo.Name
		end
	else
		return ''
	end
end

function InfoProvider:GetCreatorName()
	if GameAssetInfo ~= nil then
		return GameAssetInfo.Creator.Name
	else
		return ''
	end
end

function InfoProvider:LoadAssets()
	if FFlagLoadTheLoadingScreenFaster then
		coroutine.wrap(function()
			local placeId = WaitForPlaceId()
			local success, result = pcall(function()
				GameAssetInfo = MarketplaceService:GetProductInfo(placeId)
			end)
			if not success then
				print("LoadingScript->InfoProvider:LoadAssets:", result)
			end
		end)()
	else
		--spawn() == slowpoke.jpg
		spawn(function()
			local PLACEID = game.PlaceId
			if PLACEID <= 0 then
				while game.PlaceId <= 0 do
					wait()
				end
				PLACEID = game.PlaceId
			end

			-- load game asset info
			coroutine.resume(coroutine.create(function()
				local success, result = pcall(function()
					GameAssetInfo = MarketplaceService:GetProductInfo(PLACEID)
				end)
				if not success then
					print("LoadingScript->InfoProvider:LoadAssets:", result)
				end
			end))
		end)
	end
end

-- create a cancel binding for console to be able to cancel anytime while loading
local function createTenfootCancelGui()
	local cancelLabel = create'ImageLabel'
	{
		Name = "CancelLabel",
		Size = UDim2.new(0, 83, 0, 83),
		Position = UDim2.new(1, -32 - 83, 0, 32),
		BackgroundTransparency = 1,
		Image = 'rbxasset://textures/ui/Shell/ButtonIcons/BButton.png'
	}
	local cancelText = create'TextLabel'
	{
		Name = "CancelText",
		Size = UDim2.new(0, 400, 0, 83),
		Position = UDim2.new(1, -131, 0, 32),
		AnchorPoint = Vector2.new(1, 0),
		BackgroundTransparency = 1,
		Font = Enum.Font.SourceSans,
		TextSize = 48,
		TextXAlignment = Enum.TextXAlignment.Right,
		TextColor3 = COLORS.TEXT_COLOR,
		Text = "Cancel"
	}

	if not game:GetService("ReplicatedFirst"):IsFinishedReplicating() then
		local seenBButtonBegin = false
		ContextActionService:BindCoreAction("CancelGameLoad",
			function(actionName, inputState, inputObject)
				if inputState == Enum.UserInputState.Begin then
					seenBButtonBegin = true
				elseif inputState == Enum.UserInputState.End and seenBButtonBegin then
					cancelLabel:Destroy()
					cancelText.Text = "Canceling..."
					cancelText.Position = UDim2.new(1, -32, 0, 32)
					ContextActionService:UnbindCoreAction('CancelGameLoad')
					game:Shutdown()
				end
			end,
			false,
			Enum.KeyCode.ButtonB)
	end

	while cancelLabel.Parent == nil do
		if currScreenGui then
			local blackFrame = currScreenGui:FindFirstChild('BlackFrame')
			if blackFrame then
				cancelLabel.Parent = blackFrame
				cancelText.Parent = blackFrame
				break
			end
		end
		wait()
	end
end

--
-- Declare member functions
function MainGui:GenerateMain()
	local screenGui = create 'ScreenGui' {
		Name = 'RobloxLoadingGui'
	}

	--
	-- create descendant frames
	local mainBackgroundContainer = create 'Frame' {
		Name = 'BlackFrame',
		BackgroundColor3 = COLORS.BACKGROUND_COLOR,
		BackgroundTransparency = 0,
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		Active = true,
		Parent = screenGui
	}
	if debugMode then
		mainBackgroundContainer.Size = UDim2.new(1, 0, 1, 36)
		mainBackgroundContainer.Position = UDim2.new(0, 0, 0, -36)
	end

	local closeButton =	create 'ImageButton' {
		Name = 'CloseButton',
		Image = 'rbxasset://textures/loading/cancelButton.png',
		ImageTransparency = 1,
		BackgroundTransparency = 1,
		Position = UDim2.new(1, -37, 0, 5),
		Size = UDim2.new(0, 32, 0, 32),
		Active = false,
		ZIndex = 10,
		Parent = mainBackgroundContainer
	}

    closeButton.MouseButton1Click:connect(function()
        game:Shutdown()
    end)

	local graphicsFrame = create 'Frame' {
		Name = 'GraphicsFrame',
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(1, 1),
		Position = UDim2.new(0.95, 0, 0.95, 0),
		Size = UDim2.new(0.15, 0, 0.15, 0),
		ZIndex = 2,
		Parent = mainBackgroundContainer,

		create("UIAspectRatioConstraint") {
			AspectRatio = 1
		},
		create("UISizeConstraint") {
			MaxSize = Vector2.new(100, 100)
		}
	}

	local loadingImage = create 'ImageLabel' {
		Name = 'LoadingImage',
		BackgroundTransparency = 1,
		Image = spinnerImageId,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = 2,
		Parent = graphicsFrame,
	}

    local numberOfTaps = 0
    local lastTapTime = math.huge
    local doubleTapTimeThreshold = 0.5

    loadingImageInputBeganConn = loadingImage.InputBegan:connect(function()
        if numberOfTaps == 0 then
            numberOfTaps = 1
            lastTapTime = tick()
            return
        end

        if UserInputService.TouchEnabled == true and UserInputService.MouseEnabled == false then
            if tick() - lastTapTime <= doubleTapTimeThreshold then
                GuiService:ShowStatsBasedOnInputString("ConnectionHealth")
				if persistentConnectionHealthDialog then
					connectionHealthShown = not connectionHealthShown
				end
            end
        end

        numberOfTaps = 0
        lastTapTime = math.huge
    end)

	local infoFrame = create 'Frame' {
		Name = 'InfoFrame',
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(0.75, 0, 1, 0),
		ZIndex = 2,
		Parent = mainBackgroundContainer
	}

	local uiMessageFrame = create 'Frame' {
		Name = 'UiMessageFrame',
		BackgroundTransparency = 1,
		Position = UDim2.new(0.25, 0, 1, -120),
		Size = UDim2.new(1, 0, 0, 35),
		ZIndex = 2,
		LayoutOrder = 5,
		Parent = infoFrame,

		create 'TextLabel' {
			Name = 'UiMessage',
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 0, 0, 10),
			Size = UDim2.new(1, 0, 0, 25),
			Font = Enum.Font.SourceSansLight,
			FontSize = Enum.FontSize.Size18,
			TextScaled = true,
			TextWrapped = true,
			TextColor3 = COLORS.TEXT_COLOR,
			Text = "",
			ZIndex = 2,
			Visible = true
		}
	}

	local infoFrameAspect = create("UIAspectRatioConstraint") {
		AspectRatio = 3 / 2,
		Parent = infoFrame
	}
	local infoFrameList = create("UIListLayout") {
		SortOrder = Enum.SortOrder.LayoutOrder,
		FillDirection = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		Padding = UDim.new(0.05, 0),
		Parent = infoFrame
	}

	local textContainer = create("Frame") {
		BackgroundTransparency = 1,
		Size = UDim2.new(2/3, 0, 1, 0),
		LayoutOrder = 2,
		Parent = nil,

		create("UIListLayout") {
			FillDirection = Enum.FillDirection.Vertical,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder
		}
	}
	local placeIcon = create("ImageLabel") {
		Name = "PlaceIcon",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0.5, 0, 0, 0),
		AnchorPoint = Vector2.new(0.5, 0),
		LayoutOrder = 1,
		Parent = infoFrame,

		ImageTransparency = 1,
		Image = "",

		create("UIAspectRatioConstraint") {
			AspectRatio = 576 / 324,
			AspectType = Enum.AspectType.ScaleWithParentSize,
			DominantAxis = Enum.DominantAxis.Width
		},
		create("UISizeConstraint") {
			MaxSize = Vector2.new(400, 400)
		}
	}

	--Start trying to load the place icon image
	--Web might not have this icon size generated, so we can poll asset-thumbnail/json and check
	--the JSON result for thumbnailFinal/Final to see when it's done being generated so we never
	--show a N/A image. This is how the console AppShell does it!
	coroutine.wrap(function()
		local httpService = game:GetService("HttpService")
		local placeId = WaitForPlaceId()

		local function tryGetFinalAsync()
			if not enableGetAssetThumbnail then
				local assetGameUrl = ContentProvider.BaseUrl:gsub("www", "assetgame")
				local assetJsonUrl = string.format("%sasset-thumbnail/json?assetId=%d&width=576&height=324&format=png", assetGameUrl, placeId)
				local imageUrl = string.format("%sThumbs/GameIcon.ashx?assetId=%d&width=576&height=324&ignorePlaceMediaItems=true", assetGameUrl, placeId)
				local resultStr = game:HttpGetAsync(assetJsonUrl)
				local parseSuccess, result = pcall(function() return httpService:JSONDecode(resultStr) end)

				if parseSuccess and result then
					local isFinal = result.Final or result.thumbnailFinal
					local substitutionType = result.substitutionType or result.substitutionType

					if isFinal and (substitutionType == nil or substitutionType == gameIconSubstitutionType.None) then
						ContentProvider:PreloadAsync { imageUrl }
						placeIcon.Image = imageUrl

						if not backgroundFadeStarted then
							placeIcon.ImageTransparency = 0
						end

						return true
					end
				end
				return false
			else
				local imageUrl = nil
				local isGenerated = false
				local success, msg = pcall(function()
					imageUrl, isGenerated = AssetService:GetAssetThumbnailAsync(placeId, Vector2.new(576, 324), 1)
				end)

				if success and isGenerated == true and imageUrl then
					ContentProvider:PreloadAsync { imageUrl }
					placeIcon.Image = imageUrl

					if not backgroundFadeStarted then
						placeIcon.ImageTransparency = 0
					end

					return true
				end

				return false
			end
		end

		while not tryGetFinalAsync() do end
	end)()


	placeLabel = create 'TextLabel' {
		Name = 'PlaceLabel',
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 80),
		Position = UDim2.new(0, 0, 0, 0),
		Font = Enum.Font.SourceSans,
		FontSize = (isTenFootInterface and Enum.FontSize.Size48 or Enum.FontSize.Size24),
		TextWrapped = true,
		TextScaled = true,
		TextColor3 = COLORS.TEXT_COLOR,
		TextStrokeTransparency = 1,
		Text = "",
		TextXAlignment = Enum.TextXAlignment.Center,
		TextYAlignment = Enum.TextYAlignment.Bottom,
		ZIndex = 2,
		LayoutOrder = 2,
		Parent = infoFrame
	}

	local creatorContainer = create 'Frame' {
		Name = "Creator",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 48),
		LayoutOrder = 3,

		create 'UIListLayout' {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 5)
		}
	}

	local byLabel, creatorIcon = nil, nil
	if isTenFootInterface then
		byLabel = create'TextLabel' {
			Name = "ByLabel",
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 36, 0, 30),
			Position = UDim2.new(0, 0, 0, 80),
			Font = Enum.Font.SourceSansLight,
			FontSize = Enum.FontSize.Size36,
			TextScaled = true,
			TextColor3 = COLORS.TEXT_COLOR,
			TextStrokeTransparency = 1,
			Text = "By",
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			ZIndex = 2,
			Visible = true,
			Parent = infoFrame,
			LayoutOrder = 1
		}
		creatorIcon = create'ImageLabel' {
			Name = "CreatorIcon",
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 30, 0, 30),
			Position = UDim2.new(0, 38, 0, 80),
			ImageTransparency = 0,
			Image = 'rbxasset://textures/ui/Shell/Icons/RobloxIcon24.png',
			ZIndex = 2,
			Visible = true,
			Parent = infoFrame,
			LayoutOrder = 2
		}
	end

	creatorLabel = create 'TextLabel' {
		Name = 'CreatorLabel',
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 30),
		Position = UDim2.new(0, 0, 0, 80),
		Font = Enum.Font.SourceSansLight,
		FontSize = (isTenFootInterface and Enum.FontSize.Size36 or Enum.FontSize.Size18),
		TextWrapped = true,
		TextScaled = true,
		TextColor3 = COLORS.TEXT_COLOR,
		TextStrokeTransparency = 1,
		Text = "",
		TextXAlignment = Enum.TextXAlignment.Center,
		TextYAlignment = Enum.TextYAlignment.Center,
		ZIndex = 2,
		LayoutOrder = 4,
		Parent = infoFrame
	}

	if isTenFootInterface then
		creatorContainer.Parent = infoFrame

		byLabel.TextScaled = false
		byLabel.Parent = creatorContainer
		byLabel.TextXAlignment = Enum.TextXAlignment.Center
		byLabel.TextYAlignment = Enum.TextYAlignment.Center

		creatorIcon.Parent = creatorContainer

		creatorLabel.Parent = creatorContainer
		creatorLabel.TextScaled = false
		creatorLabel.Position = UDim2.new(0, 72, 0, 80)
		creatorLabel.Size = UDim2.new(0, creatorLabel.TextBounds.X, 1, 0)
	end

	local errorFrame = create 'Frame' {
		Name = 'ErrorFrame',
		BackgroundColor3 = COLORS.ERROR,
		BorderSizePixel = 0,
		Position = UDim2.new(0.25,0,0,0),
		Size = UDim2.new(0.5, 0, 0, 80),
		ZIndex = 8,
		Visible = false,
		Parent = screenGui,

		create 'TextLabel' {
			Name = "ErrorText",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Font = Enum.Font.SourceSansBold,
			FontSize = Enum.FontSize.Size14,
			TextWrapped = true,
			TextColor3 = COLORS.TEXT_COLOR,
			Text = "",
			ZIndex = 8
		}
	}

	while not game:GetService("CoreGui") do
		if FFlagLoadTheLoadingScreenFaster then
			RunService.RenderStepped:wait()
		else
			wait()
		end
	end
	screenGui.Parent = game:GetService("CoreGui")
	currScreenGui = screenGui

	local function onResized()
		local isPortrait = screenGui.AbsoluteSize.X < screenGui.AbsoluteSize.Y

		infoFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
		infoFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		infoFrame.Size = UDim2.new(0.75, 0, 1, 0)
		infoFrameAspect.AspectRatio = isPortrait and 2/3 or 3/2

		placeLabel.Size = UDim2.new(1, 0, 0, isTenFootInterface and 120 or 80)

		if isTenFootInterface then
			creatorLabel.Size = UDim2.new(0, creatorLabel.TextBounds.X, 1, 0)
		else
			creatorLabel.Size = UDim2.new(1, 0, 0, 30)
		end

		infoFrameList.FillDirection = Enum.FillDirection.Vertical
		infoFrameList.HorizontalAlignment = Enum.HorizontalAlignment.Center
		infoFrameList.Padding = UDim.new(0, 0)
		textContainer.Parent = nil
		infoFrameList:ApplyLayout()

		placeLabel.TextXAlignment = Enum.TextXAlignment.Center
	end
	onResized()
	screenGui:GetPropertyChangedSignal("AbsoluteSize"):connect(onResized)
end

---------------------------------------------------------
-- Main Script (show something now + setup connections)

-- start loading assets asap
InfoProvider:LoadAssets()
MainGui:GenerateMain()
if isTenFootInterface then
	createTenfootCancelGui()
end

local fadeCycleTime = 1.7
local turnCycleTime = 2

local function spinnerEasingFunc(a, b, t)
	t = t * 2
	if t < 1 then
		return b / 2 * t*t*t + a
	else
		t = t - 2
		return b / 2 * (t * t * t + 2) + b
	end
end

renderSteppedConnection = RunService.RenderStepped:connect(function(dt)
	if not currScreenGui then return end
	if not currScreenGui:FindFirstChild("BlackFrame") then return end

	local infoFrame = currScreenGui.BlackFrame:FindFirstChild('InfoFrame')
	if infoFrame then
		-- set place name
		if placeLabel and placeLabel.Text == "" then
			placeLabel.Text = InfoProvider:GetGameName()
		end

		-- set creator name
		if creatorLabel and creatorLabel.Text == "" then
			local creatorName = InfoProvider:GetCreatorName()
			if creatorName ~= "" then
				if isTenFootInterface then
					creatorLabel.Text = creatorName
					creatorLabel.Size = UDim2.new(0, creatorLabel.TextBounds.X, 1, 0)
				else
					creatorLabel.Text = "By ".. creatorName
				end
			end
		end
	end

	local currentTime = tick()
	local fadeAmount = dt * fadeCycleTime

	local spinnerImage = currScreenGui.BlackFrame.GraphicsFrame.LoadingImage
	local timeInCycle = currentTime % turnCycleTime
	local cycleAlpha = spinnerEasingFunc(0, 1, timeInCycle / turnCycleTime)
	spinnerImage.Rotation = cycleAlpha * 360


	if not isTenFootInterface then
		if currentTime - startTime > 5 and currScreenGui.BlackFrame.CloseButton.ImageTransparency > 0 then
			currScreenGui.BlackFrame.CloseButton.ImageTransparency = currScreenGui.BlackFrame.CloseButton.ImageTransparency - fadeAmount

			if currScreenGui.BlackFrame.CloseButton.ImageTransparency <= 0 then
				currScreenGui.BlackFrame.CloseButton.Active = true
			end
		end
	end
end)

--TODO: Evaluate whether or not this is still necessary
coroutine.wrap(function()
	local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
	local guiInsetChangedEvent = Instance.new("BindableEvent")
	guiInsetChangedEvent.Name = "GuiInsetChanged"
	guiInsetChangedEvent.Event:connect(function(x1, y1, x2, y2)
		if currScreenGui and currScreenGui:FindFirstChild("BlackFrame") then
			currScreenGui.BlackFrame.Position = UDim2.new(0, -x1, 0, -y1)
			currScreenGui.BlackFrame.Size = UDim2.new(1, x1 + x2, 1, y1 + y2)
		end
	end)
	guiInsetChangedEvent.Parent = RobloxGui
end)()

local leaveGameButton, leaveGameTextLabel, errorImage = nil

GuiService.ErrorMessageChanged:connect(function()
	if GuiService:GetErrorMessage() ~= '' then
		--TODO: Remove this reference to Utility
		local utility = require(RobloxGui.Modules.Settings.Utility)
		if isTenFootInterface then
			currScreenGui.ErrorFrame.Size = UDim2.new(1, 0, 0, 144)
			currScreenGui.ErrorFrame.Position = UDim2.new(0, 0, 0, 0)
			currScreenGui.ErrorFrame.BackgroundColor3 = COLORS.BACKGROUND_COLOR
			currScreenGui.ErrorFrame.BackgroundTransparency = 0.5
			currScreenGui.ErrorFrame.ErrorText.FontSize = Enum.FontSize.Size36
			currScreenGui.ErrorFrame.ErrorText.Position = UDim2.new(.3, 0, 0, 0)
			currScreenGui.ErrorFrame.ErrorText.Size = UDim2.new(.4, 0, 0, 144)
			if errorImage == nil then
				errorImage = Instance.new("ImageLabel")
				errorImage.Image = "rbxasset://textures/ui/ErrorIconSmall.png"
				errorImage.Size = UDim2.new(0, 96, 0, 79)
				errorImage.Position = UDim2.new(0.228125, 0, 0, 32)
				errorImage.ZIndex = 9
				errorImage.BackgroundTransparency = 1
				errorImage.Parent = currScreenGui.ErrorFrame
			end
		elseif utility:IsSmallTouchScreen() then
			currScreenGui.ErrorFrame.Size = UDim2.new(0.5, 0, 0, 40)
		end
		currScreenGui.ErrorFrame.ErrorText.Text = GuiService:GetErrorMessage()
		currScreenGui.ErrorFrame.Visible = true
		local blackFrame = currScreenGui:FindFirstChild('BlackFrame')
		if blackFrame then
			blackFrame.CloseButton.ImageTransparency = 0
			blackFrame.CloseButton.Active = true
		end
	else
		currScreenGui.ErrorFrame.Visible = false
	end
end)

GuiService.UiMessageChanged:connect(function(type, newMessage)
	if type == Enum.UiMessageType.UiMessageInfo then
		local blackFrame = currScreenGui and currScreenGui:FindFirstChild('BlackFrame')
		if blackFrame then
			local infoFrame = blackFrame:FindFirstChild("InfoFrame")
			if infoFrame then
				infoFrame.UiMessageFrame.UiMessage.Text = newMessage
				if newMessage ~= '' then
					infoFrame.UiMessageFrame.Visible = true
				else
					infoFrame.UiMessageFrame.Visible = false
				end
			else
				blackFrame.UiMessageFrame.UiMessage.Text = newMessage
				if newMessage ~= '' then
					blackFrame.UiMessageFrame.Visible = true
				else
					blackFrame.UiMessageFrame.Visible = false
				end
			end
		end
	end
end)

if GuiService:GetErrorMessage() ~= '' then
	currScreenGui.ErrorFrame.ErrorText.Text = GuiService:GetErrorMessage()
	currScreenGui.ErrorFrame.Visible = true
end


function stopListeningToRenderingStep()
	if renderSteppedConnection then
		renderSteppedConnection:disconnect()
		renderSteppedConnection = nil
	end
end

function disconnectAndCloseHealthStat()
	if connectionHealthCon then
		connectionHealthCon:disconnect()
		connectionHealthCon = nil
		GuiService:CloseStatsBasedOnInputString("ConnectionHealth")
	end
end

function fadeAndDestroyBlackFrame(blackFrame)
	if destroyingBackground then return end
	destroyingBackground = true
	spawn(function()
		local infoFrame = blackFrame:FindFirstChild("InfoFrame")
		local graphicsFrame = blackFrame:FindFirstChild("GraphicsFrame")

		local function getDescendants(root, children)
			children = children or {}
			for i, v in pairs(root:GetChildren()) do
				children[#children + 1] = v
				getDescendants(v, children)
			end
			return children
		end
		local infoFrameDescendants = getDescendants(infoFrame)
		local transparency = 0
		local rateChange = 1.8
		local lastUpdateTime = nil

		--Notify everything else to stop messing with transparency to avoid ugly fighting effects
		backgroundFadeStarted = true
		if tweenPlaceIcon then
			tweenPlaceIcon:Cancel()
			tweenPlaceIcon = nil
		end

		while transparency < 1 do
			RunService.RenderStepped:wait()
			if not lastUpdateTime then
				lastUpdateTime = tick()
			else
				local newTime = tick()
				transparency = transparency + rateChange * (newTime - lastUpdateTime)
				for i = 1, #infoFrameDescendants do
					local child = infoFrameDescendants[i]
					if child:IsA('TextLabel') then
						child.TextTransparency = transparency
					elseif child:IsA('ImageLabel') then
						child.ImageTransparency = transparency
					end
				end
				graphicsFrame.LoadingImage.ImageTransparency = transparency
				blackFrame.BackgroundTransparency = transparency

				lastUpdateTime = newTime
			end
		end
		if blackFrame ~= nil then
			stopListeningToRenderingStep()
			blackFrame:Destroy()
		end

        loadingImageInputBeganConn:disconnect()
        if persistentConnectionHealthDialog and connectionHealthShown then
			if UserInputService.TouchEnabled == true and UserInputService.MouseEnabled == false then
				connectionHealthCon = game:GetService("UserInputService").InputBegan:connect(function()
					disconnectAndCloseHealthStat()
				end)
			else
				GuiService:CloseStatsBasedOnInputString("ConnectionHealth")
			end
		else
			GuiService:CloseStatsBasedOnInputString("ConnectionHealth")
		end
    end)
end

function destroyLoadingElements(instant)
	if not currScreenGui then return end
	if destroyedLoadingGui then return end
	destroyedLoadingGui = true

	local guiChildren = currScreenGui:GetChildren()
	for i=1, #guiChildren do
		-- need to keep this around in case we get a connection error later
		if guiChildren[i].Name ~= "ErrorFrame" then
			if guiChildren[i].Name == "BlackFrame" and not instant then
				fadeAndDestroyBlackFrame(guiChildren[i])
			else
				guiChildren[i]:Destroy()
			end
		end
	end
end

function handleFinishedReplicating()
	hasReplicatedFirstElements = (#game:GetService("ReplicatedFirst"):GetChildren() > 0)

	if not hasReplicatedFirstElements then
		if game:IsLoaded() then
			handleRemoveDefaultLoadingGui()
		else
			local gameLoadedCon = nil
			gameLoadedCon = game.Loaded:connect(function()
				gameLoadedCon:disconnect()
				gameLoadedCon = nil
				handleRemoveDefaultLoadingGui()
			end)
		end
	else
		wait(5) -- make sure after 5 seconds we remove the default gui, even if the user doesn't
		handleRemoveDefaultLoadingGui()
	end
end

function handleRemoveDefaultLoadingGui(instant)
	if isTenFootInterface then
		ContextActionService:UnbindCoreAction('CancelGameLoad')
	end
	destroyLoadingElements(instant)
	game:GetService("ReplicatedFirst"):SetDefaultLoadingGuiRemoved()
end

if debugMode then
	warn("Not destroying loading screen because debugMode is true")
	return
end
game:GetService("ReplicatedFirst").FinishedReplicating:connect(handleFinishedReplicating)
if game:GetService("ReplicatedFirst"):IsFinishedReplicating() then
	handleFinishedReplicating()
end

game:GetService("ReplicatedFirst").RemoveDefaultLoadingGuiSignal:connect(handleRemoveDefaultLoadingGui)
if game:GetService("ReplicatedFirst"):IsDefaultLoadingGuiRemoved() then
	handleRemoveDefaultLoadingGui()
end

local VREnabledConn;
local function onVREnabled()
	if VRService.VREnabled then
		handleRemoveDefaultLoadingGui(true)
		require(RobloxGui.Modules.LoadingScreen3D)
	end
end

VREnabledConn = VRService:GetPropertyChangedSignal("VREnabled"):connect(onVREnabled)
onVREnabled()