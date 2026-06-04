--!nonstrict
--[[ Constants ]]--
local TOUCH_CONTROLS_SHEET = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"

local DYNAMIC_THUMBSTICK_ACTION_NAME = "DynamicThumbstickAction" -- Remove with FFlagUserPlayerScriptsDynamicThumbstickUsesIAS
local DYNAMIC_THUMBSTICK_ACTION_PRIORITY = Enum.ContextActionPriority.High.Value -- Remove with FFlagUserPlayerScriptsDynamicThumbstickUsesIAS

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
local INACTIVE_VIEWPORT_POSITION = Vector2.new(-1, -1)

local SAFE_AREA_INSET_MAX = 100

local FADE_IN_OUT_HALF_DURATION_DEFAULT = 0.3
local FADE_IN_OUT_BALANCE_DEFAULT = 0.5
local ThumbstickFadeTweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserPlayerScriptsCCLIntegrationB = FlagUtil.getUserFlag("UserPlayerScriptsCCLIntegrationB")
local FFlagUserAllowAbilityControlsBonus = FlagUtil.getUserFlag("UserAllowAbilityControlsBonus")
local FFlagUserPlayerScriptsDynamicThumbstickUsesIAS = FlagUtil.getUserFlag("UserPlayerScriptsDynamicThumbstickUsesIAS")

local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local ContextActionService = game:GetService("ContextActionService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local thumbstickAction
if FFlagUserPlayerScriptsDynamicThumbstickUsesIAS then
	local inputContexts = script.Parent.Parent:WaitForChild("InputContexts")
	local characterContext = inputContexts:WaitForChild("CharacterContext")
	thumbstickAction = characterContext:WaitForChild("ThumbstickAction") :: InputAction
end

local AvatarAbilitiesInterface = require(script.Parent:WaitForChild("AvatarAbilitiesInterface"))
local avatarAbilitiesInterface = if FFlagUserPlayerScriptsCCLIntegrationB
	then AvatarAbilitiesInterface.get(Players.LocalPlayer)
	else nil

local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	LocalPlayer = Players.LocalPlayer
end

--[[ The Module ]]--
local ActionController = require(script.Parent:WaitForChild("ActionController"))
local DynamicThumbstick = setmetatable({}, ActionController)
DynamicThumbstick.__index = DynamicThumbstick

function DynamicThumbstick.new(playerData)
	local self = setmetatable(ActionController.new() :: any, DynamicThumbstick)

	self.playerData = playerData -- DONT DO THIS THE MODULES SHOULD NOT BE STATEFUL
	self.enabled = false

	if FFlagUserPlayerScriptsDynamicThumbstickUsesIAS then
		self.isTouchActive = false
	else
		self.moveTouchObject = nil -- Remove with FFlagUserPlayerScriptsDynamicThumbstickUsesIAS
		self.moveTouchLockedIn = false -- Remove with FFlagUserPlayerScriptsDynamicThumbstickUsesIAS
	end
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

function DynamicThumbstick:Enable(enable: boolean?, uiParentFrame): boolean?
	if enable == nil then return false end			-- If nil, return false (invalid argument)
	enable = enable and true or false				-- Force anything non-nil to boolean before comparison
	if self.enabled == enable then return true end	-- If no state change, return true indicating already in requested state
	ActionController.Enable(self, enable)

	if enable then
		-- Enable
		if not self.thumbstickFrame then
			self:Create(uiParentFrame)
		end
		if FFlagUserPlayerScriptsDynamicThumbstickUsesIAS then
			self.thumbstickStateChangedConn = thumbstickAction.StateChanged:Connect(self.onStateChanged)
			thumbstickAction.Enabled = true
		else
			self:BindContextActions()
		end
	else
		if FFlagUserPlayerScriptsDynamicThumbstickUsesIAS then
			thumbstickAction.Enabled = false
			if self.thumbstickStateChangedConn then
				self.thumbstickStateChangedConn:Disconnect()
				self.thumbstickStateChangedConn = nil
			end
		else
			self:UnbindContextActions()
		end

		-- Disable
		self:OnInputEnded() -- Cleanup
	end

	self.enabled = enable
	self.thumbstickFrame.Visible = enable
	return nil
end

-- Was called OnMoveTouchEnded in previous version
function DynamicThumbstick:OnInputEnded()
	if FFlagUserPlayerScriptsDynamicThumbstickUsesIAS then
		self.isTouchActive = false
	else
		self.moveTouchObject = nil
	end
	self.playerData.actions.MoveAction:Fire(Vector2.zero)
	self:FadeThumbstick(false)
end

function DynamicThumbstick:FadeThumbstick(visible: boolean?)
	if not visible and (FFlagUserPlayerScriptsDynamicThumbstickUsesIAS and self.isTouchActive or self.moveTouchObject) then
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

function DynamicThumbstick:FadeThumbstickFrame(fadeDuration: number, fadeRatio: number)
	self.fadeInAndOutHalfDuration = fadeDuration * 0.5
	self.fadeInAndOutBalance = fadeRatio
	self.tweenInAlphaStart = tick()
end

function DynamicThumbstick:InputInFrame(inputObject: InputObject) -- Remove with FFlagUserPlayerScriptsDynamicThumbstickUsesIAS
	assert(not FFlagUserPlayerScriptsDynamicThumbstickUsesIAS)
	local frameCornerTopLeft: Vector2 = self.thumbstickFrame.AbsolutePosition
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

function DynamicThumbstick:DoMove(direction: Vector2)
	local currentMoveVector: Vector2 = direction

	-- Scaled Radial Dead Zone
	local inputAxisMagnitude: number = currentMoveVector.Magnitude
	if inputAxisMagnitude < self.radiusOfDeadZone then
		currentMoveVector = Vector2.new()
	else
		currentMoveVector = currentMoveVector.Unit*(
			1 - math.max(0, (self.radiusOfMaxSpeed - currentMoveVector.Magnitude)/self.radiusOfMaxSpeed)
		)
	end

	currentMoveVector = Vector2.new(currentMoveVector.X, -currentMoveVector.Y)
	self.playerData.actions.MoveAction:Fire(currentMoveVector)
end

function DynamicThumbstick:LayoutMiddleImages(startPos: Vector3, endPos: Vector3)
	local startDist = (self.thumbstickSize / 2) + self.middleSize
	local vector = endPos - startPos
	local distAvailable = vector.Magnitude - (self.thumbstickRingSize / 2) - self.middleSize
	local direction = vector.Unit

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

-- Remove with FFlagUserPlayerScriptsDynamicThumbstickUsesIAS
local inputBegan, inputChanged, inputEnded, handleInput
if not FFlagUserPlayerScriptsDynamicThumbstickUsesIAS then
	inputBegan = function(self, inputObject)
		assert(not FFlagUserPlayerScriptsDynamicThumbstickUsesIAS)
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

	inputChanged = function(self, inputObject: InputObject)
		assert(not FFlagUserPlayerScriptsDynamicThumbstickUsesIAS)
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
				inputObject.Position.X - self.moveTouchStartPosition.X,
				inputObject.Position.Y - self.moveTouchStartPosition.Y
			)
			if math.abs(direction.X) > 0 or math.abs(direction.Y) > 0 then
				self:DoMove(direction)
				self:MoveStick(inputObject.Position)
			end
			return Enum.ContextActionResult.Sink
		end
		return Enum.ContextActionResult.Pass
	end

	inputEnded = function(self, inputObject)
		assert(not FFlagUserPlayerScriptsDynamicThumbstickUsesIAS)
		if inputObject == self.moveTouchObject then
			self:OnInputEnded()
			if self.moveTouchLockedIn then
				return Enum.ContextActionResult.Sink
			end
		end
		return Enum.ContextActionResult.Pass
	end

	handleInput = function(self, actionName, inputState, inputObject)
		assert(not FFlagUserPlayerScriptsDynamicThumbstickUsesIAS)
		if inputState == Enum.UserInputState.Begin then
			return inputBegan(self, inputObject)
		elseif inputState == Enum.UserInputState.Change then
			if inputObject == self.moveTouchObject then
				return Enum.ContextActionResult.Sink
			else
				return Enum.ContextActionResult.Pass
			end
		elseif inputState == Enum.UserInputState.End then
			return inputEnded(self, inputObject)
		elseif inputState == Enum.UserInputState.Cancel then
			self:OnInputEnded()
		end
	end
end


-- Remove with FFlagUserPlayerScriptsDynamicThumbstickUsesIAS
function DynamicThumbstick:BindContextActions()
	assert(not FFlagUserPlayerScriptsDynamicThumbstickUsesIAS)
	ContextActionService:BindActionAtPriority(
		DYNAMIC_THUMBSTICK_ACTION_NAME,
		function(actionName, inputState, inputObject)
			return handleInput(self, actionName, inputState, inputObject)
		end,
		false,
		DYNAMIC_THUMBSTICK_ACTION_PRIORITY,
		Enum.UserInputType.Touch)

	self.TouchMovedCon = UserInputService.TouchMoved:Connect(function(inputObject: InputObject, _gameProcessedEvent: boolean)
		inputChanged(self, inputObject)
	end)
end

-- Remove with FFlagUserPlayerScriptsDynamicThumbstickUsesIAS
function DynamicThumbstick:UnbindContextActions()
	assert(not FFlagUserPlayerScriptsDynamicThumbstickUsesIAS)
	ContextActionService:UnbindAction(DYNAMIC_THUMBSTICK_ACTION_NAME)

	if self.TouchMovedCon then
		self.TouchMovedCon:Disconnect()
	end
end

function DynamicThumbstick:Create(parentFrame: GuiBase2d)
	if self.thumbstickFrame then
		if FFlagUserPlayerScriptsDynamicThumbstickUsesIAS then
			thumbstickAction.Enabled = false
			if self.thumbstickStateChangedConn then
				self.thumbstickStateChangedConn:Disconnect()
				self.thumbstickStateChangedConn = nil
			end
		end
		self.thumbstickFrame:Destroy()
		self.thumbstickFrame = nil
		if self.onRenderSteppedConn then
			self.onRenderSteppedConn:Disconnect()
			self.onRenderSteppedConn = nil
		end
		if self.absoluteSizeChangedConn then
			self.absoluteSizeChangedConn:Disconnect()
			self.absoluteSizeChangedConn = nil
		end
		if self.avatarAbilitiesEnabledChangedConn then
			self.avatarAbilitiesEnabledChangedConn:Disconnect()
			self.avatarAbilitiesEnabledChangedConn = nil
		end
	end

	local safeInset: number = SAFE_AREA_INSET_MAX
	local function layoutThumbstickFrame(portraitMode: boolean)
		if portraitMode then
			self.thumbstickFrame.Size = UDim2.new(1, safeInset, 0.4, safeInset)
			self.thumbstickFrame.Position = UDim2.new(0, -safeInset, 0.6, 0)
		else
			self.thumbstickFrame.Size = UDim2.new(0.4, safeInset, 2/3, safeInset)
			self.thumbstickFrame.Position = UDim2.new(0, -safeInset, 1/3, 0)
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

	if FFlagUserPlayerScriptsDynamicThumbstickUsesIAS then
		self.thumbstickButton = Instance.new("ImageButton")
		self.thumbstickButton.Name = "DynamicThumbstickUIModifier"
		self.thumbstickButton.BackgroundTransparency = 1
		self.thumbstickButton.ImageTransparency = 1
		self.thumbstickButton.AutoButtonColor = false
		self.thumbstickButton.Size = UDim2.new(1, 0, 1, 0)
		self.thumbstickButton.ZIndex = self.thumbstickFrame.ZIndex
		self.thumbstickButton.Visible = true
		self.thumbstickButton.Parent = self.thumbstickFrame

		local touchBinding = Instance.new("InputBinding")
		touchBinding.Name = "DynamicTouchBinding"
		touchBinding.KeyCode = Enum.KeyCode.TouchPosition
		touchBinding.UIModifier = self.thumbstickButton
		touchBinding.Parent = thumbstickAction
	end

	self.startImage = Instance.new("ImageLabel")
	self.startImage.Name = "ThumbstickStart"
	self.startImage.Visible = true
	self.startImage.BackgroundTransparency = 1
	self.startImage.Image = TOUCH_CONTROLS_SHEET
	self.startImage.ImageRectOffset = Vector2.new(1,1)
	self.startImage.ImageRectSize = Vector2.new(144, 144)
	self.startImage.ImageColor3 = Color3.new(0, 0, 0)
	self.startImage.AnchorPoint = Vector2.new(0.5, 0.5)
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

	local function ResizeThumbstick()
		local screenSize = parentFrame.AbsoluteSize
		local isBigScreen = math.min(screenSize.X, screenSize.Y) > 500

		local DEFAULT_THUMBSTICK_SIZE = 45
		local DEFAULT_RING_SIZE = 20
		local DEFAULT_OUTER_RING_SIZE = 74
		local DEFAULT_MIDDLE_SIZE = 10
		local DEFAULT_MIDDLE_SPACING = DEFAULT_MIDDLE_SIZE + 4
		local RADIUS_OF_DEAD_ZONE = 2
		local RADIUS_OF_MAX_SPEED = 20

		local scaleFactor = isBigScreen and 2 or 1
		local isCCLEnabled = if FFlagUserPlayerScriptsCCLIntegrationB then
			avatarAbilitiesInterface:isEnabled() else
			AvatarAbilitiesInterface.isEnabled()
		if FFlagUserAllowAbilityControlsBonus and isCCLEnabled and isBigScreen then
			local scaledOuterRingSize = 120
			scaleFactor = scaledOuterRingSize / DEFAULT_OUTER_RING_SIZE
		end

		self.thumbstickSize = DEFAULT_THUMBSTICK_SIZE * scaleFactor
		self.thumbstickRingSize = DEFAULT_RING_SIZE * scaleFactor
		self.middleSize = DEFAULT_MIDDLE_SIZE * scaleFactor
		self.middleSpacing = DEFAULT_MIDDLE_SPACING * scaleFactor
		self.radiusOfDeadZone = RADIUS_OF_DEAD_ZONE * scaleFactor
		self.radiusOfMaxSpeed = RADIUS_OF_MAX_SPEED * scaleFactor
		local outerRingSize = DEFAULT_OUTER_RING_SIZE * scaleFactor

		if isCCLEnabled then
			local thumbstickInsetX = isBigScreen and 100 or 64
			local thumbstickInsetY = isBigScreen and 112 or 64
			self.startImage.Position = UDim2.new(0, outerRingSize * 0.5 + safeInset + thumbstickInsetX, 1, -outerRingSize * 0.5 - safeInset - thumbstickInsetY)
			self.startImage.Size = UDim2.new(0, outerRingSize, 0, outerRingSize)
		else
			self.startImage.Position = UDim2.new(0, self.thumbstickRingSize * 3.3 + safeInset, 1, -self.thumbstickRingSize * 2.8 - safeInset)
			self.startImage.Size = UDim2.new(0, outerRingSize, 0, outerRingSize)
		end

		self.endImage.Position = self.startImage.Position
		self.endImage.Size = UDim2.new(0, self.thumbstickSize * 0.8, 0, self.thumbstickSize * 0.8)
	end

	ResizeThumbstick()
	self.absoluteSizeChangedConn = parentFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(ResizeThumbstick)
	if FFlagUserPlayerScriptsCCLIntegrationB then
		self.avatarAbilitiesEnabledChangedConn = avatarAbilitiesInterface:GetEnabledChangedSignal():Connect(ResizeThumbstick)
	else
		self.avatarAbilitiesEnabledChangedConn = AvatarAbilitiesInterface.GetEnabledChangedSignal():Connect(ResizeThumbstick)
	end

	local CameraChangedConn: RBXScriptConnection? = nil
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

	if FFlagUserPlayerScriptsDynamicThumbstickUsesIAS then
		self.onStateChanged = function(newPos: Vector2)
			if newPos ~= INACTIVE_VIEWPORT_POSITION then
				local guiInsetMin = GuiService:GetInsetArea(Enum.ScreenInsets.None).Min
				local screenPos = Vector3.new(newPos.X + guiInsetMin.X, newPos.Y + guiInsetMin.Y, 0)

				if not self.isTouchActive then
					self.isTouchActive = true

					if self.isFirstTouch then
						self.isFirstTouch = false
						local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)
						TweenService:Create(self.startImage, tweenInfo, {Size = UDim2.new(0, 0, 0, 0)}):Play()
						TweenService:Create(
							self.endImage,
							tweenInfo,
							{Size = UDim2.new(0, self.thumbstickSize, 0, self.thumbstickSize), ImageColor3 = Color3.new(0, 0, 0)}
						):Play()
					end

					self.moveTouchStartPosition = screenPos
					self.moveTouchFirstChanged = true

					if FADE_IN_OUT_BACKGROUND then
						self:DoFadeInBackground()
					end
				else
					if self.moveTouchFirstChanged then
						self.moveTouchFirstChanged = false

						local startPosVec2 = Vector2.new(
							self.moveTouchStartPosition.X - self.thumbstickFrame.AbsolutePosition.X,
							self.moveTouchStartPosition.Y - self.thumbstickFrame.AbsolutePosition.Y
						)
						self.startImage.Visible = true
						self.startImage.Position = UDim2.new(0, startPosVec2.X, 0, startPosVec2.Y)
						self.endImage.Visible = true
						self.endImage.Position = self.startImage.Position

						self:FadeThumbstick(true)
						self:MoveStick(self.moveTouchStartPosition)
					end

					local direction = Vector2.new(
						screenPos.X - self.moveTouchStartPosition.X,
						screenPos.Y - self.moveTouchStartPosition.Y
					)
					if direction.Magnitude > 0 then
						self:DoMove(direction)
						self:MoveStick(screenPos)
					end
				end
			else
				if self.isTouchActive then
					self:OnInputEnded()
				end
			end
		end
	else -- Remove with FFlagUserPlayerScriptsDynamicThumbstickUsesIAS
		self.onTouchEndedConn = UserInputService.TouchEnded:Connect(function(inputObject: InputObject)
			if inputObject == self.moveTouchObject then
				self:OnInputEnded()
			end
		end)
	end

	GuiService.MenuOpened:Connect(function()
		if FFlagUserPlayerScriptsDynamicThumbstickUsesIAS then
			if self.isTouchActive then
				self:OnInputEnded()
			end
		else
			if self.moveTouchObject then
				self:OnInputEnded()
			end
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

			playerGuiChangedConn:Disconnect()
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
