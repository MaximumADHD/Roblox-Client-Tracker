--[[
	// FileName: DynamicThumbstick
	// Version 0.9
	// Written by: jhelms
	// Description: Implements dynamic thumbstick controls for touch devices
--]]
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local MasterControl = require(script.Parent)

local Thumbstick = {}
local Enabled = false

--[[ Script Variables ]]--
while not Players.LocalPlayer do
	Players.PlayerAdded:wait()
end
local LocalPlayer = Players.LocalPlayer

local Tools = {}
local ToolEquipped = nil

local RevertAutoJumpEnabledToFalse = false

local ThumbstickFrame = nil
local GestureArea = nil
local StartImage = nil
local EndImage = nil
local MiddleImages = {}

local MoveTouchObject = nil
local IsFollowStick = false
local ThumbstickFrame = nil
local OnMoveTouchEnded = nil		-- defined in Create()
local OnTouchMovedCn = nil
local OnTouchEndedCn = nil
local TouchActivateCn = nil
local OnRenderSteppedCn = nil
local currentMoveVector = Vector3.new(0,0,0)
local IsFirstTouch = true

--[[ Constants ]]--

local TOUCH_CONTROLS_SHEET = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"

local MIDDLE_TRANSPARENCIES = {
	1 - 0.89,
	1 - 0.70,
	1 - 0.60,
	1 - 0.50,
	1 - 0.40,
	1 - 0.30,
	1 - 0.25
}
local NUM_MIDDLE_IMAGES = #MIDDLE_TRANSPARENCIES

local TOUCH_IS_TAP_TIME_THRESHOLD = 0.5
local TOUCH_IS_TAP_DISTANCE_THRESHOLD = 25

local HasFadedBackgroundInPortrait = false
local HasFadedBackgroundInLandscape = false
local FadeInAndOutBackground = true
local FadeInAndOutMaxAlpha = 0.35
local TweenInAlphaStart = nil
local TweenOutAlphaStart = nil

local FADE_IN_OUT_HALF_DURATION_DEFAULT = 0.3
local FADE_IN_OUT_HALF_DURATION_ORIENTATION_CHANGE = 2
local FADE_IN_OUT_BALANCE_DEFAULT = 0.5
local FadeInAndOutHalfDuration = FADE_IN_OUT_HALF_DURATION_DEFAULT
local FadeInAndOutBalance = FADE_IN_OUT_BALANCE_DEFAULT

local ThumbstickFadeTweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

--[[ Local functionality ]]--

local function isDynamicThumbstickEnabled()
	return ThumbstickFrame and ThumbstickFrame.Visible
end

local function enableAutoJump(humanoid)
	if humanoid and isDynamicThumbstickEnabled() then
		local shouldRevert = humanoid.AutoJumpEnabled == false
		shouldRevert = shouldRevert and LocalPlayer.DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice
		RevertAutoJumpEnabledToFalse = shouldRevert
		humanoid.AutoJumpEnabled = true
	end
end

do
	local function onCharacterAdded(character)	
		for _, child in ipairs(LocalPlayer.Character:GetChildren()) do
			if child:IsA("Tool") then
				ToolEquipped = child
			end
		end
		character.ChildAdded:Connect(function(child)
			if child:IsA("Tool") then
				ToolEquipped = child
			elseif child:IsA("Humanoid") then
				enableAutoJump(child)
			end
		end)
		character.ChildRemoved:Connect(function(child)
			if child:IsA("Tool") then
				if child == ToolEquipped then
					ToolEquipped = nil
				end
			end
		end)
		
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			enableAutoJump(humanoid)
		end
	end
	LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
	if LocalPlayer.Character then
		onCharacterAdded(LocalPlayer.Character)
	end
end



--[[ Public API ]]--
function Thumbstick:Enable()
	Enabled = true
	ThumbstickFrame.Visible = true
	local humanoid = MasterControl:GetHumanoid()
	enableAutoJump(humanoid)
end

function Thumbstick:Disable()
	Enabled = false
	if RevertAutoJumpEnabledToFalse then
		local humanoid = MasterControl:GetHumanoid()
		if humanoid then
			humanoid.AutoJumpEnabled = false
		end
	end
	ThumbstickFrame.Visible = false
	OnMoveTouchEnded()
end

function Thumbstick:GetInputObject()
    return MoveTouchObject
end

function Thumbstick:Create(parentFrame)
	if ThumbstickFrame then
		ThumbstickFrame:Destroy()
		ThumbstickFrame = nil
		if OnTouchMovedCn then
			OnTouchMovedCn:disconnect()
			OnTouchMovedCn = nil
		end
		if OnTouchEndedCn then
			OnTouchEndedCn:disconnect()
			OnTouchEndedCn = nil
		end
		if OnRenderSteppedCn then
			OnRenderSteppedCn:disconnect()
			OnRenderSteppedCn = nil
		end
		if TouchActivateCn then
			TouchActivateCn:disconnect()
			TouchActivateCn = nil
		end
	end
	
	local ThumbstickSize = 45
	local ThumbstickRingSize = 20
	local MiddleSize = 10
	local MiddleSpacing = MiddleSize + 4
	local RadiusOfDeadZone = 2
	local RadiusOfMaxSpeed = 50
	
	local screenSize = parentFrame.AbsoluteSize
	local isBigScreen = math.min(screenSize.x, screenSize.y) > 500
	if isBigScreen then
		ThumbstickSize = ThumbstickSize * 2
		ThumbstickRingSize = ThumbstickRingSize * 2
		MiddleSize = MiddleSize * 2
		MiddleSpacing = MiddleSpacing * 2
		RadiusOfDeadZone = RadiusOfDeadZone * 2
		RadiusOfMaxSpeed = RadiusOfMaxSpeed * 2
	end
	
	local color = Color3.fromRGB(255, 255, 255)
	
	local function layoutThumbstickFrame(portraitMode)
		if portraitMode then
			ThumbstickFrame.Size = UDim2.new(1, 0, 0.4, 0)
			ThumbstickFrame.Position = UDim2.new(0, 0, 0.6, 0)
			GestureArea.Size = UDim2.new(1, 0, 0.6, 0)
			GestureArea.Position = UDim2.new(0, 0, 0, 0)
		else
			ThumbstickFrame.Size = UDim2.new(0.4, 0, 2/3, 0)
			ThumbstickFrame.Position = UDim2.new(0, 0, 1/3, 0)
			GestureArea.Size = UDim2.new(1, 0, 1, 0)
			GestureArea.Position = UDim2.new(0, 0, 0, 0)
		end
	end

	GestureArea = Instance.new("Frame")
	GestureArea.Name = "GestureArea"
	GestureArea.Active = false
	GestureArea.Visible = true
	GestureArea.BackgroundTransparency = 1
	GestureArea.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		
	ThumbstickFrame = Instance.new('Frame')
	ThumbstickFrame.Name = "DynamicThumbstickFrame"
	ThumbstickFrame.Active = false
	ThumbstickFrame.Visible = false
	ThumbstickFrame.BackgroundTransparency = 1.0
	ThumbstickFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	layoutThumbstickFrame()

	StartImage = Instance.new("ImageLabel")
	StartImage.Name = "ThumbstickStart"
	StartImage.Visible = true
	StartImage.BackgroundTransparency = 1
	
	StartImage.Image = TOUCH_CONTROLS_SHEET
	StartImage.ImageRectOffset = Vector2.new(1,1)
	StartImage.ImageRectSize = Vector2.new(144, 144)
	StartImage.ImageColor3 = Color3.new(0, 0, 0)
	StartImage.AnchorPoint = Vector2.new(0.5, 0.5)
	StartImage.Position = UDim2.new(0, ThumbstickRingSize * 3.3, 1, -ThumbstickRingSize * 2.8)
	StartImage.Size = UDim2.new(0, ThumbstickRingSize * 3.7, 0, ThumbstickRingSize * 3.7)
	StartImage.ZIndex = 10
	StartImage.Parent = ThumbstickFrame
	
	EndImage = Instance.new("ImageLabel")
	EndImage.Name = "ThumbstickEnd"
	EndImage.Visible = true
	EndImage.BackgroundTransparency = 1
	EndImage.Image = TOUCH_CONTROLS_SHEET
	EndImage.ImageRectOffset = Vector2.new(1,1)
	EndImage.ImageRectSize =  Vector2.new(144, 144)
	EndImage.AnchorPoint = Vector2.new(0.5, 0.5)
	EndImage.Position = StartImage.Position
	EndImage.Size = UDim2.new(0, ThumbstickSize * 0.8, 0, ThumbstickSize * 0.8)
	EndImage.ZIndex = 10
	EndImage.Parent = ThumbstickFrame
	
	for i = 1, NUM_MIDDLE_IMAGES do
		MiddleImages[i] = Instance.new("ImageLabel")
		MiddleImages[i].Name = "ThumbstickMiddle"
		MiddleImages[i].Visible = false
		MiddleImages[i].BackgroundTransparency = 1
		MiddleImages[i].Image = TOUCH_CONTROLS_SHEET
		MiddleImages[i].ImageRectOffset = Vector2.new(1,1)
		MiddleImages[i].ImageRectSize = Vector2.new(144, 144)
		MiddleImages[i].ImageTransparency = MIDDLE_TRANSPARENCIES[i]
		MiddleImages[i].AnchorPoint = Vector2.new(0.5, 0.5)
		MiddleImages[i].ZIndex = 9
		MiddleImages[i].Parent = ThumbstickFrame
	end

	local CameraChangedConn = nil
	local function onCurrentCameraChanged()
		if CameraChangedConn then
			CameraChangedConn:Disconnect()
			CameraChangedConn = nil
		end
		local newCamera = workspace.CurrentCamera
		if newCamera then
			local function onViewportSizeChanged()
				local size = newCamera.ViewportSize
				local portraitMode = size.X < size.Y
				layoutThumbstickFrame(portraitMode)
			end
			CameraChangedConn = newCamera:GetPropertyChangedSignal("ViewportSize"):Connect(onViewportSizeChanged)
			onViewportSizeChanged()
		end
	end
	workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(onCurrentCameraChanged)
	if workspace.CurrentCamera then
		onCurrentCameraChanged()
	end
	
	MoveTouchObject = nil
	local MoveTouchStartTime = nil
	local MoveTouchStartPosition = nil

	local startImageFadeTween, endImageFadeTween, middleImageFadeTweens = nil, nil, {}
	local function fadeThumbstick(visible)
		if not visible and MoveTouchObject then
			return
		end
		if IsFirstTouch then return end
		
		if startImageFadeTween then
			startImageFadeTween:Cancel()
		end
		if endImageFadeTween then
			endImageFadeTween:Cancel()
		end
		for i = 1, #MiddleImages do
			if middleImageFadeTweens[i] then
				middleImageFadeTweens[i]:Cancel()
			end
		end

		if visible then
			startImageFadeTween = TweenService:Create(StartImage, ThumbstickFadeTweenInfo, { ImageTransparency = 0 })
			startImageFadeTween:Play()

			endImageFadeTween = TweenService:Create(EndImage, ThumbstickFadeTweenInfo, { ImageTransparency = 0.2 })
			endImageFadeTween:Play()

			for i = 1, #MiddleImages do
				middleImageFadeTweens[i] = TweenService:Create(MiddleImages[i], ThumbstickFadeTweenInfo, { ImageTransparency = MIDDLE_TRANSPARENCIES[i] })
				middleImageFadeTweens[i]:Play()
			end
		else
			startImageFadeTween = TweenService:Create(StartImage, ThumbstickFadeTweenInfo, { ImageTransparency = 1 })
			startImageFadeTween:Play()

			endImageFadeTween = TweenService:Create(EndImage, ThumbstickFadeTweenInfo, { ImageTransparency = 1 })
			endImageFadeTween:Play()

			for i = 1, #MiddleImages do
				middleImageFadeTweens[i] = TweenService:Create(MiddleImages[i], ThumbstickFadeTweenInfo, { ImageTransparency = 1 })
				middleImageFadeTweens[i]:Play()
			end
		end
	end
	local function fadeThumbstickFrame(fadeDuration, fadeRatio)
		FadeInAndOutHalfDuration = fadeDuration * 0.5
		FadeInAndOutBalance = fadeRatio
		TweenInAlphaStart = tick()
	end
		
	local function doMove(direction)
		MasterControl:AddToPlayerMovement(-currentMoveVector)
		
		currentMoveVector = direction
		
		-- Scaled Radial Dead Zone
		local inputAxisMagnitude = currentMoveVector.magnitude
		if inputAxisMagnitude < RadiusOfDeadZone then
			currentMoveVector = Vector3.new()
		else
			currentMoveVector = currentMoveVector.unit*(1 - math.max(0, (RadiusOfMaxSpeed - currentMoveVector.magnitude)/RadiusOfMaxSpeed))
			currentMoveVector = Vector3.new(currentMoveVector.x, 0, currentMoveVector.y)
		end
		
		MasterControl:AddToPlayerMovement(currentMoveVector)
	end
	
	local function layoutMiddleImages(startPos, endPos)
		local startDist = (ThumbstickSize / 2) + MiddleSize
		local vector = endPos - startPos
		local distAvailable = vector.magnitude - (ThumbstickRingSize / 2) - MiddleSize
		local direction = vector.unit

		local distNeeded = MiddleSpacing * NUM_MIDDLE_IMAGES
		local spacing = MiddleSpacing
		
		if distNeeded < distAvailable then
			spacing = distAvailable / NUM_MIDDLE_IMAGES
		end
			
		for i = 1, NUM_MIDDLE_IMAGES do
			local image = MiddleImages[i]
			local distWithout = startDist + (spacing * (i - 2))
			local currentDist = startDist + (spacing * (i - 1))	
				
			if distWithout < distAvailable then
				local pos = endPos - direction * currentDist
				local exposedFraction = math.clamp(1 - ((currentDist - distAvailable) / spacing), 0, 1)
				
				image.Visible = true
				image.Position = UDim2.new(0, pos.X, 0, pos.Y)
				image.Size = UDim2.new(0, MiddleSize * exposedFraction, 0, MiddleSize * exposedFraction)
			else
				image.Visible = false
			end
		end
	end
	
	local function moveStick(pos)
		local startPos = Vector2.new(MoveTouchStartPosition.X, MoveTouchStartPosition.Y) - ThumbstickFrame.AbsolutePosition
		local endPos = Vector2.new(pos.X, pos.Y) - ThumbstickFrame.AbsolutePosition
		local relativePosition = endPos - startPos
		local length = relativePosition.magnitude
		local maxLength = ThumbstickFrame.AbsoluteSize.X
		
		length = math.min(length, maxLength)
		relativePosition = relativePosition*length
		
		EndImage.Position = UDim2.new(0, endPos.X, 0, endPos.Y)
		
		layoutMiddleImages(startPos, endPos)
	end
	
	-- input connections
	ThumbstickFrame.InputBegan:connect(function(inputObject)
		if inputObject.UserInputType ~= Enum.UserInputType.Touch or inputObject.UserInputState ~= Enum.UserInputState.Begin then
			return
		end
		if MoveTouchObject then
			return
		end
		
		if IsFirstTouch then
			IsFirstTouch = false
			local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0,false,0)
			TweenService:Create(StartImage, tweenInfo, {Size = UDim2.new(0, 0, 0, 0)}):Play()
			TweenService:Create(EndImage, tweenInfo, {Size = UDim2.new(0, ThumbstickSize, 0, ThumbstickSize), ImageColor3 = Color3.new(0,0,0)}):Play()
		end

		MoveTouchObject = inputObject
		MoveTouchStartTime = tick()
		MoveTouchStartPosition = inputObject.Position
		local startPosVec2 = Vector2.new(inputObject.Position.X - ThumbstickFrame.AbsolutePosition.X, inputObject.Position.Y - ThumbstickFrame.AbsolutePosition.Y)

		StartImage.Visible = true
		StartImage.Position = UDim2.new(0, startPosVec2.X, 0, startPosVec2.Y)
		EndImage.Visible = true
		EndImage.Position = StartImage.Position
		
		fadeThumbstick(true)
		moveStick(inputObject.Position)
		
		if FadeInAndOutBackground then
			local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
			local hasFadedBackgroundInOrientation = false

			-- only fade in/out the background once per orientation
			if playerGui then
				if playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.LandscapeLeft or 
					playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.LandscapeRight then
						hasFadedBackgroundInOrientation = HasFadedBackgroundInLandscape
						HasFadedBackgroundInLandscape = true
				elseif playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.Portrait then
						hasFadedBackgroundInOrientation = HasFadedBackgroundInPortrait
						HasFadedBackgroundInPortrait = true
				end
			end

			if not hasFadedBackgroundInOrientation then
				FadeInAndOutHalfDuration = FADE_IN_OUT_HALF_DURATION_DEFAULT
				FadeInAndOutBalance = FADE_IN_OUT_BALANCE_DEFAULT
				TweenInAlphaStart = tick()
			end
		end
	end)
	
	OnTouchMovedCn = UserInputService.TouchMoved:connect(function(inputObject, isProcessed)
		if inputObject == MoveTouchObject then
			
			local direction = Vector2.new(inputObject.Position.x - MoveTouchStartPosition.x, inputObject.Position.y - MoveTouchStartPosition.y)
			if math.abs(direction.x) > 0 or math.abs(direction.y) > 0 then
				doMove(direction)
				moveStick(inputObject.Position)
			end
		end
	end)
	
	OnMoveTouchEnded = function(inputObject)
		if inputObject then
			local direction = Vector2.new(inputObject.Position.x - MoveTouchStartPosition.x, inputObject.Position.y - MoveTouchStartPosition.y)
		end

		MoveTouchObject = nil
		fadeThumbstick(false)
		
		MasterControl:AddToPlayerMovement(-currentMoveVector)
		currentMoveVector = Vector3.new(0,0,0)
	end

	OnRenderSteppedCn = RunService.RenderStepped:Connect(function(step)
		if TweenInAlphaStart ~= nil then
			local delta = tick() - TweenInAlphaStart
			local fadeInTime = (FadeInAndOutHalfDuration * 2 * FadeInAndOutBalance)
			ThumbstickFrame.BackgroundTransparency = 1 - FadeInAndOutMaxAlpha*math.min(delta/fadeInTime, 1)
			if delta > fadeInTime then
				TweenOutAlphaStart = tick()
				TweenInAlphaStart = nil
			end
		elseif TweenOutAlphaStart ~= nil then
			local delta = tick() - TweenOutAlphaStart
			local fadeOutTime = (FadeInAndOutHalfDuration * 2) - (FadeInAndOutHalfDuration * 2 * FadeInAndOutBalance)
			ThumbstickFrame.BackgroundTransparency = 1 - FadeInAndOutMaxAlpha + FadeInAndOutMaxAlpha*math.min(delta/fadeOutTime, 1)
			if delta > fadeOutTime  then
				TweenOutAlphaStart = nil
			end
		end
	end)

	OnTouchEndedCn = UserInputService.TouchEnded:connect(function(inputObject, isProcessed)
		if inputObject == MoveTouchObject then
			OnMoveTouchEnded(inputObject)
		end
	end)
	
	
	GuiService.MenuOpened:connect(function()
		if MoveTouchObject then
			OnMoveTouchEnded(nil)
		end
	end)

	local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
	while not playerGui do
		LocalPlayer.ChildAdded:wait()
		playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
	end

	local playerGuiChangedConn = nil
	local originalScreenOrientationWasLandscape = playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.LandscapeLeft or
													playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.LandscapeRight

	local function longShowBackground()
		FadeInAndOutHalfDuration = 2.5
		FadeInAndOutBalance = 0.05
		TweenInAlphaStart = tick()
	end

	playerGuiChangedConn = playerGui.Changed:connect(function(prop)
		if prop == "CurrentScreenOrientation" then
			if (originalScreenOrientationWasLandscape and playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.Portrait) or
				(not originalScreenOrientationWasLandscape and playerGui.CurrentScreenOrientation ~= Enum.ScreenOrientation.Portrait) then
					playerGuiChangedConn:disconnect()
					longShowBackground()

					if originalScreenOrientationWasLandscape then
						HasFadedBackgroundInPortrait = true
					else
						HasFadedBackgroundInLandscape = true
					end
			end
		end
	end)
	
	GestureArea.Parent = parentFrame.Parent
	ThumbstickFrame.Parent = parentFrame

	spawn(function()
		if game:IsLoaded() then
			longShowBackground()
		else
			game.Loaded:wait()
			longShowBackground()
		end
	end)
end

return Thumbstick
