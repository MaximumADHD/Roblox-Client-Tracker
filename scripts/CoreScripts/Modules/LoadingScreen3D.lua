--!nonstrict
-- LoadingScreen3D.lua --
-- Written by Kip Turner, copyright ROBLOX 2016 --

local SECONDS_TO_FADE = 2.5
local ROTATIONS_PER_SECOND = 0.5
local TEXT_SCROLL_SPEED = 25

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")
local MarketPlaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local GuiService = game:GetService("GuiService")
local TweenService = game:GetService("TweenService")

local FFlagLoadingScreen3DUseTweenService = game:DefineFastFlag("LoadingScreen3DUseTweenService", false)
local Util
if not FFlagLoadingScreen3DUseTweenService then
	local RobloxGui = CoreGui:WaitForChild("RobloxGui")
	Util = require(RobloxGui.Modules.Settings.Utility)
end

local SplashScreenManager = require(CorePackages.Workspace.Packages.SplashScreenManager).SplashScreenManager
local FFlagLoadingRemoveRemoteCallErrorPrint = game:DefineFastFlag("LoadingRemoveRemoteCallErrorPrint", false)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create

local function FadeElements(element, newValue, duration)
	duration = duration or 0.5
	if element == nil then
		return
	end

	local tweenInfo = if FFlagLoadingScreen3DUseTweenService then TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut) else nil

	if element:IsA("ImageLabel") or element:IsA("ImageButton") then
		if FFlagLoadingScreen3DUseTweenService then
			TweenService:Create(element, tweenInfo, { ImageTransparency = newValue }):Play()
		else
			Util:TweenProperty(
				element,
				"ImageTransparency",
				element.ImageTransparency,
				newValue,
				duration,
				Util:GetEaseInOutQuad()
			)
		end
	end
	if element:IsA("GuiObject") then
		if FFlagLoadingScreen3DUseTweenService then
			TweenService:Create(element, tweenInfo, { BackgroundTransparency = newValue }):Play()
		else
			Util:TweenProperty(
				element,
				"BackgroundTransparency",
				element.BackgroundTransparency,
				newValue,
				duration,
				Util:GetEaseInOutQuad()
			)
		end
	end
	if element:IsA("TextLabel") or element:IsA("TextBox") or element:IsA("TextButton") then
		if FFlagLoadingScreen3DUseTweenService then
			TweenService:Create(element, tweenInfo, { TextTransparency = newValue }):Play()
		else
			Util:TweenProperty(
				element,
				"TextTransparency",
				element.TextTransparency,
				newValue,
				duration,
				Util:GetEaseInOutQuad()
			)
		end
	end
	for _, child in pairs(element:GetChildren()) do
		FadeElements(child, newValue, duration)
	end
end

local GameInfoProvider = {}
do
	local LoadingFinishedSignal = Instance.new("BindableEvent")
	GameInfoProvider.Finished = false
	GameInfoProvider.GameAssetInfo = nil
	GameInfoProvider.LoadingFinishedEvent = LoadingFinishedSignal.Event

	function GameInfoProvider:GetGameName()
		if self.GameAssetInfo ~= nil then
			return self.GameAssetInfo.Name
		else
			return ""
		end
	end

	function GameInfoProvider:GetCreatorName()
		if self.GameAssetInfo ~= nil then
			return self.GameAssetInfo.Creator.Name
		else
			return ""
		end
	end

	function GameInfoProvider:IsReady()
		return self.Finished
	end

	function GameInfoProvider:LoadAssetsAsync()
		spawn(function()
			while game.PlaceId <= 0 do
				wait()
			end

			-- load game asset info
			local success, result = pcall(function()
				self.GameAssetInfo = MarketPlaceService:GetProductInfo(game.PlaceId)
			end)
			if not FFlagLoadingRemoveRemoteCallErrorPrint then
				if not success then
					print("LoadingScript->GameInfoProvider:LoadAssets:", result)
				end
			end
			self.Finished = true
			LoadingFinishedSignal:Fire()
		end)
	end
end

local LoadingScreen = {}

local loadingContainer = Create("Frame")({
	Name = "VRLoadingScreenContainer",
	Size = UDim2.new(1, 0, 1, 0),
	BackgroundTransparency = 1,
	BackgroundColor3 = Color3.new(0, 0, 0),
})

local backgroundImage = Create("ImageLabel")({
	Name = "LoadingBackground",
	Position = UDim2.new(0.25, 0, 0.25, 0),
	Size = UDim2.new(0.5, 0, 0.5, 0),
	Image = "rbxasset://textures/ui/LoadingScreen/BackgroundLight.png",
	ScaleType = Enum.ScaleType.Slice,
	SliceCenter = Rect.new(70, 70, 110, 110),
	BackgroundTransparency = 1,
	Parent = loadingContainer,
	ImageColor3 = Color3.new(0, 0, 0),
})

local spinnerRotation = 0
local spinnerImage = Create("ImageLabel")({
	Name = "Spinner",
	Size = UDim2.new(0.25, 0, 0.25, 0),
	Position = UDim2.new(0.5 - (0.25 / 2), 0, 0.45 - (0.25 / 2), 0),
	Image = "rbxasset://textures/ui/LoadingScreen/LoadingSpinner.png",
	BackgroundTransparency = 1,
	Parent = backgroundImage,
})

local loadingText = Create("TextLabel")({
	Name = "LoadingText",
	Text = "Loading...",
	BackgroundTransparency = 1,
	Font = Enum.Font.SourceSans,
	FontSize = Enum.FontSize.Size60,
	Position = UDim2.new(0.5, 0, 0.2, 0),
	Parent = backgroundImage,
	TextColor3 = Color3.new(77 / 255, 163 / 255, 224 / 255),
})

local gameNameText = Create("TextLabel")({
	Name = "GameNameText",
	Text = "",
	BackgroundTransparency = 1,
	Font = Enum.Font.SourceSans,
	FontSize = Enum.FontSize.Size60,
	Size = UDim2.new(0.9, 0, 0.1, 0),
	Position = UDim2.new(0.05, 0, 0.65, 0),
	ClipsDescendants = true,
	Parent = backgroundImage,
	TextColor3 = Color3.new(15 / 255, 237 / 255, 255 / 255),
})

local creatorTextContainer = Create("Frame")({
	Name = "CreatorTextContainer",
	Size = UDim2.new(0.9, 0, 0.1, 0),
	Position = UDim2.new(0.05, 0, 0.77, 0),
	BackgroundTransparency = 1,
	ClipsDescendants = true,
	Parent = backgroundImage,
})

local creatorTextPosition = 0
local creatorText = Create("TextLabel")({
	Name = "CreatorText",
	Text = "",
	BackgroundTransparency = 1,
	Font = Enum.Font.SourceSans,
	FontSize = Enum.FontSize.Size42,
	Size = UDim2.new(1, 0, 1, 0),
	Parent = creatorTextContainer,
	TextColor3 = Color3.new(15 / 255, 237 / 255, 255 / 255),
})

local function ScreenDimsAtDepth(depth)
	local camera = workspace.CurrentCamera
	if camera then
		local aspectRatio = camera.ViewportSize.x / camera.ViewportSize.y
		local studHeight = 2 * depth * math.tan(math.rad(camera.FieldOfView / 2))
		local studWidth = studHeight * aspectRatio

		return Vector2.new(studWidth, studHeight)
	end
	return Vector2.new(0, 0)
end

local CleanedUp = false
local freeze = true
delay(2.5, function()
	freeze = false
end)
local function UpdateLayout(delta)
	if creatorText.TextBounds.X < creatorTextContainer.AbsoluteSize.X then
		creatorText.Position = UDim2.new(0, 0, 0, 0)
		creatorText.Size = UDim2.new(1, 0, 1, 0)
	elseif delta ~= nil then
		creatorText.Size = UDim2.new(0, creatorText.TextBounds.X, 1, 0)
		if not freeze then
			local newX = (creatorTextPosition - delta * TEXT_SCROLL_SPEED)
			if newX + creatorText.AbsoluteSize.X < creatorTextContainer.AbsoluteSize.X then
				freeze = true
				spawn(function()
					local tweenInfo = if FFlagLoadingScreen3DUseTweenService then TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut) else nil
					
					if FFlagLoadingScreen3DUseTweenService then
						TweenService:Create(creatorText, tweenInfo, { TextTransparency = 1 }):Play()
					else
						Util:TweenProperty(
							creatorText,
							"TextTransparency",
							creatorText.TextTransparency,
							1,
							1,
							Util:GetEaseInOutQuad()
						)
					end
					wait(1.5)
					if CleanedUp then
						return
					end
					creatorTextPosition = 0
					if FFlagLoadingScreen3DUseTweenService then
						TweenService:Create(creatorText, tweenInfo, { TextTransparency = 0 }):Play()
					else
						Util:TweenProperty(
							creatorText,
							"TextTransparency",
							creatorText.TextTransparency,
							0,
							1,
							Util:GetEaseInOutQuad()
						)
					end
					wait(1.5)
					freeze = false
				end)
			else
				creatorTextPosition = newX
			end
		end
		creatorText.Position = UDim2.new(0, creatorTextPosition, 0, 0)
	end

	if not gameNameText.TextFits then
		gameNameText.Size = UDim2.new(0.9, 0, 0.3, 0)
		gameNameText.Position = UDim2.new(0.05, 0, 0.5, 0)
		gameNameText.TextScaled = true
		gameNameText.TextWrapped = true

		spinnerImage.Position = UDim2.new(0.5 - (0.25 / 2), 0, 0.225, 0)
		loadingText.Position = UDim2.new(0.5, 0, 0.15, 0)
	end
end

local function CleanUp()
	if CleanedUp then
		return
	end
	CleanedUp = true

	FadeElements(loadingContainer, 1, SECONDS_TO_FADE)
	wait(SECONDS_TO_FADE)

	RunService:UnbindFromRenderStep("LoadingGui3D")
	loadingContainer.Parent = nil
end

local function OnGameInfoLoaded()
	local creatorName = GameInfoProvider:GetCreatorName()
	if creatorName and creatorName ~= "" then
		creatorName = string.format("By %s", tostring(creatorName))
	end
	gameNameText.Text = GameInfoProvider:GetGameName()
	creatorText.Text = creatorName
end

local function OnDefaultLoadingGuiRemoved()
	CleanUp()
end

do
	local lastUpdate = tick()
	RunService:BindToRenderStep("LoadingGui3D", Enum.RenderPriority.Last.Value, function()
		local now = tick()
		local delta = now - lastUpdate

		UpdateLayout(delta)

		local rotation = delta * ROTATIONS_PER_SECOND * 360
		spinnerRotation = spinnerRotation + rotation
		spinnerImage.Rotation = spinnerRotation

		lastUpdate = now
	end)
	UpdateLayout()
end

GameInfoProvider:LoadAssetsAsync()
if GameInfoProvider:IsReady() then
	OnGameInfoLoaded()
end
GameInfoProvider.LoadingFinishedEvent:Connect(OnGameInfoLoaded)

if ReplicatedFirst:IsDefaultLoadingGuiRemoved() then
	OnDefaultLoadingGuiRemoved()
else
	ReplicatedFirst.RemoveDefaultLoadingGuiSignal:connect(OnDefaultLoadingGuiRemoved)
end

GuiService.ErrorMessageChanged:connect(function()
	-- TODO
end)

GuiService.UiMessageChanged:connect(function(type, newMessage)
	-- TODO
end)

SplashScreenManager.addStatusChangeListener(function(isFPSAtTarget)
	if isFPSAtTarget then
		CleanUp()
	end
end)

return loadingContainer
