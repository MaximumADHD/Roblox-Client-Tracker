-- Creates the generic "ROBLOX" loading screen on startup
-- Written by ArceusInator & Ben Tkacheff, 2014
-- Updates by 0xBAADF00D, 2017
local AssetService = game:GetService("AssetService")
local MarketplaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")
local VRService = game:GetService("VRService")
local GuiService = game:GetService("GuiService")
local ContextActionService = game:GetService("ContextActionService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local ContentProvider = game:GetService("ContentProvider")
local CoreGui = game:GetService("CoreGui")
local ReplicatedFirst = game:GetService("ReplicatedFirst")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local create = require(RobloxGui:WaitForChild("Modules"):WaitForChild("Common"):WaitForChild("Create"))
local PolicyService = require(RobloxGui.Modules.Common:WaitForChild("PolicyService"))

--FFlags
local FFlagLoadTheLoadingScreenFasterSuccess, FFlagLoadTheLoadingScreenFasterValue = pcall(function() return settings():GetFFlag("LoadTheLoadingScreenFaster") end)
local FFlagLoadTheLoadingScreenFaster = FFlagLoadTheLoadingScreenFasterSuccess and FFlagLoadTheLoadingScreenFasterValue
local FFlagLoadTheLoadingScreenEvenFaster = game:DefineFastFlag("LoadTheLoadingScreenEvenFaster", false)

local FFlagShowConnectionErrorCode = settings():GetFFlag("ShowConnectionErrorCode")
local FFlagConnectionScriptEnabled = settings():GetFFlag("ConnectionScriptEnabled")

local antiAddictionNoticeStringEn = "Boycott bad games, refuse pirated games. Be aware of self-defense and being deceived. Playing games is good for your brain, but too much game play can harm your health. Manage your time well and enjoy a healthy lifestyle."
local FFlagDisableAutoTranslateForKeyTranslatedContent = require(RobloxGui.Modules.Flags.FFlagDisableAutoTranslateForKeyTranslatedContent)

local FFlagFixTopBarOverLoadingScreen = require(RobloxGui.Modules.Flags.FFlagFixTopBarOverLoadingScreen)

local debugMode = false

local startTime = tick()
local loadingImageInputBeganConn = nil
local waitForGameIdConnection

local GAME_THUMBNAIL_URL = "rbxthumb://type=GameIcon&id=%d&w=256&h=256"
local MAX_ICON_SIZE = Vector2.new(256, 256)
local ICON_ASPECT_RATIO = 1

local COLORS = {
	BACKGROUND_COLOR = Color3.fromRGB(45, 45, 45),
	TEXT_COLOR = Color3.fromRGB(255, 255, 255),
	ERROR = Color3.fromRGB(253, 68, 72)
}
local spinnerImageId = "rbxasset://textures/loading/robloxTilt.png"

-- Variables
local GameAssetInfo -- loaded by InfoProvider:LoadAssets()
local currScreenGui
local renderSteppedConnection
local destroyingBackground, destroyedLoadingGui = false, false
local isTenFootInterface = GuiService:IsTenFootInterface()

local placeLabel, creatorLabel = nil, nil
local backgroundFadeStarted = false
local tweenPlaceIcon = nil
local layoutIsReady = false

local connectionHealthShown = false
local connectionHealthCon

local InfoProvider = {}

local function WaitForPlaceId()
	local placeId = game.PlaceId
	if placeId == 0 then
		game:GetPropertyChangedSignal("PlaceId"):wait()
		placeId = game.PlaceId
	end
	return placeId
end

function InfoProvider:GetGameName()
	if GameAssetInfo ~= nil then
		return GameAssetInfo.Name
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

	if not ReplicatedFirst:IsFinishedReplicating() then
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

local function GenerateGui()
	local screenGui = create 'ScreenGui' {
		Name = 'RobloxLoadingGui',
		DisplayOrder = FFlagFixTopBarOverLoadingScreen and 8 or nil,
	}

	--
	-- create descendant frames
	local mainBackgroundContainer

	local inGameGlobalGuiInset = settings():GetFVariable("InGameGlobalGuiInset")
	mainBackgroundContainer = create 'Frame' {
		Name = 'BlackFrame',
		BackgroundColor3 = COLORS.BACKGROUND_COLOR,
		BackgroundTransparency = 0,
		Size = UDim2.new(1, 0, 1, inGameGlobalGuiInset),
		Position = UDim2.new(0, 0, 0, -inGameGlobalGuiInset),
		Active = true,
		Parent = screenGui
	}

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
        if PolicyService:IsSubjectToChinaPolicies() then
            return
        end

        if numberOfTaps == 0 then
            numberOfTaps = 1
            lastTapTime = tick()
            return
        end

        if UserInputService.TouchEnabled == true and UserInputService.MouseEnabled == false then
            if tick() - lastTapTime <= doubleTapTimeThreshold then
                GuiService:ShowStatsBasedOnInputString("ConnectionHealth")
				connectionHealthShown = not connectionHealthShown
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
		Parent = mainBackgroundContainer,
		create 'UIPadding' {
			Name = 'UiMessagePadding',
			PaddingBottom = UDim.new(0, 25),
		} or nil
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
			Position = UDim2.new(0, 0, 0, 5),
			Size = UDim2.new(1, 0, 0, 25),
			Font = Enum.Font.SourceSansLight,
			TextSize = 18,
			TextScaled = true,
			TextWrapped = true,
			TextColor3 = COLORS.TEXT_COLOR,
			Text = "",
			TextTransparency = 1,
			ZIndex = 2,
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
			AspectRatio = FFlagLoadTheLoadingScreenEvenFaster and ICON_ASPECT_RATIO or 576 / 324,
			AspectType = Enum.AspectType.ScaleWithParentSize,
			DominantAxis = Enum.DominantAxis.Width
		},
		create("UISizeConstraint") {
			MaxSize = FFlagLoadTheLoadingScreenEvenFaster and MAX_ICON_SIZE or Vector2.new(400, 400)
		}
	}

	if FFlagLoadTheLoadingScreenEvenFaster then
		local function onGameId()
			local gameId = game.GameId
			local imageUrl = GAME_THUMBNAIL_URL:format(gameId)
			placeIcon.Image = imageUrl
			ContentProvider:PreloadAsync({ placeIcon })
			if not backgroundFadeStarted then
				placeIcon.ImageTransparency = 0
			end
		end
		if game.GameId > 0 then
			coroutine.wrap(onGameId)()
		else
			waitForGameIdConnection = game:GetPropertyChangedSignal("GameId"):Connect(function ()
				waitForGameIdConnection:Disconnect()
				onGameId()
			end)
		end
	else
		--Start trying to load the place icon image
		--Web might not have this icon size generated, so we can poll asset-thumbnail/json and check
		--the JSON result for thumbnailFinal/Final to see when it's done being generated so we never
		--show a N/A image. This is how the console AppShell does it!
		coroutine.wrap(function()
			local placeId = WaitForPlaceId()

			local function tryGetFinalAsync()
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

			while not tryGetFinalAsync() do end
		end)()
	end

	placeLabel = create 'TextLabel' {
		Name = 'PlaceLabel',
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 80),
		Position = UDim2.new(0, 0, 0, 0),
		Font = Enum.Font.SourceSans,
		TextSize = isTenFootInterface and 48 or 24,
		TextWrapped = true,
		TextScaled = true,
		TextColor3 = COLORS.TEXT_COLOR,
		TextStrokeTransparency = 1,
		TextTransparency = 1,
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
			TextSize = 36,
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
		TextSize = isTenFootInterface and 36 or 18,
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
		creatorLabel.TextWrapped = false
		creatorLabel.Position = UDim2.new(0, 72, 0, 80)
		creatorLabel.Size = UDim2.new(0, creatorLabel.TextBounds.X, 1, 0)
	end

    coroutine.wrap(function()
        RunService.RenderStepped:wait()
        RunService.RenderStepped:wait()
        layoutIsReady = true

        placeLabel.TextTransparency = 0

        local uiMessage = uiMessageFrame.UiMessage
        if uiMessage.Text ~= "" then
            uiMessage.TextTransparency = 0
        end
    end)()

	if not FFlagConnectionScriptEnabled or isTenFootInterface then
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
				TextSize = 14,
				TextWrapped = true,
				TextColor3 = COLORS.TEXT_COLOR,
				Text = "",
				ZIndex = 8
			}
		}
	end

	while not game:GetService("CoreGui") do
		if FFlagLoadTheLoadingScreenFaster then
			RunService.RenderStepped:wait()
		else
			wait()
		end
	end

	screenGui.Parent = CoreGui

	infoFrame.RootLocalizationTable = CoreGui:FindFirstChild("CoreScriptLocalization")

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
		placeLabel.AutoLocalize = not FFlagDisableAutoTranslateForKeyTranslatedContent
	end
	onResized()
	screenGui:GetPropertyChangedSignal("AbsoluteSize"):connect(onResized)
end

---------------------------------------------------------
-- Main Script (show something now + setup connections)

-- start loading assets asap
InfoProvider:LoadAssets()
GenerateGui()
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

coroutine.wrap(function()
	local showAntiAddictionNoticeStringEn = PolicyService:IsSubjectToChinaPolicies()

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
				if showAntiAddictionNoticeStringEn then
					creatorLabel.Text = antiAddictionNoticeStringEn
				else
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
end)()

-- use the old error frame when on XBox
if not FFlagConnectionScriptEnabled or isTenFootInterface then
	local errorImage

	GuiService.ErrorMessageChanged:connect(function()
		if GuiService:GetErrorMessage() ~= '' then
			--TODO: Remove this reference to Utility
			local utility = require(RobloxGui.Modules.Settings.Utility)
			if isTenFootInterface then
				currScreenGui.ErrorFrame.Size = UDim2.new(1, 0, 0, 144)
				currScreenGui.ErrorFrame.Position = UDim2.new(0, 0, 0, 0)
				currScreenGui.ErrorFrame.BackgroundColor3 = COLORS.BACKGROUND_COLOR
				currScreenGui.ErrorFrame.BackgroundTransparency = 0.5
				currScreenGui.ErrorFrame.ErrorText.TextSize = 36
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

			local errorCode = GuiService:GetErrorCode()
			local errorMessage = GuiService:GetErrorMessage()
			if not FFlagShowConnectionErrorCode then
				currScreenGui.ErrorFrame.ErrorText.Text = errorMessage
			else
				if not errorCode then
					currScreenGui.ErrorFrame.ErrorText.Text = ("%s (Error Code: -1)"):format(errorMessage)
				else
					currScreenGui.ErrorFrame.ErrorText.Text = ("%s (Error Code: %d)"):format(errorMessage, errorCode.Value)
				end
			end

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
end

GuiService.UiMessageChanged:connect(function(type, newMessage)
	if type == Enum.UiMessageType.UiMessageInfo then
		local blackFrame = currScreenGui and currScreenGui:FindFirstChild('BlackFrame')
		if blackFrame then
			local infoFrame = blackFrame:FindFirstChild("InfoFrame")
            if infoFrame then
                local uiMessage = infoFrame.UiMessageFrame.UiMessage
                uiMessage.Text = newMessage
                if newMessage ~= '' and layoutIsReady then
                    uiMessage.TextTransparency = 0
                else
                    uiMessage.TextTransparency = 1
                end
            end
		end
	end
end)

if not FFlagConnectionScriptEnabled and GuiService:GetErrorMessage() ~= '' then
	currScreenGui.ErrorFrame.ErrorText.Text = GuiService:GetErrorMessage()
	currScreenGui.ErrorFrame.Visible = true
end


local function stopListeningToRenderingStep()
	if renderSteppedConnection then
		renderSteppedConnection:disconnect()
		renderSteppedConnection = nil
	end
end

local function disconnectAndCloseHealthStat()
	if connectionHealthCon then
		connectionHealthCon:disconnect()
		connectionHealthCon = nil
		GuiService:CloseStatsBasedOnInputString("ConnectionHealth")
	end
end

local function fadeAndDestroyBlackFrame(blackFrame)
	if destroyingBackground then return end
	destroyingBackground = true
	spawn(function()
		local infoFrame = blackFrame:FindFirstChild("InfoFrame")
		local graphicsFrame = blackFrame:FindFirstChild("GraphicsFrame")

		local infoFrameDescendants = infoFrame:GetDescendants()
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

		if waitForGameIdConnection then
			waitForGameIdConnection:Disconnect()
		end

		if loadingImageInputBeganConn then
			loadingImageInputBeganConn:disconnect()
		end
        if connectionHealthShown then
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

local function destroyLoadingElements(instant)
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

local function waitForCharacterLoaded()
	if Players.CharacterAutoLoads then
		local localPlayer = Players.LocalPlayer
		if not localPlayer then
			Players:GetPropertyChangedSignal("LocalPlayer"):wait()
			localPlayer = Players.LocalPlayer
		end
		if not localPlayer.Character then
			localPlayer.CharacterAdded:wait()
		end
	end
end

local function handleRemoveDefaultLoadingGui(instant)
	if isTenFootInterface then
		ContextActionService:UnbindCoreAction('CancelGameLoad')
	end
	destroyLoadingElements(instant)
	ReplicatedFirst:SetDefaultLoadingGuiRemoved()
end

local function handleFinishedReplicating()
	if #ReplicatedFirst:GetChildren() == 0 then
		if game:IsLoaded() then
			waitForCharacterLoaded()
			handleRemoveDefaultLoadingGui()
		else
			local gameLoadedCon = nil
			gameLoadedCon = game.Loaded:connect(function()
				gameLoadedCon:disconnect()
				gameLoadedCon = nil
				waitForCharacterLoaded()
				handleRemoveDefaultLoadingGui()
			end)
		end
	else
		wait(5) -- make sure after 5 seconds we remove the default gui, even if the user doesn't
		handleRemoveDefaultLoadingGui()
	end
end

if debugMode then
	warn("Not destroying loading screen because debugMode is true")
	return
end
ReplicatedFirst.FinishedReplicating:connect(handleFinishedReplicating)
if ReplicatedFirst:IsFinishedReplicating() then
	handleFinishedReplicating()
end

ReplicatedFirst.RemoveDefaultLoadingGuiSignal:connect(handleRemoveDefaultLoadingGui)
if ReplicatedFirst:IsDefaultLoadingGuiRemoved() then
	handleRemoveDefaultLoadingGui()
end

coroutine.wrap(function()
	if not VRService.VREnabled then
		VRService:GetPropertyChangedSignal("VREnabled"):Wait()
	end
	handleRemoveDefaultLoadingGui(true)
	require(RobloxGui.Modules.LoadingScreen3D)
end)()
