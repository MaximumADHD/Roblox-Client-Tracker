-- Creates the generic "ROBLOX" loading screen on startup
-- Written by ArceusInator & Ben Tkacheff, 2014
--

-- Constants
local PLACEID = game.PlaceId

local MarketplaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")
local VRService = game:GetService("VRService")
local GuiService = game:GetService("GuiService")
local ContextActionService = game:GetService("ContextActionService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local ContentProvider = game:GetService("ContentProvider")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

--FFlags
local enableNewLoadingScreenSuccess, enableNewLoadingScreenValue = pcall(function() return settings():GetFFlag("EnableNewLoadingScreen") end)
local enableNewLoadingScreen = enableNewLoadingScreenSuccess and enableNewLoadingScreenValue

local newLoadingScreenWhiteThemeSuccess, newLoadingScreenWhiteThemeValue = pcall(function() return settings():GetFFlag("NewLoadingScreenWhiteTheme") end)
local newLoadingScreenWhiteTheme = newLoadingScreenWhiteThemeSuccess and newLoadingScreenWhiteThemeValue

local enableLoadingScreenPlaceIconTweenSuccess, enableLoadingScreenPlaceIconTweenValue = pcall(function() return settings():GetFFlag("EnableLoadingScreenPlaceIconTween") end)
local enableLoadingScreenPlaceIconTween = enableLoadingScreenPlaceIconTweenSuccess and enableLoadingScreenPlaceIconTweenValue

local enableNetworkJoinHealthStatsSuccess, enableNetworkJoinHealthStatsValue = pcall(function() return settings():GetFFlag("NetworkJoinHealthStats") end)
local enableNetworkJoinHealthStats = enableNetworkJoinHealthStatsSuccess and enableNetworkJoinHealthStatsValue

local enableNewLoadingScreenShowStatusSuccess, enableNewLoadingScreenShowStatusValue = pcall(function() return settings():GetFFlag("NewLoadingScreenShowStatus") end)
local enableNewLoadingScreenShowStatus = enableNewLoadingScreenShowStatusSuccess and enableNewLoadingScreenShowStatusValue

local loadingScriptStopUsingVerbsSuccess, loadingScriptStopUsingVerbsValue = pcall(function() return settings():GetFFlag("LoadingScriptStopUsingVerbs") end)
local loadingScriptStopUsingVerbs = loadingScriptStopUsingVerbsSuccess and loadingScriptStopUsingVerbsValue

--Turn this on if you want to test the loading screen in Play Solo and have FFlagLoadingScreenInStudio
local debugMode = false

local startTime = tick()
local loadingImageCon = nil

local COLORS = {
	BLACK = Color3.new(0, 0, 0),
	BACKGROUND_COLOR = Color3.new(45/255, 45/255, 45/255),
	TEXT_COLOR = Color3.new(1, 1, 1),
	WHITE = Color3.new(1, 1, 1),
	ERROR = Color3.new(253/255,68/255,72/255)
}
local TEXT_STROKE_TRANSPARENCY = enableNewLoadingScreen and 1 or 0
local PLACE_ICON_TWEEN_INFO = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
local spinnerImageId = ""

local gameIconSubstitutionType = {
	None = 0;
	Unapproved = 1;
	PendingReview = 2;
	Broken = 3;
	Unavailable = 4;
	Unknown = 5;
}

if enableNewLoadingScreen then
	if newLoadingScreenWhiteTheme then
		COLORS.BACKGROUND_COLOR = COLORS.WHITE
		COLORS.TEXT_COLOR = COLORS.BLACK
		spinnerImageId = "rbxasset://textures/loading/robloxTiltRed.png"
	else
		COLORS.BACKGROUND_COLOR = Color3.new(45 / 255, 45 / 255, 45 / 255)
		COLORS.TEXT_COLOR = COLORS.WHITE
		spinnerImageId = "rbxasset://textures/loading/robloxTilt.png"
	end
end

local function getViewportSize()
	while not game.Workspace.CurrentCamera do
		game.Workspace.Changed:wait()
	end

	-- ViewportSize is initally set to 1, 1 in Camera.cpp constructor.
	-- Also check against 0, 0 incase this is changed in the future.
	while game.Workspace.CurrentCamera.ViewportSize == Vector2.new(0,0) or
		game.Workspace.CurrentCamera.ViewportSize == Vector2.new(1,1) do
		game.Workspace.CurrentCamera.Changed:wait()
	end

	return game.Workspace.CurrentCamera.ViewportSize
end

--
-- Variables
local GameAssetInfo -- loaded by InfoProvider:LoadAssets()
local currScreenGui, renderSteppedConnection = nil, nil
local destroyingBackground, destroyedLoadingGui, hasReplicatedFirstElements = false, false, false
local backgroundImageTransparency = 0
local isMobile = (UserInputService.TouchEnabled == true and UserInputService.MouseEnabled == false and getViewportSize().Y <= 500)
local isTenFootInterface = GuiService:IsTenFootInterface()
local platform = UserInputService:GetPlatform()

local placeLabel, creatorLabel = nil, nil
local backgroundFadeStarted = false
local tweenPlaceIcon = nil

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
			if type(index) == 'string' then
				if index == 'Parent' then
					parent = value
				else
					object[index] = value
				end
			else
				if type(value) == 'function' then
					value(object)
				elseif type(value) == 'userdata' then
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


function ExtractGeneratedUsername(gameName)
	local tempUsername = string.match(gameName, "^([0-9a-fA-F]+)'s Place$")
	if tempUsername and #tempUsername == 32 then
		return tempUsername
	end
end

-- Fix places that have been made with incorrect temporary usernames
function GetFilteredGameName(gameName, creatorName)
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
	spawn(function()
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

function MainGui:tileBackgroundTexture(frameToFill)
	if not frameToFill then return end
	frameToFill:ClearAllChildren()
	if backgroundImageTransparency < 1 then
		local backgroundTextureSize = Vector2.new(512, 512)
		for i = 0, math.ceil(frameToFill.AbsoluteSize.X/backgroundTextureSize.X) do
			for j = 0, math.ceil(frameToFill.AbsoluteSize.Y/backgroundTextureSize.Y) do
				create 'ImageLabel' {
					Name = 'BackgroundTextureImage',
					BackgroundTransparency = 1,
					ImageTransparency = backgroundImageTransparency,
					Image = 'rbxasset://textures/loading/darkLoadingTexture.png',
					Position = UDim2.new(0, i*backgroundTextureSize.X, 0, j*backgroundTextureSize.Y),
					Size = UDim2.new(0, backgroundTextureSize.X, 0, backgroundTextureSize.Y),
					ZIndex = 1,
					Parent = frameToFill
				}
			end
		end
	end
end

-- create a cancel binding for console to be able to cancel anytime while loading
local function createTenfootCancelGui()
	local cancelLabel = create'ImageLabel'
	{
		Name = "CancelLabel";
		Size = UDim2.new(0, 83, 0, 83);
		Position = UDim2.new(1, -32 - 83, 0, 32);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/ButtonIcons/BButton.png';
	}
	local cancelText = create'TextLabel'
	{
		Name = "CancelText";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(1, -131, 0, 64);
		BackgroundTransparency = 1;
		FontSize = Enum.FontSize.Size36;
		TextXAlignment = Enum.TextXAlignment.Right;
		TextColor3 = COLORS.WHITE;
		Text = "Cancel";
	}
	if enableNewLoadingScreen then
		cancelText.Font = Enum.Font.SourceSans
		cancelText.TextSize = 48
		cancelText.AnchorPoint = Vector2.new(1, 0)
		cancelText.Size = UDim2.new(0, 400, 0, 83)
		cancelText.Position = UDim2.new(1, -131, 0, 32)
	end

	if not game:GetService("ReplicatedFirst"):IsFinishedReplicating() then
		local seenBButtonBegin = false
		ContextActionService:BindCoreAction("CancelGameLoad",
			function(actionName, inputState, inputObject)
				if inputState == Enum.UserInputState.Begin then
					seenBButtonBegin = true
				elseif inputState == Enum.UserInputState.End and seenBButtonBegin then
					cancelLabel:Destroy()
					cancelText.Text = "Canceling..."
					cancelText.Position = UDim2.new(1, -32, 0, enableNewLoadingScreen and 32 or 64)
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
		Parent = screenGui,
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
			Parent = mainBackgroundContainer,
		}

        if loadingScriptStopUsingVerbs then
            closeButton.MouseButton1Click:connect(function()
                game:Shutdown()
            end)
        end

		local graphicsFrame = create 'Frame' {
			Name = 'GraphicsFrame',
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Position = UDim2.new(1, (isMobile == true and -75 or (isTenFootInterface and -245 or -225)), 1, (isMobile == true and -75 or (isTenFootInterface and -185 or -165))),
			Size = UDim2.new(0, (isMobile == true and 70 or (isTenFootInterface and 140 or 120)), 0, (isMobile == true and 70 or (isTenFootInterface and 140 or 120))),
			ZIndex = 2,
			Parent = mainBackgroundContainer,
		}

			local loadingImage = create 'ImageLabel' {
				Name = 'LoadingImage',
				BackgroundTransparency = 1,
				Image = 'rbxasset://textures/loading/loadingCircle.png',
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 2,
				Parent = graphicsFrame,
			}

            local numberOfTaps = 0
            local lastTapTime = math.huge
            local doubleTapTimeThreshold = 0.5

            if enableNetworkJoinHealthStats then
                loadingImageCon = loadingImage.InputBegan:connect(function()
                    if numberOfTaps == 0 then
                        numberOfTaps = 1
                        lastTapTime = tick()
                        return
                    end

                    if UserInputService.TouchEnabled == true and UserInputService.MouseEnabled == false then
                        if tick() - lastTapTime <= doubleTapTimeThreshold then
                            GuiService:ShowStatsBasedOnInputString("ConnectionHealth")
                        end
                    end

                    numberOfTaps = 0
                    lastTapTime = math.huge
                end)
            end

			local loadingText = create 'TextLabel' {
				Name = 'LoadingText',
				BackgroundTransparency = 1,
				Size = UDim2.new(1, (isMobile == true and -14 or -56), 1, 0),
				Position = UDim2.new(0, (isMobile == true and 12 or 28), 0, 0),
				Font = Enum.Font.SourceSans,
				FontSize = (isMobile == true and Enum.FontSize.Size12 or Enum.FontSize.Size18),
				TextWrapped = true,
				TextColor3 = COLORS.WHITE,
				TextXAlignment = Enum.TextXAlignment.Left,
				Visible = not isTenFootInterface,
				Text = "Loading...",
				ZIndex = 2,
				Parent = graphicsFrame,
			}

		if enableNewLoadingScreen then
			loadingImage.Position = UDim2.new(0.5, 0, 0.5, 0)
			loadingImage.AnchorPoint = Vector2.new(0.5, 0.5)
			loadingImage.Image = spinnerImageId
			loadingText.Visible = false

			graphicsFrame.Position = UDim2.new(0.95, 0, 0.95, 0)
			graphicsFrame.AnchorPoint = Vector2.new(1, 1)
			graphicsFrame.Size = UDim2.new(0.15, 0, 0.15, 0)
			create("UIAspectRatioConstraint") {
				AspectRatio = 1,
				Parent = graphicsFrame
			}
			create("UISizeConstraint") {
				MaxSize = Vector2.new(100, 100),
				Parent = graphicsFrame
			}
		end

		local infoFrame = create 'Frame' {
			Name = 'InfoFrame',
			BackgroundTransparency = 1,
			Position = UDim2.new(0, (isMobile == true and 20 or 100), 1, (isMobile == true and -120 or -150)),
			Size = UDim2.new(0.4, 0, 0, 110),
			ZIndex = 2,
			Parent = mainBackgroundContainer,
		}

		local uiMessageFrame = create 'Frame' {
			Name = 'UiMessageFrame',
			BackgroundTransparency = 1,
			Position = UDim2.new(0.25, 0, 1, -120),
			Size = enableNewLoadingScreenShowStatus and UDim2.new(1, 0, 0, 35) or UDim2.new(0.5, 0, 0, 80),
			ZIndex = 2,
			LayoutOrder = 5,
			Parent = enableNewLoadingScreenShowStatus and infoFrame or mainBackgroundContainer,
		}

			local uiMessage = create 'TextLabel' {
				Name = 'UiMessage',
				BackgroundTransparency = 1,
				Position = enableNewLoadingScreenShowStatus and UDim2.new(0, 0, 0, 10) or UDim2.new(0, 0, 0, 0),
				Size = enableNewLoadingScreenShowStatus and UDim2.new(1, 0, 0, 25) or UDim2.new(1, 0, 1, 0),
				Font = Enum.Font.SourceSansBold,
				FontSize = Enum.FontSize.Size18,
				TextScaled = enableNewLoadingScreenShowStatus,
				TextWrapped = true,
				TextColor3 = COLORS.WHITE,
				Text = "",
				ZIndex = 2,
				Parent = uiMessageFrame,

				Visible = enableNewLoadingScreenShowStatus,
			}

		local infoFrameAspect, infoFrameList = nil, nil
		local textContainer = nil
		if enableNewLoadingScreen then
			infoFrameAspect = create("UIAspectRatioConstraint") {
				AspectRatio = 3 / 2,
				Parent = infoFrame
			}
			infoFrameList = create("UIListLayout") {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0.05, 0),
				Parent = infoFrame
			}

			textContainer = create("Frame") {
				BackgroundTransparency = 1,
				Size = UDim2.new(2/3, 0, 1, 0),
				LayoutOrder = 2,
				Parent = nil
			}
			create("UIListLayout") {
				FillDirection = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Parent = textContainer
			}
		end

			local placeIcon = nil
			if enableNewLoadingScreen then
				placeIcon = create("ImageLabel") {
					Name = "PlaceIcon",
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					Position = UDim2.new(0.5, 0, 0, 0),
					AnchorPoint = Vector2.new(0.5, 0),
					LayoutOrder = 1,
					Parent = infoFrame,

					ImageTransparency = 1,
					Image = ""
				}
				local placeIconAspect = create("UIAspectRatioConstraint") {
					AspectRatio = 576 / 324,
					AspectType = Enum.AspectType.ScaleWithParentSize,
					DominantAxis = Enum.DominantAxis.Width,
					Parent = placeIcon
				}
				local placeIconSize = create("UISizeConstraint") {
					MaxSize = Vector2.new(400, 400),
					Parent = placeIcon
				}

				--Start trying to load the place icon image
				--Web might not have this icon size generated, so we can poll asset-thumbnail/json and check
				--the JSON result for thumbnailFinal/Final to see when it's done being generated so we never
				--show a N/A image. This is how the console AppShell does it!
				coroutine.wrap(function()
					local httpService = game:GetService("HttpService")
					local rbxApiService = game:GetService("HttpRbxApiService")

					while PLACEID <= 0 do RunService.RenderStepped:wait() end

					local assetGameUrl = ContentProvider.BaseUrl:gsub("www", "assetgame")
					local assetJsonUrl = string.format("%sasset-thumbnail/json?assetId=%d&width=576&height=324&format=png", assetGameUrl, PLACEID)
					local imageUrl = string.format("%sThumbs/GameIcon.ashx?assetId=%d&width=576&height=324&ignorePlaceMediaItems=true", assetGameUrl, PLACEID)

					local function tryGetFinalAsync()
						local resultStr = game:HttpGetAsync(assetJsonUrl)
						local parseSuccess, result = pcall(function() return httpService:JSONDecode(resultStr) end)

						if parseSuccess and result then
							local isFinal = result.Final or result.thumbnailFinal
							local substitutionType = result.substitutionType or result.substitutionType

							if isFinal and (substitutionType == nil or substitutionType == gameIconSubstitutionType.None) then
								ContentProvider:PreloadAsync { imageUrl }
								placeIcon.Image = imageUrl

								if not backgroundFadeStarted then
									if enableLoadingScreenPlaceIconTween then
										tweenPlaceIcon = TweenService:Create(placeIcon, PLACE_ICON_TWEEN_INFO, { ImageTransparency = 0 })
										tweenPlaceIcon:Play()
									else
										placeIcon.ImageTransparency = 0
									end
								end

								return true
							end
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
				FontSize = (isTenFootInterface and Enum.FontSize.Size48 or Enum.FontSize.Size24),
				TextWrapped = true,
				TextScaled = true,
				TextColor3 = COLORS.TEXT_COLOR,
				TextStrokeTransparency = TEXT_STROKE_TRANSPARENCY,
				Text = "",
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Bottom,
				ZIndex = 2,
				LayoutOrder = 2,
				Parent = infoFrame,
			}

			local creatorContainer = create 'Frame' {
				Name = "Creator",
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 48),
				LayoutOrder = 3
			}
			local creatorContainerList = create 'UIListLayout' {
				Parent = creatorContainer,
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 5)
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
					TextStrokeTransparency = TEXT_STROKE_TRANSPARENCY,
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
				Position = UDim2.new(0, isTenFootInterface and 72 or 0, 0, 80),
				Font = Enum.Font.SourceSans,
				FontSize = (isTenFootInterface and Enum.FontSize.Size36 or Enum.FontSize.Size18),
				TextWrapped = true,
				TextScaled = true,
				TextColor3 = COLORS.TEXT_COLOR,
				TextStrokeTransparency = TEXT_STROKE_TRANSPARENCY,
				Text = "",
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				ZIndex = 2,
				LayoutOrder = 4,
				Parent = infoFrame,
			}

			if enableNewLoadingScreen and isTenFootInterface then
				creatorContainer.Parent = infoFrame

				byLabel.TextScaled = false
				byLabel.Parent = creatorContainer
				byLabel.TextXAlignment = Enum.TextXAlignment.Center
				byLabel.TextYAlignment = Enum.TextYAlignment.Center

				creatorIcon.Parent = creatorContainer

				creatorLabel.Parent = creatorContainer
				creatorLabel.TextScaled = false
				creatorLabel.Size = UDim2.new(0, creatorLabel.TextBounds.X, 1, 0)
			end


		local backgroundTextureFrame = create 'Frame' {
			Name = 'BackgroundTextureFrame',
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			ClipsDescendants = true,
			ZIndex = 1,
			BackgroundTransparency = 1,
			Parent = mainBackgroundContainer
		}
		if enableNewLoadingScreen then
			backgroundTextureFrame.Visible = false
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
	}

		local errorText = create 'TextLabel' {
			Name = "ErrorText",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Font = Enum.Font.SourceSansBold,
			FontSize = Enum.FontSize.Size14,
			TextWrapped = true,
			TextColor3 = COLORS.TEXT_COLOR,
			Text = "",
			ZIndex = 8,
			Parent = errorFrame,
		}

	while not game:GetService("CoreGui") do
		wait()
	end
	screenGui.Parent = game:GetService("CoreGui")
	currScreenGui = screenGui

	if enableNewLoadingScreen then
		placeLabel.TextStrokeTransparency = 1
		placeLabel.Font = Enum.Font.SourceSansLight
		placeLabel.TextXAlignment = Enum.TextXAlignment.Center

		creatorLabel.TextStrokeTransparency = 1
		creatorLabel.Font = Enum.Font.SourceSansLight
		creatorLabel.TextXAlignment = Enum.TextXAlignment.Center
		creatorLabel.TextYAlignment = Enum.TextYAlignment.Center
	end

	local function onResized(prop)
		if prop == "AbsoluteSize" then
			if enableNewLoadingScreen then
				infoFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				infoFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				infoFrame.Size = UDim2.new(0.75, 0, 1, 0)
				infoFrameAspect.AspectRatio = 2/3

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
				creatorLabel.TextXAlignment = Enum.TextXAlignment.Center
			else
				if screenGui.AbsoluteSize.Y < screenGui.AbsoluteSize.X then
 					--Landscape
 					infoFrame.Position = UDim2.new(0, (isMobile == true and 20 or 100), 1, (isMobile == true and -120 or -150))
 					uiMessageFrame.Position = UDim2.new(0.25, 0, 1, -120)
 				else
 					--Portrait
 					infoFrame.Position = UDim2.new(0, 20, 0, 100)
 					uiMessageFrame.Position = UDim2.new(0.25, 0, 0.5, 0)
				end
			end
		end
	end
	onResized("AbsoluteSize")
	screenGui.Changed:connect(onResized)
end

function round(num, idp)
  local mult = 10^(idp or 0)
  return math.floor(num * mult + 0.5) / mult
end

---------------------------------------------------------
-- Main Script (show something now + setup connections)

-- start loading assets asap
InfoProvider:LoadAssets()
MainGui:GenerateMain()
if isTenFootInterface then
	createTenfootCancelGui()
end

-- todo: remove setVerb when removing loadingScriptStopUsingVerbs
local setVerb = true
local lastRenderTime, lastDotUpdateTime, brickCountChange = nil, nil, nil
local fadeCycleTime = 1.7
local turnCycleTime = 2
local lastAbsoluteSize = Vector2.new(0, 0)
local loadingDots = "..."
local dotChangeTime = .2
local lastBrickCount = 0

local function spinnerEasingFunc1(a, b, t)
	--quick and dirty quadratic in-out
	t = t * 2
	if t < 1 then
		return b / 2 * t * t + a
	else
		t = t - 1
		return -b / 2 * (t * (t - 2) - 1) + a
	end
end

local function spinnerEasingFunc2(a, b, t)
	t = t * 2
	if t < 1 then
		return b / 2 * t*t*t + a
	else
		t = t - 2
		return b / 2 * (t * t * t + 2) + b
	end
end

local spinnerEasingFunc = spinnerEasingFunc2

renderSteppedConnection = game:GetService("RunService").RenderStepped:connect(function()
	if not currScreenGui then return end
	if not currScreenGui:FindFirstChild("BlackFrame") then return end

    if not loadingScriptStopUsingVerbs then
        if setVerb then
            currScreenGui.BlackFrame.CloseButton:SetVerb("Exit")
            setVerb = false
        end
    end

	if currScreenGui.BlackFrame:FindFirstChild("BackgroundTextureFrame") and currScreenGui.BlackFrame.BackgroundTextureFrame.AbsoluteSize ~= lastAbsoluteSize then
		lastAbsoluteSize = currScreenGui.BlackFrame.BackgroundTextureFrame.AbsoluteSize
		MainGui:tileBackgroundTexture(currScreenGui.BlackFrame.BackgroundTextureFrame)
	end

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
					if enableNewLoadingScreen then
						creatorLabel.Size = UDim2.new(0, creatorLabel.TextBounds.X, 1, 0)
					end
				else
					creatorLabel.Text = "By "..creatorName
				end
			end
		end
	end

	if not lastRenderTime then
		lastRenderTime = tick()
		lastDotUpdateTime = lastRenderTime
		return
	end

	local currentTime = tick()
	local fadeAmount = (currentTime - lastRenderTime) * fadeCycleTime
	local turnAmount = (currentTime - lastRenderTime) * (360/turnCycleTime)
	lastRenderTime = currentTime

	if enableNewLoadingScreen then
		local spinnerImage = currScreenGui.BlackFrame.GraphicsFrame.LoadingImage
		local timeInCycle = currentTime % turnCycleTime
		local cycleAlpha = spinnerEasingFunc(0, 1, timeInCycle / turnCycleTime)
		spinnerImage.Rotation = cycleAlpha * 360
	else
		currScreenGui.BlackFrame.GraphicsFrame.LoadingImage.Rotation = currScreenGui.BlackFrame.GraphicsFrame.LoadingImage.Rotation + turnAmount
	end

	local updateLoadingDots =  function()
		loadingDots = loadingDots.. "."
		if loadingDots == "...." then
			loadingDots = ""
		end
		currScreenGui.BlackFrame.GraphicsFrame.LoadingText.Text = "Loading" ..loadingDots
	end

	if currentTime - lastDotUpdateTime >= dotChangeTime and InfoProvider:GetCreatorName() == "" then
		lastDotUpdateTime = currentTime
		updateLoadingDots()
	else
		if GuiService:GetBrickCount() > 0 then
			if brickCountChange == nil then
				brickCountChange = GuiService:GetBrickCount()
			end
			if GuiService:GetBrickCount() - lastBrickCount >= brickCountChange then
				lastBrickCount = GuiService:GetBrickCount()
				updateLoadingDots()
			end
		end
	end

	if not isTenFootInterface then
		if currentTime - startTime > 5 and currScreenGui.BlackFrame.CloseButton.ImageTransparency > 0 then
			currScreenGui.BlackFrame.CloseButton.ImageTransparency = currScreenGui.BlackFrame.CloseButton.ImageTransparency - fadeAmount

			if currScreenGui.BlackFrame.CloseButton.ImageTransparency <= 0 then
				currScreenGui.BlackFrame.CloseButton.Active = true
			end
		end
	end
end)

spawn(function()
	local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
	local guiInsetChangedEvent = Instance.new("BindableEvent")
	guiInsetChangedEvent.Name = "GuiInsetChanged"
	guiInsetChangedEvent.Parent = RobloxGui
	guiInsetChangedEvent.Event:connect(function(x1, y1, x2, y2)
		if currScreenGui and currScreenGui:FindFirstChild("BlackFrame") then
			currScreenGui.BlackFrame.Position = UDim2.new(0, -x1, 0, -y1)
			currScreenGui.BlackFrame.Size = UDim2.new(1, x1 + x2, 1, y1 + y2)
		end
	end)
end)

local leaveGameButton, leaveGameTextLabel, errorImage = nil

GuiService.ErrorMessageChanged:connect(function()
	if GuiService:GetErrorMessage() ~= '' then
		local utility = require(RobloxGui.Modules.Settings.Utility)
		if isTenFootInterface then
			currScreenGui.ErrorFrame.Size = UDim2.new(1, 0, 0, 144)
			currScreenGui.ErrorFrame.Position = UDim2.new(0, 0, 0, 0)
			currScreenGui.ErrorFrame.BackgroundColor3 = COLORS.BLACK
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
			if enableNewLoadingScreenShowStatus and infoFrame then
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
		local infoFrameChildren = enableNewLoadingScreen and getDescendants(infoFrame) or infoFrame:GetChildren()
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
			if enableNewLoadingScreen then
				RunService.RenderStepped:wait()
			end
			if not lastUpdateTime then
				lastUpdateTime = tick()
			else
				local newTime = tick()
				transparency = transparency + rateChange * (newTime - lastUpdateTime)
				for i = 1, #infoFrameChildren do
					local child = infoFrameChildren[i]
					if child:IsA('TextLabel') then
						child.TextTransparency = transparency
						if not enableNewLoadingScreen then
							child.TextStrokeTransparency = transparency
						end
					elseif child:IsA('ImageLabel') then
						child.ImageTransparency = transparency
					end
				end
				graphicsFrame.LoadingImage.ImageTransparency = transparency
				blackFrame.BackgroundTransparency = transparency

				if backgroundImageTransparency < 1 then
					backgroundImageTransparency = transparency
					local backgroundImages = blackFrame.BackgroundTextureFrame:GetChildren()
					for i = 1, #backgroundImages do
						backgroundImages[i].ImageTransparency = backgroundImageTransparency
					end
				end

				lastUpdateTime = newTime
			end
			if not enableNewLoadingScreen then
				wait()
			end
		end
		if blackFrame ~= nil then
			stopListeningToRenderingStep()
			blackFrame:Destroy()
		end
        if enableNetworkJoinHealthStats then
            loadingImageCon:disconnect()
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
local function onVREnabled(prop)
	if prop == 'VREnabled' then
		local UseVr = false
		pcall(function() UseVr = VRService.VREnabled end)

		if UseVr then
			if UserInputServiceChangedConn then
				UserInputServiceChangedConn:disconnect()
				UserInputServiceChangedConn = nil
			end
			handleRemoveDefaultLoadingGui(true)
			require(RobloxGui.Modules.LoadingScreen3D)
		end
	end
end

VREnabledConn = VRService.Changed:connect(onVREnabled)
onVREnabled('VREnabled')
