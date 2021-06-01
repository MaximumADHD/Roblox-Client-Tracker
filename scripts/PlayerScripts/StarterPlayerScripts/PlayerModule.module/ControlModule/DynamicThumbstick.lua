--[[ Constants ]]--
local ZERO_VECTOR3 = Vector3.new(0,0,0)
local TOUCH_CONTROLS_SHEET = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"

local DYNAMIC_THUMBSTICK_ACTION_NAME = "DynamicThumbstickAction"
local DYNAMIC_THUMBSTICK_ACTION_PRIORITY = Enum.ContextActionPriority.High.Value

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

local FADE_IN_OUT_BACKGROUND = true
local FADE_IN_OUT_MAX_ALPHA = 0.35

local FADE_IN_OUT_HALF_DURATION_DEFAULT = 0.3
local FADE_IN_OUT_BALANCE_DEFAULT = 0.5
local ThumbstickFadeTweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local ContextActionService = game:GetService("ContextActionService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	LocalPlayer = Players.LocalPlayer
end

--[[ The Module ]]--
local BaseCharacterController = require(script.Parent:WaitForChild("BaseCharacterController"))
local DynamicThumbstick = setmetatable({}, BaseCharacterController)
DynamicThumbstick.__index = DynamicThumbstick

function DynamicThumbstick.new()
	local self = setmetatable(BaseCharacterController.new(), DynamicThumbstick)

	self.moveTouchObject = nil
	self.moveTouchLockedIn = false
	self.moveTouchFirstChanged = false
	self.moveTouchStartPosition = nil

	self.startImage = nil
	self.endImage = nil
	self.middleImages = {}

	self.startImageFadeTween = nil
	self.endImageFadeTween = nil
	self.middleImageFadeTweens = {}

	self.isFirstTouch = true

	self.thumbstickFrame = nil

	self.onRenderSteppedConn = nil

	self.fadeInAndOutBalance = FADE_IN_OUT_BALANCE_DEFAULT
	self.fadeInAndOutHalfDuration = FADE_IN_OUT_HALF_DURATION_DEFAULT
	self.hasFadedBackgroundInPortrait = false
	self.hasFadedBackgroundInLandscape = false

	self.tweenInAlphaStart = nil
	self.tweenOutAlphaStart = nil

	return self
end

-- Note: Overrides base class GetIsJumping with get-and-clear behavior to do a single jump
-- rather than sustained jumping. This is only to preserve the current behavior through the refactor.
function DynamicThumbstick:GetIsJumping()
	local wasJumping = self.isJumping
	self.isJumping = false
	return wasJumping
end

function DynamicThumbstick:Enable(enable, uiParentFrame)
	if enable == nil then return false end			-- If nil, return false (invalid argument)
	enable = enable and true or false				-- Force anything non-nil to boolean before comparison
	if self.enabled == enable then return true end	-- If no state change, return true indicating already in requested state

	if enable then
		-- Enable
		if not self.thumbstickFrame then
			self:Create(uiParentFrame)
		end

		self:BindContextActions()
	else
		ContextActionService:UnbindAction(DYNAMIC_THUMBSTICK_ACTION_NAME)
		-- Disable
		self:OnInputEnded() -- Cleanup
	end

	self.enabled = enable
	self.thumbstickFrame.Visible = enable
end

-- Was called OnMoveTouchEnded in previous version
function DynamicThumbstick:OnInputEnded()
	self.moveTouchObject = nil
	self.moveVector = ZERO_VECTOR3
	self:FadeThumbstick(false)
end

function DynamicThumbstick:FadeThumbstick(visible)
	if not visible and self.moveTouchObject then
		return
	end
	if self.isFirstTouch then return end

	if self.startImageFadeTween then
		self.startImageFadeTween:Cancel()
	end
	if self.endImageFadeTween then
		self.endImageFadeTween:Cancel()
	end
	for i = 1, #self.middleImages do
		if self.middleImageFadeTweens[i] then
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

function DynamicThumbstick:InputInFrame(inputObject)
	local frameCornerTopLeft = self.thumbstickFrame.AbsolutePosition
	local frameCornerBottomRight = frameCornerTopLeft + self.thumbstickFrame.AbsoluteSize
	local inputPosition = inputObject.Position
	if inputPosition.X >= frameCornerTopLeft.X and inputPosition.Y >= frameCornerTopLeft.Y then
		if inputPosition.X <= frameCornerBottomRight.X and inputPosition.Y <= frameCornerBottomRight.Y then
			return true
		end
	end
	return false
end

function DynamicThumbstick:DoFadeInBackground()
	local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
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

function DynamicThumbstick:DoMove(direction)
	local currentMoveVector = direction

	-- Scaled Radial Dead Zone
	local inputAxisMagnitude = currentMoveVector.magnitude
	if inputAxisMagnitude < self.radiusOfDeadZone then
		currentMoveVector = ZERO_VECTOR3
	else
		currentMoveVector = currentMoveVector.unit*(
			1 - math.max(0, (self.radiusOfMaxSpeed - currentMoveVector.magnitude)/self.radiusOfMaxSpeed)
		)
		currentMoveVector = Vector3.new(currentMoveVector.x, 0, currentMoveVector.y)
	end

	self.moveVector = currentMoveVector
end


function DynamicThumbstick:LayoutMiddleImages(startPos, endPos)
	local startDist = (self.thumbstickSize / 2) + self.middleSize
	local vector = endPos - startPos
	local distAvailable = vector.magnitude - (self.thumbstickRingSize / 2) - self.middleSize
	local direction = vector.unit

	local distNeeded = self.middleSpacing * NUM_MIDDLE_IMAGES
	local spacing = self.middleSpacing

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
			image.Size = UDim2.new(0, self.middleSize * exposedFraction, 0, self.middleSize * exposedFraction)
		else
			image.Visible = false
		end
	end
end

function DynamicThumbstick:MoveStick(pos)
	local vector2StartPosition = Vector2.new(self.moveTouchStartPosition.X, self.moveTouchStartPosition.Y)
	local startPos = vector2StartPosition - self.thumbstickFrame.AbsolutePosition
	local endPos = Vector2.new(pos.X, pos.Y) - self.thumbstickFrame.AbsolutePosition
	self.endImage.Position = UDim2.new(0, endPos.X, 0, endPos.Y)
	self:LayoutMiddleImages(startPos, endPos)
end

function DynamicThumbstick:BindContextActions()
	local function inputBegan(inputObject)
		if self.moveTouchObject then
			return Enum.ContextActionResult.Pass
		end

		if not self:InputInFrame(inputObject) then
			return Enum.ContextActionResult.Pass
		end

		if self.isFirstTouch then
			self.isFirstTouch = false
			local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0,false,0)
			TweenService:Create(self.startImage, tweenInfo, {Size = UDim2.new(0, 0, 0, 0)}):Play()
			TweenService:Create(
				self.endImage,
				tweenInfo,
				{Size = UDim2.new(0, self.thumbstickSize, 0, self.thumbstickSize), ImageColor3 = Color3.new(0,0,0)}
			):Play()
		end

		self.moveTouchLockedIn = false
		self.moveTouchObject = inputObject
		self.moveTouchStartPosition = inputObject.Position
		self.moveTouchFirstChanged = true

		if FADE_IN_OUT_BACKGROUND then
			self:DoFadeInBackground()
		end

		return Enum.ContextActionResult.Pass
	end

	local function inputChanged(inputObject)
		if inputObject == self.moveTouchObject then
			if self.moveTouchFirstChanged then
				self.moveTouchFirstChanged = false

				local startPosVec2 = Vector2.new(
					inputObject.Position.X - self.thumbstickFrame.AbsolutePosition.X,
					inputObject.Position.Y - self.thumbstickFrame.AbsolutePosition.Y
				)
				self.startImage.Visible = true
				self.startImage.Position = UDim2.new(0, startPosVec2.X, 0, startPosVec2.Y)
				self.endImage.Visible = true
				self.endImage.Position = self.startImage.Position

				self:FadeThumbstick(true)
				self:MoveStick(inputObject.Position)
			end

			self.moveTouchLockedIn = true

			local direction = Vector2.new(
				inputObject.Position.x - self.moveTouchStartPosition.x,
				inputObject.Position.y - self.moveTouchStartPosition.y
			)
			if math.abs(direction.x) > 0 or math.abs(direction.y) > 0 then
				self:DoMove(direction)
				self:MoveStick(inputObject.Position)
			end
			return Enum.ContextActionResult.Sink
		end
		return Enum.ContextActionResult.Pass
	end

	local function inputEnded(inputObject)
		if inputObject == self.moveTouchObject then
			self:OnInputEnded()
			if self.moveTouchLockedIn then
				return Enum.ContextActionResult.Sink
			end
		end
		return Enum.ContextActionResult.Pass
	end

	local function handleInput(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.Begin then
			return inputBegan(inputObject)
		elseif inputState == Enum.UserInputState.Change then
			return inputChanged(inputObject)
		elseif inputState == Enum.UserInputState.End then
			return inputEnded(inputObject)
		elseif inputState == Enum.UserInputState.Cancel then
			self:OnInputEnded()
		end
	end

	ContextActionService:BindActionAtPriority(
		DYNAMIC_THUMBSTICK_ACTION_NAME,
		handleInput,
		false,
		DYNAMIC_THUMBSTICK_ACTION_PRIORITY,
		Enum.UserInputType.Touch)
end

function DynamicThumbstick:Create(parentFrame)
	if self.thumbstickFrame then
		self.thumbstickFrame:Destroy()
		self.thumbstickFrame = nil
		if self.onRenderSteppedConn then
			self.onRenderSteppedConn:Disconnect()
			self.onRenderSteppedConn = nil
		end
	end

	self.thumbstickSize = 45
	self.thumbstickRingSize = 20
	self.middleSize = 10
	self.middleSpacing = self.middleSize + 4
	self.radiusOfDeadZone = 2
	self.radiusOfMaxSpeed = 20

	local screenSize = parentFrame.AbsoluteSize
	local isBigScreen = math.min(screenSize.x, screenSize.y) > 500
	if isBigScreen then
		self.thumbstickSize = self.thumbstickSize * 2
		self.thumbstickRingSize = self.thumbstickRingSize * 2
		self.middleSize = self.middleSize * 2
		self.middleSpacing = self.middleSpacing * 2
		self.radiusOfDeadZone = self.radiusOfDeadZone * 2
		self.radiusOfMaxSpeed = self.radiusOfMaxSpeed * 2
	end

	local function layoutThumbstickFrame(portraitMode)
		if portraitMode then
			self.thumbstickFrame.Size = UDim2.new(1, 0, 0.4, 0)
			self.thumbstickFrame.Position = UDim2.new(0, 0, 0.6, 0)
		else
			self.thumbstickFrame.Size = UDim2.new(0.4, 0, 2/3, 0)
			self.thumbstickFrame.Position = UDim2.new(0, 0, 1/3, 0)
		end
	end

	self.thumbstickFrame = Instance.new("Frame")
	self.thumbstickFrame.BorderSizePixel = 0
	self.thumbstickFrame.Name = "DynamicThumbstickFrame"
	self.thumbstickFrame.Visible = false
	self.thumbstickFrame.BackgroundTransparency = 1.0
	self.thumbstickFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	self.thumbstickFrame.Active = false
	layoutThumbstickFrame(false)

	self.startImage = Instance.new("ImageLabel")
	self.startImage.Name = "ThumbstickStart"
	self.startImage.Visible = true
	self.startImage.BackgroundTransparency = 1
	self.startImage.Image = TOUCH_CONTROLS_SHEET
	self.startImage.ImageRectOffset = Vector2.new(1,1)
	self.startImage.ImageRectSize = Vector2.new(144, 144)
	self.startImage.ImageColor3 = Color3.new(0, 0, 0)
	self.startImage.AnchorPoint = Vector2.new(0.5, 0.5)
	self.startImage.Position = UDim2.new(0, self.thumbstickRingSize * 3.3, 1, -self.thumbstickRingSize  * 2.8)
	self.startImage.Size = UDim2.new(0, self.thumbstickRingSize  * 3.7, 0, self.thumbstickRingSize  * 3.7)
	self.startImage.ZIndex = 10
	self.startImage.Parent = self.thumbstickFrame

	self.endImage = Instance.new("ImageLabel")
	self.endImage.Name = "ThumbstickEnd"
	self.endImage.Visible = true
	self.endImage.BackgroundTransparency = 1
	self.endImage.Image = TOUCH_CONTROLS_SHEET
	self.endImage.ImageRectOffset = Vector2.new(1,1)
	self.endImage.ImageRectSize =  Vector2.new(144, 144)
	self.endImage.AnchorPoint = Vector2.new(0.5, 0.5)
	self.endImage.Position = self.startImage.Position
	self.endImage.Size = UDim2.new(0, self.thumbstickSize * 0.8, 0, self.thumbstickSize * 0.8)
	self.endImage.ZIndex = 10
	self.endImage.Parent = self.thumbstickFrame

	for i = 1, NUM_MIDDLE_IMAGES do
		self.middleImages[i] = Instance.new("ImageLabel")
		self.middleImages[i].Name = "ThumbstickMiddle"
		self.middleImages[i].Visible = false
		self.middleImages[i].BackgroundTransparency = 1
		self.middleImages[i].Image = TOUCH_CONTROLS_SHEET
		self.middleImages[i].ImageRectOffset = Vector2.new(1,1)
		self.middleImages[i].ImageRectSize = Vector2.new(144, 144)
		self.middleImages[i].ImageTransparency = MIDDLE_TRANSPARENCIES[i]
		self.middleImages[i].AnchorPoint = Vector2.new(0.5, 0.5)
		self.middleImages[i].ZIndex = 9
		self.middleImages[i].Parent = self.thumbstickFrame
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

	self.moveTouchStartPosition = nil

	self.startImageFadeTween = nil
	self.endImageFadeTween = nil
	self.middleImageFadeTweens = {}

	self.onRenderSteppedConn = RunService.RenderStepped:Connect(function()
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

	self.onTouchEndedConn = UserInputService.TouchEnded:connect(function(inputObject)
		if inputObject == self.moveTouchObject then
			self:OnInputEnded()
		end
	end)

	GuiService.MenuOpened:connect(function()
		if self.moveTouchObject then
			self:OnInputEnded()
		end
	end)

	local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
	while not playerGui do
		LocalPlayer.ChildAdded:wait()
		playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
	end

	local playerGuiChangedConn = nil
	local originalScreenOrientationWasLandscape =	playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.LandscapeLeft or
													playerGui.CurrentScreenOrientation == Enum.ScreenOrientation.LandscapeRight

	local function longShowBackground()
		self.fadeInAndOutHalfDuration = 2.5
		self.fadeInAndOutBalance = 0.05
		self.tweenInAlphaStart = tick()
	end

	playerGuiChangedConn = playerGui:GetPropertyChangedSignal("CurrentScreenOrientation"):Connect(function()
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
	end)

	self.thumbstickFrame.Parent = parentFrame

	if game:IsLoaded() then
		longShowBackground()
	else
		coroutine.wrap(function()
			game.Loaded:Wait()
			longShowBackground()
		end)()
	end
end

return DynamicThumbstick
