--[[
	
	Stub
	
--]]

--[[ Constants ]]--
local ZERO_VECTOR3 = Vector3.new(0,0,0)
local IMAGE_DISK = "rbxasset://textures/ui/Input/Disk_padded.png"
local IMAGE_RING = "rbxasset://textures/ui/Input/Ring_padded.png"

local MIDDLE_TRANSPARENCIES = {
	1 - 0.69,
	1 - 0.50,
	1 - 0.40,
	1 - 0.30,
	1 - 0.20,
	1 - 0.10,
	1 - 0.05
}
local NUM_MIDDLE_IMAGES = #MIDDLE_TRANSPARENCIES

local TOUCH_IS_TAP_TIME_THRESHOLD = 0.5
local TOUCH_IS_TAP_DISTANCE_THRESHOLD = 25
local FADE_IN_OUT_BACKGROUND = true
local FADE_IN_OUT_MAX_ALPHA = 0.35

local FADE_IN_OUT_HALF_DURATION_DEFAULT = 0.3
local FADE_IN_OUT_HALF_DURATION_ORIENTATION_CHANGE = 2
local FADE_IN_OUT_BALANCE_DEFAULT = 0.5
local ThumbstickFadeTweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local FFlagUserEnableDynamicThumbstickIntroSuccess, FFlagUserEnableDynamicThumbstickIntroResult = pcall(function() return UserSettings():IsUserFeatureEnabled("UserEnableDynamicThumbstickIntro") end)
local FFlagUserEnableDynamicThumbstickIntro = FFlagUserEnableDynamicThumbstickIntroSuccess and FFlagUserEnableDynamicThumbstickIntroResult
local Intro = FFlagUserEnableDynamicThumbstickIntro and require(script:WaitForChild("Intro")) or nil

--[[ The Module ]]--
local BaseCharacterController = require(script.Parent:WaitForChild("BaseCharacterController"))
local DynamicThumbstick = setmetatable({}, BaseCharacterController)
DynamicThumbstick.__index = DynamicThumbstick

function DynamicThumbstick.new()
	local self = setmetatable(BaseCharacterController.new(), DynamicThumbstick)
	
	self.humanoid = nil	
	
	self.tools = {}
	self.toolEquipped = nil
	
	self.revertAutoJumpEnabledToFalse = false
	
	self.moveTouchObject = nil
	self.moveTouchStartPosition = nil
	
	self.thumbstickFrame = nil
	self.startImage = nil
	self.endImage = nil
	self.middleImages = {}
	
	self.startImageFadeTween = nil
	self.endImageFadeTween = nil
	self.middleImageFadeTweens = {}
	
	self.isFollowStick = false
	self.thumbstickFrame = nil
	self.onTouchMovedConn = nil
	self.onTouchEndedConn = nil
	self.onTouchActivateConn = nil
	self.onRenderSteppedConn = nil

	self.fadeInAndOutBalance = FADE_IN_OUT_BALANCE_DEFAULT
	self.fadeInAndOutHalfDuration = FADE_IN_OUT_HALF_DURATION_DEFAULT
	self.hasFadedBackgroundInPortrait = false
	self.hasFadedBackgroundInLandscape = false
	
	self.tweenInAlphaStart = nil
	self.tweenOutAlphaStart = nil

	-- If this module changes a player's humanoid's AutoJumpEnabled, it saves
	-- the previous state in this variable to revert to	
	self.shouldRevertAutoJumpOnDisable = false
	
	return self
end

-- Note: Overrides base class GetIsJumping with get-and-clear behavior to do a single jump
-- rather than sustained jumping. This is only to preserve the current behavior through the refactor.
function DynamicThumbstick:GetIsJumping()
	local wasJumping = self.isJumping
	self.isJumping = false
	return wasJumping
end

function DynamicThumbstick:EnableAutoJump(enable)
	local humanoid = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	if humanoid then
		if enable then
			self.shouldRevertAutoJumpOnDisable = (humanoid.AutoJumpEnabled == false) and (Players.LocalPlayer.DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice)
			humanoid.AutoJumpEnabled = true
		elseif self.shouldRevertAutoJumpOnDisable then
			humanoid.AutoJumpEnabled = false
		end 
	end
end

--[[ Public API ]]--
function DynamicThumbstick:Enable(enable, uiParentFrame)
	if enable == nil then return false end			-- If nil, return false (invalid argument)
	enable = enable and true or false				-- Force anything non-nil to boolean before comparison
	if self.enabled == enable then return true end	-- If no state change, return true indicating already in requested state
	
	if enable then
		-- Enable
		if not self.thumbstickFrame then
			self:Create(uiParentFrame)
		end
		
		if Players.LocalPlayer.Character then
			self:OnCharacterAdded(Players.LocalPlayer.Character)
		else
			Players.LocalPlayer.CharacterAdded:Connect(function(char)
				self:OnCharacterAdded(char)
			end)
		end
		
		
		if FFlagUserEnableDynamicThumbstickIntro and Intro then
			coroutine.wrap(function()
				--TODO: Remove this pcall when API is stable
				local success, shouldShowIntro = pcall(function()
					local wasIntroShown = GameSettings:GetOnboardingCompleted("DynamicThumbstick")
					return not wasIntroShown
				end)
				if success and not shouldShowIntro then return end
	
				--Give the game some time to initialize
				wait(1)
				--Wait to play the intro until the character can move
				while true do
					if self.humanoid and self.humanoid.WalkSpeed ~= 0 and not self.humanoid.Torso.Anchored then
						break
					else
						wait()
					end
				end
				Intro.play()
			end)()
		end
	else 
		-- Disable
		self:OnInputEnded() -- Cleanup
	end
	
	self.enabled = enable
	self.thumbstickFrame.Visible = enable
end

function DynamicThumbstick:OnCharacterAdded(char)
	
	for _, child in ipairs(char:GetChildren()) do
		if child:IsA("Tool") then
			self.toolEquipped = child
		end
	end
	
	char.ChildAdded:Connect(function(child)
		if child:IsA("Tool") then
			self.toolEquipped = child
		elseif child:IsA("Humanoid") then
			self:EnableAutoJump(true)
		end
		
	end)
	char.ChildRemoved:Connect(function(child)
		if child == self.toolEquipped then
			self.toolEquipped = nil
		end
	end)
	
	self.humanoid = char:FindFirstChildOfClass("Humanoid")
	if self.humanoid then
		self:EnableAutoJump(true)
	end
end

-- Was called OnMoveTouchEnded in previous version
function DynamicThumbstick:OnInputEnded(inputObject)
	if inputObject then
		local direction = Vector2.new(inputObject.Position.x - self.moveTouchStartPosition.x, inputObject.Position.y - self.moveTouchStartPosition.y)
		if FFlagUserEnableDynamicThumbstickIntro and Intro then
			coroutine.wrap(function() Intro.onThumbstickMoved(direction.magnitude) end)()
		end
	end
	
	self.moveTouchObject = nil
	self.moveVector = ZERO_VECTOR3
	
	self:FadeThumbstick(false)
end

function DynamicThumbstick:FadeThumbstick(visible)
	if not visible and self.moveTouchObject then
		return
	end
	if self.startImageFadeTween then
		self.startImageFadeTween:Cancel()
	end
	if self.endImageFadeTween then
		self.endImageFadeTween:Cancel()
	end
	for i = 1, #self.middleImages do
		if self. middleImageFadeTweens[i] then
			self.middleImageFadeTweens[i]:Cancel()
		end
	end

	if visible then
		self.startImageFadeTween = TweenService:Create(self.startImage, ThumbstickFadeTweenInfo, { ImageTransparency = 0 })
		self.startImageFadeTween:Play()

		self.endImageFadeTween = TweenService:Create(self.endImage, ThumbstickFadeTweenInfo, { ImageTransparency = 0.2 })
		self.endImageFadeTween:Play()

		for i = 1, #self.middleImages do
			self.middleImageFadeTweens[i] = TweenService:Create(self.middleImages[i], ThumbstickFadeTweenInfo, { ImageTransparency = MIDDLE_TRANSPARENCIES[i] })
			self.middleImageFadeTweens[i]:Play()
		end
	else
		self.startImageFadeTween = TweenService:Create(self.startImage, ThumbstickFadeTweenInfo, { ImageTransparency = 1 })
		self.startImageFadeTween:Play()

		self.endImageFadeTween = TweenService:Create(self.endImage, ThumbstickFadeTweenInfo, { ImageTransparency = 1 })
		self.endImageFadeTween:Play()

		for i = 1, #self.middleImages do
			self.middleImageFadeTweens[i] = TweenService:Create(self.middleImages[i], ThumbstickFadeTweenInfo, { ImageTransparency = 1 })
			self.middleImageFadeTweens[i]:Play()
		end
	end
end

function DynamicThumbstick:FadeThumbstickFrame(fadeDuration, fadeRatio)
	self.fadeInAndOutHalfDuration = fadeDuration * 0.5
	self.fadeInAndOutBalance = fadeRatio
	self.tweenInAlphaStart = tick()
end

function DynamicThumbstick:DoesToolHaveListeners()
	if not self.toolEquipped then
		return false
	end
	local success, result = pcall(function()	
		return self.toolEquipped.HasActivatedListenersServer or self.toolEquipped.HasActivatedListenersClient
	end)
	if not success then
		return true --assume tool has listeners if the API doesn't exist
	else
		return result
	end
end

function DynamicThumbstick:Create(parentFrame)
	if self.thumbstickFrame then
		self.thumbstickFrame:Destroy()
		self.thumbstickFrame = nil
		if self.onTouchMovedConn then
			self.onTouchMovedConn:Disconnect()
			self.onTouchMovedConn = nil
		end
		if self.onTouchEndedConn then
			self.onTouchEndedCon:Disconnect()
			self.onTouchEndedCon = nil
		end
		if self.onRenderSteppedConn then
			self.onRenderSteppedConn:Disconnect()
			self.onRenderSteppedConn = nil
		end
		if self.onTouchActivateConn then
			self.onTouchActivateConn:Disconnect()
			self.onTouchActivateConn = nil
		end
	end
	
	local ThumbstickSize = 40
	local ThumbstickRingSize = 58
	local MiddleSize = 13
	local MiddleSpacing = MiddleSize + 5
	local RadiusOfDeadZone = 2
	local RadiusOfMaxSpeed = 20	
	
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
			self.thumbstickFrame.Size = UDim2.new(1, 0, .4, 0)
			self.thumbstickFrame.Position = UDim2.new(0, 0, 0.6, 0)
		else
			self.thumbstickFrame.Size = UDim2.new(1, 0, .5, 18)
			self.thumbstickFrame.Position = UDim2.new(0, 0, 0.5, -18)
		end
	end
		
	self.thumbstickFrame = Instance.new("Frame")
	self.thumbstickFrame.Name = "Dynamicself.thumbstickFrame"
	self.thumbstickFrame.Active = false
	self.thumbstickFrame.Visible = false
	self.thumbstickFrame.BackgroundTransparency = 1.0
	self.thumbstickFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	layoutThumbstickFrame(false)

	self.startImage = Instance.new("ImageLabel")
	self.startImage.Name = "ThumbstickStart"
	self.startImage.Visible = false
	self.startImage.BackgroundTransparency = 1
	self.startImage.Image = IMAGE_RING
	self.startImage.AnchorPoint = Vector2.new(0.5, 0.5)
	self.startImage.Size = UDim2.new(0, ThumbstickRingSize, 0, ThumbstickRingSize)
	self.startImage.ZIndex = 10
	self.startImage.Parent = self.thumbstickFrame
	
	self.endImage = Instance.new("ImageLabel")
	self.endImage.Name = "ThumbstickEnd"
	self.endImage.Visible = false
	self.endImage.BackgroundTransparency = 1
	self.endImage.Image = IMAGE_DISK
	self.endImage.ImageTransparency = 0.20
	self.endImage.AnchorPoint = Vector2.new(0.5, 0.5)
	self.endImage.Size = UDim2.new(0, ThumbstickSize, 0, ThumbstickSize)
	self.endImage.ZIndex = 10
	self.endImage.Parent = self.thumbstickFrame
	
	for i = 1, NUM_MIDDLE_IMAGES do
		self.middleImages[i] = Instance.new("ImageLabel")
		self.middleImages[i].Name = "ThumbstickMiddle"
		self.middleImages[i].Visible = false
		self.middleImages[i].BackgroundTransparency = 1
		self.middleImages[i].Image = IMAGE_DISK
		self.middleImages[i].ImageTransparency = MIDDLE_TRANSPARENCIES[i]
		self.middleImages[i].AnchorPoint = Vector2.new(0.5, 0.5)
		self.middleImages[i].ZIndex = 9
		self.middleImages[i].Parent = self.thumbstickFrame
	end
	
	if FFlagUserEnableDynamicThumbstickIntro and Intro then
		Intro.setup(isBigScreen, parentFrame, self.thumbstickFrame, self.startImage, self.endImage, self.middleImages)
	end
	
	local CameraChangedConn = nil
	local function OnWorkspaceChanged(property)
		if property == 'CurrentCamera' then
			if CameraChangedConn then
				CameraChangedConn:Disconnect()
				CameraChangedConn = nil
			end
			local newCamera = workspace.CurrentCamera
			if newCamera then
				local size = newCamera.ViewportSize
				local portraitMode = size.X < size.Y
				layoutThumbstickFrame(portraitMode)
				CameraChangedConn = newCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
					size = newCamera.ViewportSize
					portraitMode = size.X < size.Y
					layoutThumbstickFrame(portraitMode)
				end)
			end
		end
	end
	
	workspace.Changed:Connect(OnWorkspaceChanged)
	
	if workspace.CurrentCamera then
		OnWorkspaceChanged("CurrentCamera")
	end
	
	local JumpTouchObject = nil
	local JumpTouchStartTime = nil
	local JumpTouchStartPosition = nil
	
	local MoveTouchObject = nil
	local MoveTouchStartTime = nil
	self.moveTouchStartPosition = nil

	self.startImageFadeTween = nil
	self.endImageFadeTween = nil
	self.middleImageFadeTweens = {}
	
	if FFlagUserEnableDynamicThumbstickIntro and Intro then
		Intro.fadeThumbstick = function(visible)
			self:FadeThumbstick(visible)
		end
		Intro.fadeThumbstickFrame = function(fadeDuration, fadeRatio)
			self:FadeThumbstickFrame(fadeDuration, fadeRatio)
		end
	end
	
	local function doMove(direction)
		--MasterControl:AddToPlayerMovement(-currentMoveVector)
		
		local currentMoveVector = direction
		
		-- Scaled Radial Dead Zone
		local inputAxisMagnitude = currentMoveVector.magnitude
		if inputAxisMagnitude < RadiusOfDeadZone then
			currentMoveVector = Vector3.new()
		else
			currentMoveVector = currentMoveVector.unit*(1 - math.max(0, (RadiusOfMaxSpeed - currentMoveVector.magnitude)/RadiusOfMaxSpeed))
			currentMoveVector = Vector3.new(currentMoveVector.x, 0, currentMoveVector.y)
		end
		
		self.moveVector = currentMoveVector
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
			local image = self.middleImages[i]
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
		local startPos = Vector2.new(self.moveTouchStartPosition.X, self.moveTouchStartPosition.Y) - self.thumbstickFrame.AbsolutePosition
		local endPos = Vector2.new(pos.X, pos.Y) - self.thumbstickFrame.AbsolutePosition
		local relativePosition = endPos - startPos
		local length = relativePosition.magnitude
		local maxLength = self.thumbstickFrame.AbsoluteSize.X
		
		length = math.min(length, maxLength)
		relativePosition = relativePosition*length
		
		self.endImage.Position = UDim2.new(0, endPos.X, 0, endPos.Y)
		self.endImage.Size = UDim2.new(0, ThumbstickSize, 0, ThumbstickSize)
		
		layoutMiddleImages(startPos, endPos)
	end
	
	-- input connections
	self.thumbstickFrame.InputBegan:Connect(function(inputObject)
		if inputObject.UserInputType ~= Enum.UserInputType.Touch or inputObject.UserInputState ~= Enum.UserInputState.Begin then
			return
		end
		
		if self.moveTouchObject then
			if not JumpTouchObject then
				JumpTouchObject = inputObject
				JumpTouchStartTime = tick()
				JumpTouchStartPosition = inputObject.Position
			end
			return
		end
		
		if FFlagUserEnableDynamicThumbstickIntro and Intro then
			Intro.onThumbstickMoveBegin()
		end
		
		self.moveTouchObject = inputObject
		MoveTouchStartTime = tick()
		self.moveTouchStartPosition = inputObject.Position
		local startPosVec2 = Vector2.new(inputObject.Position.X - self.thumbstickFrame.AbsolutePosition.X, inputObject.Position.Y - self.thumbstickFrame.AbsolutePosition.Y)

		self.startImage.Visible = true
		self.startImage.Position = UDim2.new(0, startPosVec2.X, 0, startPosVec2.Y)
		self.endImage.Visible = true
		self.endImage.Position = self.startImage.Position
		self.endImage.Size = UDim2.new(0, ThumbstickSize, 0, ThumbstickSize)
		
		self:FadeThumbstick(true)
		moveStick(inputObject.Position)
		
		if FADE_IN_OUT_BACKGROUND then
			local playerGui = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
			local hasFadedBackgroundInOrientation = false

			-- only fade in/out the background once per orientation
			if playerGui then
				if playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.LandscapeLeft or 
					playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.LandscapeRight then
						hasFadedBackgroundInOrientation = self.hasFadedBackgroundInLandscape
						self.hasFadedBackgroundInLandscape = true
				elseif playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.Portrait then
						hasFadedBackgroundInOrientation = self.hasFadedBackgroundInPortrait
						self.hasFadedBackgroundInPortrait = true
				end
			end

			if not hasFadedBackgroundInOrientation then
				self.fadeInAndOutHalfDuration = FADE_IN_OUT_HALF_DURATION_DEFAULT
				self.fadeInAndOutBalance = FADE_IN_OUT_BALANCE_DEFAULT
				self.tweenInAlphaStart = tick()
			end
		end
	end)
	
	self.onTouchMovedConn = UserInputService.TouchMoved:connect(function(inputObject, isProcessed)
		if inputObject == self.moveTouchObject then
			
			local direction = Vector2.new(inputObject.Position.x - self.moveTouchStartPosition.x, inputObject.Position.y - self.moveTouchStartPosition.y)
			if math.abs(direction.x) > 0 or math.abs(direction.y) > 0 then
				doMove(direction)
				moveStick(inputObject.Position)
			end
		end
	end)
	
	self.onRenderSteppedConn = RunService.RenderStepped:Connect(function(step)
		if self.tweenInAlphaStart ~= nil then
			local delta = tick() - self.tweenInAlphaStart
			local fadeInTime = (self.fadeInAndOutHalfDuration * 2 * self.fadeInAndOutBalance)
			self.thumbstickFrame.BackgroundTransparency = 1 - FADE_IN_OUT_MAX_ALPHA*math.min(delta/fadeInTime, 1)
			if delta > fadeInTime then
				self.tweenOutAlphaStart = tick()
				self.tweenInAlphaStart = nil
			end
		elseif self.tweenOutAlphaStart ~= nil then
			local delta = tick() - self.tweenOutAlphaStart
			local fadeOutTime = (self.fadeInAndOutHalfDuration * 2) - (self.fadeInAndOutHalfDuration * 2 * self.fadeInAndOutBalance)
			self.thumbstickFrame.BackgroundTransparency = 1 - FADE_IN_OUT_MAX_ALPHA + FADE_IN_OUT_MAX_ALPHA*math.min(delta/fadeOutTime, 1)
			if delta > fadeOutTime  then
				self.tweenOutAlphaStart = nil
			end
		end
	end)

	--todo: remove this pcall when TouchTapInWorld is on for all platforms
	local success = pcall(function() 
		local function positionIntersectsGuiObject(position, guiObject)
			if position.X < guiObject.AbsolutePosition.X + guiObject.AbsoluteSize.X
				and position.X > guiObject.AbsolutePosition.X
				and position.Y < guiObject.AbsolutePosition.Y + guiObject.AbsoluteSize.Y
				and position.Y > guiObject.AbsolutePosition.Y then
				return true
			end
			return false
		end

		local debounce = false
		self.onTouchActivateConn = UserInputService.TouchTapInWorld:Connect(function(touchPos, processed)
			if not processed and self.enabled and not self:DoesToolHaveListeners() and positionIntersectsGuiObject(touchPos, self.thumbstickFrame) then
				if not debounce then
					debounce = true
					self.isJumping = true
					if FFlagUserEnableDynamicThumbstickIntro and Intro then
						Intro.onJumped()
					end
					wait(0.25)
					debounce = false
				end
			end
		end)
	end)

	if not success then
		local function JumpIfTouchIsTap(startTime, startPosition, position)
			if (not self.isAToolEquipped) and tick() - startTime < TOUCH_IS_TAP_TIME_THRESHOLD then
				if (position - startPosition).magnitude < TOUCH_IS_TAP_DISTANCE_THRESHOLD then
					self.isJumping = true
					if FFlagUserEnableDynamicThumbstickIntro and Intro then
						Intro.onJumped()
					end
				end
			end
		end
		
		self.onTouchEndedConn = UserInputService.TouchEnded:Connect(function(inputObject, isProcessed)
			if inputObject == self.moveTouchObject then
				JumpIfTouchIsTap(MoveTouchStartTime, self.moveTouchStartPosition, inputObject.Position) 
				self:OnInputEnded(inputObject)
			elseif inputObject == JumpTouchObject then
				JumpIfTouchIsTap(JumpTouchStartTime, JumpTouchStartPosition, inputObject.Position)
				JumpTouchObject = nil
			end
		end)
	else
		self.onTouchEndedConn = UserInputService.TouchEnded:Connect(function(inputObject, isProcessed)
			if inputObject == self.moveTouchObject then
				self:OnInputEnded(inputObject)
			elseif inputObject == JumpTouchObject then
				JumpTouchObject = nil
			end
		end)
	end
	
	GuiService.MenuOpened:connect(function()
		if self.moveTouchObject then
			self:OnInputEnded(nil)
		end
		if JumpTouchObject then
			JumpTouchObject = nil
		end
	end)

	local playerGui = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
	while not playerGui do
		Players.LocalPlayer.ChildAdded:wait()
		playerGui = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
	end

	local playerGuiChangedConn = nil
	local originalScreenOrientationWasLandscape =	playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.LandscapeLeft or
													playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.LandscapeRight

	local function longShowBackground()
		self.fadeInAndOutHalfDuration = 2.5
		self.fadeInAndOutBalance = 0.05
		self.tweenInAlphaStart = tick()
	end

	playerGuiChangedConn = playerGui.Changed:connect(function(prop)
		if prop == "CurrentScreenOrientation" then
			if (originalScreenOrientationWasLandscape and playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.Portrait) or
				(not originalScreenOrientationWasLandscape and playerGui.CurrentScreenOrientation ~= Enum.ScreenOrientation.Portrait) then
				
				playerGuiChangedConn:disconnect()
				longShowBackground()

				if originalScreenOrientationWasLandscape then
					self.hasFadedBackgroundInPortrait = true
				else
					self.hasFadedBackgroundInLandscape = true
				end
			end
		end
	end)
	
	self.thumbstickFrame.Parent = parentFrame

	spawn(function()
		if game:IsLoaded() then
			longShowBackground()
		else
			game.Loaded:wait()
			longShowBackground()
		end
	end)
end

return DynamicThumbstick
