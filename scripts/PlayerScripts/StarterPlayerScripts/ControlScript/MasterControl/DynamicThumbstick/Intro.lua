local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local LocalPlayer = Players.LocalPlayer

local IMAGE_INTRO_MOVE = "rbxasset://textures/ui/Input/IntroMove.png"
local IMAGE_INTRO_CAMERA = "rbxasset://textures/ui/Input/IntroCamera.png"
local IMAGE_INTRO_CAMERA_PINCH = "rbxasset://textures/ui/Input/IntroCameraPinch.png"
local IMAGE_DASHED_LINE = "rbxasset://textures/ui/Input/DashedLine.png"
local IMAGE_DASHED_LINE_90 = "rbxasset://textures/ui/Input/DashedLine90.png"
local MIDDLE_TRANSPARENCIES = {
	1 - 0.69,
	1 - 0.50,
	1 - 0.40,
	1 - 0.30,
	1 - 0.20,
	1 - 0.10,
	1 - 0.05
}
local MOVE_CAMERA_THRESHOLD = 50

local ParentFrame = nil
local GestureArea = nil
local ThumbstickFrame = nil
local StartImage, EndImage, MiddleImages = nil, nil, {}
local IntroMoveImage = nil
local IntroJumpImage = nil
local IntroJumpImageTap = nil
local IntroCameraImage = nil
local IntroCornerAnim = nil
local IntroDashedLineTop, IntroDashedLineSide = nil
local GenericFadeTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

local IntroMoveSpriteSize = 128
local IntroMoveImageSize = 128

local noThumbstickFrameFade = true

local function create(className)
	return function(props)
		local instance = Instance.new(className)
		for key, val in pairs(props) do
			if typeof(key) == "string" then
				if key ~= "Parent" then
					instance[key] = val
				end
			else
				if typeof(val) == "Instance" then
					val.Parent = instance
				end
			end
		end
		instance.Parent = props.Parent
		return instance
	end
end

local Intro = {
	running = false,
	portraitMode = false,
	
	fadeThumbstick = nil,
	fadeThumbstickFrame = nil,

	didMoveThumbstick = false,
	didJump = false,
	didMoveCamera = false,

	currentState = nil,
	states = {},
}

function Intro.setup(isBigScreen, parentFrame, gestureArea, thumbstickFrame, startImage, endImage, middleImages)
	ParentFrame = parentFrame
	GestureArea = gestureArea
	ThumbstickFrame = thumbstickFrame
	StartImage = startImage
	EndImage = endImage
	MiddleImages = middleImages

	if isBigScreen then
		IntroMoveImageSize = IntroMoveImageSize * 2
	end

	IntroMoveImage = create("ImageLabel") {
		Name = "IntroMoveAnimation",
		BackgroundTransparency = 1,
		Image = IMAGE_INTRO_MOVE,
		AnchorPoint = Vector2.new(102/256, 55/256),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(0, IntroMoveImageSize, 0, IntroMoveImageSize),
		ImageRectOffset = Vector2.new(IntroMoveSpriteSize, IntroMoveSpriteSize),
		ImageRectSize = Vector2.new(IntroMoveSpriteSize, IntroMoveSpriteSize),
		ZIndex = 10,
		Visible = false,
		Parent = EndImage
	}

	IntroJumpImage = create("ImageLabel") {
		Name = "IntroJumpAnimation",
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(102/256, 55/256),
		Position = UDim2.new(0.75, 0, 0.25, 0),
		Image = IMAGE_INTRO_MOVE,
		ImageRectOffset = Vector2.new(0, 0),
		ImageRectSize = Vector2.new(IntroMoveSpriteSize, IntroMoveSpriteSize),
		ZIndex = 10,
		Visible = false,
		Parent = ThumbstickFrame
	}

	IntroJumpImageTap = create("ImageLabel") {
		Name = "IntroJumpTapAnimation",
		BackgroundTransparency = 1,
		Image = IMAGE_INTRO_MOVE,
		Position = UDim2.new(0, 0, 0, 0),
		AnchorPoint = Vector2.new(0, 0),
		Size = UDim2.new(1, 0, 1, 0),
		ImageTransparency = 1,
		ImageRectOffset = Vector2.new(IntroMoveSpriteSize, 0),
		ImageRectSize = Vector2.new(IntroMoveSpriteSize, IntroMoveSpriteSize),
		ZIndex = 10,
		Visible = false,
		Parent = IntroJumpImage
	}

	IntroCameraImage = create("ImageLabel") {
		Name = "IntroCameraDragAnimation",
		BackgroundTransparency = 1,
		Image = IMAGE_INTRO_MOVE,
		ImageRectOffset = Vector2.new(0, IntroMoveSpriteSize),
		ImageRectSize = Vector2.new(IntroMoveSpriteSize, IntroMoveSpriteSize),
		Position = UDim2.new(0.75, 0, -0.6, 0),
		Size = UDim2.new(0, IntroMoveImageSize, 0, IntroMoveImageSize),
		AnchorPoint = Vector2.new(0.5, 0),
		ZIndex = 10,
		Visible = false,
		Parent = GestureArea
	}

	IntroPinchImage = create("ImageLabel") {
		Name = "IntroCameraPinchAnimation",
		BackgroundTransparency = 1,
		Image = IMAGE_INTRO_CAMERA_PINCH,
		ImageRectOffset = Vector2.new(0, 0),
		ImageRectSize = Vector2.new(IntroMoveSpriteSize, IntroMoveSpriteSize),
		Position = UDim2.new(0.95, 0, 0.15, 0),
		Size = UDim2.new(0, IntroMoveImageSize, 0, IntroMoveImageSize),
		AnchorPoint = Vector2.new(1, 0),
		Rotation = 50,
		ZIndex = 10,
		Visible = false,
		Parent = GestureArea
	}

	IntroDashedLineTop = create("ImageLabel") {
		Name = "DashedLine",
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, -5, 0, 10),
		AnchorPoint = Vector2.new(0, 0.5),
		Image = IMAGE_DASHED_LINE,
		ImageTransparency = 0.5, 
		ScaleType = Enum.ScaleType.Tile,
		TileSize = UDim2.new(0, 64, 0, 10),
		Visible = false,
		Parent = ThumbstickFrame
	}
	
	IntroDashedLineSide = IntroDashedLineTop:Clone()
	IntroDashedLineSide.Image = IMAGE_DASHED_LINE_90
	IntroDashedLineSide.Position = UDim2.new(1, 0, 0, -5)
	IntroDashedLineSide.AnchorPoint = Vector2.new(0.5, 0)
	IntroDashedLineSide.Size = UDim2.new(0, 10, 1, 0)
	IntroDashedLineSide.TileSize = UDim2.new(0, 10, 0, 64)
	IntroDashedLineSide.Parent = ThumbstickFrame
end

function Intro.setPortraitMode(portraitMode)
	if not IntroDashedLineSide or not Intro.running then return end
	Intro.portraitMode = portraitMode
	IntroDashedLineSide.Visible = not portraitMode
end

function Intro.addState(stateName)
	local state = {}
	state.counter = 0

	Intro.states[stateName] = state
	return state
end

function Intro.onCompleted()
	--TODO: Remove this pcall when API is stable
	pcall(function() GameSettings:SetOnboardingCompleted("DynamicThumbstick") end)
	local fadeOutTop = TweenService:Create(IntroDashedLineTop, GenericFadeTweenInfo, { ImageTransparency = 1 })
	local fadeOutSide = TweenService:Create(IntroDashedLineSide, GenericFadeTweenInfo, { ImageTransparency = 1})
	fadeOutTop:Play()
	fadeOutSide:Play()
	fadeOutTop.Completed:wait()
	IntroDashedLineTop.Visible = false
	IntroDashedLineSide.Visible = false
	
	Intro.running = false
end

function Intro.setState(newState)
	if Intro.currentState == newState then return end
	if Intro.currentState then
		coroutine.wrap(function() Intro.currentState:stop() end)()
	end
	Intro.currentState = newState
	Intro.currentState.counter = Intro.currentState.counter + 1
	Intro.currentState:start()
end

function Intro.repeatState()
	if not Intro.currentState then return end
	coroutine.wrap(function() Intro.currentState:stop() end)()
	Intro.currentState.counter = Intro.currentState.counter + 1
	Intro.currentState:start()
end

function Intro.pause()
	if not Intro.currentState then return end
	Intro.currentState:stop()
	Intro.currentState = nil
end

function Intro.onThumbstickMoveBegin()
	if Intro.currentState == Intro.states.MoveThumbstick then
		Intro.states.MoveThumbstick.startedMoving = true
		local moveTween = Intro.states.MoveThumbstick.moveTween 
		if moveTween then
			moveTween:Cancel()
		end
	end
end

function Intro.onThumbstickMoved(dist)
	if Intro.currentState == Intro.states.MoveThumbstick then
		if dist > 100 then
			Intro.pause()
			spawn(function()
				wait(0.5)
				while StartImage.ImageTransparency ~= 1 do
					wait()
				end
				if Intro.states.MoveThumbstick.counter == 2 then
					Intro.setState(Intro.states.MoveCamera)
				else
					Intro.setState(Intro.states.MoveThumbstick)
				end
			end)
		else
			Intro.states.MoveThumbstick.startedMoving = false
		end
	end
end

function Intro.onJumped()
	if Intro.currentState == Intro.states.Jump then
		Intro.pause()
		spawn(function()
			wait(1)
			if Intro.states.Jump.counter > 1 then
				Intro.setState(Intro.states.MoveCamera)
			else
				Intro.setState(Intro.states.Jump)
			end
		end)
	end
end

function Intro.onCameraMoved()
	if Intro.currentState == Intro.states.MoveCamera then
		wait(1)
		Intro.setState(Intro.states.ZoomCamera)
	end
end

function Intro.onCameraZoomed()
	if Intro.currentState == Intro.states.ZoomCamera then
		Intro.pause()
	end
end

function Intro.play()
	for _, state in pairs(Intro.states) do
		state.counter = 0
	end
	Intro.running = true
	Intro.currentState = nil
	
	local portraitMode = false
	local currentCamera = workspace.CurrentCamera
	if currentCamera then
		portraitMode = currentCamera.ViewportSize.X < currentCamera.ViewportSize.Y
	end
	
	Intro.setPortraitMode(portraitMode)
	
	Intro.setState(Intro.states.MoveThumbstick)
end

Intro.addState("MoveThumbstick") do
	function Intro.states.MoveThumbstick:start()
		StartImage.Visible = true
		EndImage.Visible = true
		IntroMoveImage.Visible = true

		IntroDashedLineTop.Visible = true
		
		if not Intro.portraitMode then
			IntroDashedLineSide.Visible = true
		end

		self.startedMoving = false

		StartImage.Position = UDim2.new(0.5, 0, 0.6, 0)
		EndImage.Position = UDim2.new(0.5, 0, 0.6, 0)

		local moveTweenTarget = UDim2.new(0.3, 0, -0.25, 0)
		if Intro.states.MoveThumbstick.counter % 2 ~= 0 then
			moveTweenTarget = UDim2.new(0.7, 0, -0.25, 0)
		end

		local moveTweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut)
		self.moveTween = TweenService:Create(EndImage, moveTweenInfo, { Position = moveTweenTarget })

		local moveFadeInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
		local fadeOutTween = TweenService:Create(IntroMoveImage, moveFadeInfo, { ImageTransparency = 1 })
		local fadeInTween = TweenService:Create(IntroMoveImage, moveFadeInfo, { ImageTransparency = 0 })

		self.moveAnimActive = true
		coroutine.wrap(function()
			while Intro.currentState == self do
				if not self.startedMoving then
					if not noThumbstickFrameFade then
						Intro.fadeThumbstickFrame(moveTweenInfo.Time, 0.05)
					end

					StartImage.Position = UDim2.new(0.5, 0, 0.6, 0)
					EndImage.Position = UDim2.new(0.5, 0, 0.6, 0)

					self.moveTween:Play()
					Intro.fadeThumbstick(true)
					fadeInTween:Play()

					self.moveTween.Completed:wait()

					if Intro.currentState == self then
						Intro.fadeThumbstick(false)
						fadeOutTween:Play()

						fadeOutTween.Completed:wait()
						wait(0.5)
					end
				else
					wait()
				end
			end
		end)()
	end

	function Intro.states.MoveThumbstick:stop()
		self.moveTween:Cancel()
		IntroMoveImage.Visible = false

		if self.iconOptConn then
			self.iconOptConn:disconnect()
			self.iconOptConn = nil
		end
	end
end

Intro.addState("Jump") do
	function Intro.states.Jump:start()
		IntroJumpImage.Visible = true
		IntroJumpImageTap.Visible = true

		local jumpImageBaseSize = IntroMoveImageSize
		IntroJumpImage.Size = UDim2.new(0, jumpImageBaseSize * 1.5, 0, jumpImageBaseSize * 1.25)
		IntroJumpImageTap.ImageTransparency = 1

		local fadeInInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
		local fadeOutInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
		self.fadeHandIn = TweenService:Create(IntroJumpImage, fadeInInfo, { ImageTransparency = 0, Size = UDim2.new(0, jumpImageBaseSize, 0, jumpImageBaseSize * 0.95) })
		self.fadeHandOut = TweenService:Create(IntroJumpImage, fadeOutInfo, { ImageTransparency = 0.25, Size = UDim2.new(0, jumpImageBaseSize * 1.25, 0, jumpImageBaseSize * 1.25) })
		self.fadeTapIn = TweenService:Create(IntroJumpImageTap, fadeInInfo, { ImageTransparency = 0 })
		self.fadeTapOut = TweenService:Create(IntroJumpImageTap, fadeOutInfo, { ImageTransparency = 1 })

		coroutine.wrap(function()
			while Intro.currentState == self do
				self.fadeHandIn:Play()
				IntroJumpImageTap.ImageTransparency = 1

				if self.iconOptConn then
					self.iconOptConn:disconnect()
					self.iconOptConn = nil
				end

				wait(self.fadeHandIn.Completed:wait())

				if not noThumbstickFrameFade then
					Intro.fadeThumbstickFrame(fadeOutInfo.Time, 0)
				end
				IntroJumpImageTap.ImageTransparency = 0
				self.fadeHandOut:Play()
				self.fadeTapOut:Play()

				self.fadeHandOut.Completed:wait()
			end
		end)()
	end

	function Intro.states.Jump:stop()
		IntroJumpImage.Visible = false
		IntroJumpImageTap.Visible = false
	end
end

Intro.addState("MoveCamera") do
	function Intro.states.MoveCamera:start() 
		IntroCameraImage.Visible = true

		local swipeInfo = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
		local swipeTweenLeft = TweenService:Create(IntroCameraImage, swipeInfo, { Position = UDim2.new(0.25, 0, 0.25, 0) })
		local swipeTweenRight = TweenService:Create(IntroCameraImage, swipeInfo, { Position = UDim2.new(0.75, 0, 0.25, 0) })

		local camera = workspace.CurrentCamera
		local cameraLookStart = camera.CFrame.lookVector
		coroutine.wrap(function()
			while Intro.currentState == self do
				swipeTweenLeft:Play()
				swipeTweenLeft.Completed:wait()
				swipeTweenRight:Play()
				swipeTweenRight.Completed:wait()
			end
		end)()

		local function isInCameraArea(touchPos)
			return 
				touchPos.X >= GestureArea.AbsolutePosition.X and touchPos.Y >= GestureArea.AbsolutePosition.Y and 
				touchPos.X <  GestureArea.AbsolutePosition.X + GestureArea.AbsoluteSize.X and
				touchPos.Y <  GestureArea.AbsolutePosition.Y + GestureArea.AbsoluteSize.Y
		end

		local touchObj = nil
		local recordedMovement = Vector3.new()
		self.onInputBeganConn = UserInputService.InputBegan:Connect(function(inputObj, wasProcessed)
			if inputObj.UserInputType == Enum.UserInputType.Touch and isInCameraArea(inputObj.Position) and not wasProcessed then
				touchObj = inputObj
			end
		end)
		self.onInputChangedConn = UserInputService.InputChanged:Connect(function(inputObj, wasProcessed)
			if inputObj == touchObj then
				recordedMovement = recordedMovement + inputObj.Delta

				if recordedMovement.magnitude > MOVE_CAMERA_THRESHOLD then
					IntroCameraImage.Visible = false
				end
			end
		end)
		self.onInputEndedConn = UserInputService.InputEnded:Connect(function(inputObj, wasProcessed)
			if inputObj == touchObj then
				touchObj = nil
				if recordedMovement.magnitude > MOVE_CAMERA_THRESHOLD then --todo: make this number a constant
					Intro.onCameraMoved()
				end
			end
		end)
	end

	function Intro.states.MoveCamera:stop()
		if self.iconOptConn then
			self.iconOptConn:disconnect()
			self.iconOptConn = nil
		end

		IntroCameraImage.Visible = false
	end
end

Intro.addState("ZoomCamera") do
	function Intro.states.ZoomCamera:start()
		IntroPinchImage.Visible = true

		local camera = workspace.CurrentCamera
		local zoomStart = (camera.Focus.p - camera.CFrame.p).magnitude

		coroutine.wrap(function()
			while Intro.currentState == self do
				IntroPinchImage.ImageRectOffset = Vector2.new(0, 0)
				wait(0.75)
				IntroPinchImage.ImageRectOffset = Vector2.new(128, 0)
				wait(0.25)
			end
		end)()
		coroutine.wrap(function()
			while Intro.currentState == self do
				local zoom = (camera.Focus.p - camera.CFrame.p).magnitude
				if math.abs(zoom - zoomStart) > 3 then
					Intro.onCameraZoomed()
				end
				wait()
			end
		end)()
	end

	function Intro.states.ZoomCamera:stop()
		IntroPinchImage.Visible = false

		Intro.onCompleted()
	end
end

return Intro