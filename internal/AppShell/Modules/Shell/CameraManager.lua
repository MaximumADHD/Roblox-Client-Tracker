local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Utility = require(ShellModules:FindFirstChild('Utility'))
local RunService = game:GetService("RunService")
local UserInputService = game:GetService('UserInputService')
local Lighting = game:GetService('Lighting')

local BackgroundTintColor = Color3.new(0.0784, 0.1686, 0.2353)

local ColorCorrection = Utility.Create'ColorCorrectionEffect'
{
	Brightness = 0.3;
	Contrast = 0.5;
	Saturation = -1;
	TintColor = BackgroundTintColor;
	Enabled = true;
	Parent = Lighting;
}

local Blur = Utility.Create'BlurEffect'
{
	Size = 10;
	Enabled = true;
	Parent = Lighting;
}

local Bloom = Utility.Create'BloomEffect'
{
	Intensity = 0.05;
	Size = 24;
	Threshold = 0.95;
	Enabled = true;
	Parent = Lighting;
}

local function GetCameraParts(model)
	local parts = {}
	for i, part in pairs(model:GetChildren()) do
		parts[tonumber(part.Name:sub(4, -1))] = part
		part.Transparency = 1
	end
	return parts
end

local myCameraSets = nil

local function GetCameraSets()
	if myCameraSets == nil then
		myCameraSets = {}
		for k, f in pairs(workspace:WaitForChild("Cameras"):GetChildren()) do
			myCameraSets[f.Name] = GetCameraParts(f)
		end
	end
	return myCameraSets
end


local function onCameraChanged()
	if workspace.CurrentCamera then
		workspace.CurrentCamera.CameraType = 'Scriptable'
	end
end

workspace:GetPropertyChangedSignal('CurrentCamera'):connect(function()
	onCameraChanged()
end)
onCameraChanged()


local cameraMoveCn = nil

local gamepadInput = Vector2.new(0, 0)



local CameraManager = {}

function CameraManager:EnableCameraControl()
	cameraMoveCn = Utility.DisconnectEvent(cameraMoveCn)
	cameraMoveCn = UserInputService.InputChanged:connect(function(input)
		if input.KeyCode == Enum.KeyCode.Thumbstick2 then
			gamepadInput = input.Position or gamepadInput
			gamepadInput = Vector2.new(gamepadInput.X, gamepadInput.Y)
		end
	end)
end

function CameraManager:DisableCameraControl()
	cameraMoveCn = Utility.DisconnectEvent(cameraMoveCn)
	gamepadInput = Vector2.new(0, 0)
end


local getGamepadInputCFrame;
do
	local gamepadInputLerping = Vector2.new(0, 0)
	local timestamp0 = tick()
	function getGamepadInputCFrame()
		local timestamp1 = tick()
		local deltaTime = timestamp1 - timestamp0
		timestamp0 = timestamp1
		local unit = 0.125 ^ deltaTime
		gamepadInputLerping = gamepadInputLerping * unit + gamepadInput * (1 - unit)
		return CFrame.new(
			gamepadInputLerping.X/8, gamepadInputLerping.Y/8, 0) * CFrame.Angles(0, -gamepadInputLerping.X / 12, 0) * CFrame.Angles(gamepadInputLerping.Y / 12, 0, 0)
	end
end


local defaultCFrame = CFrame.new();

local function defaultGetFrameInfo()
	return {
		CFrame = defaultCFrame;
		Contrast = 0.5;
		Saturation = -1;
		TintColor = BackgroundTintColor;
		BlurSize = 10;
	}
end

local getFrameInfo = defaultGetFrameInfo


local function startEternalRenderStep()
	RunService:BindToRenderStep("CameraScriptCutsceneLerp", Enum.RenderPriority.Camera.Value,
		function()
			local info = getFrameInfo()
			workspace.CurrentCamera.CoordinateFrame = info.CFrame
			ColorCorrection.Contrast = info.Contrast
			ColorCorrection.Saturation = info.Saturation
			ColorCorrection.TintColor = info.TintColor
			Blur.Size = info.BlurSize
		end
	)
end


local function transitionToCameraAnimator(cameraAnimator, transitionDuration, targetBrightness, targetBlurEnabled, targetBloomEnabled)
	Utility.PropertyTweener(ColorCorrection, "Brightness", ColorCorrection.Brightness,
		-1, transitionDuration, Utility.EaseInOutQuad, true,
	function()
		getFrameInfo = cameraAnimator:get_getFrameInfo()
		Blur.Enabled = targetBlurEnabled
		Bloom.Enabled = targetBloomEnabled
		Utility.PropertyTweener(ColorCorrection, "Brightness", ColorCorrection.Brightness,
			targetBrightness, transitionDuration, Utility.EaseInOutQuad, true)
	end)
end


local function CFrameBezierLerp(cframes, t)
	local cframes2 = {}
	for i = 1, #cframes - 1 do
		cframes2[i] = cframes[i]:lerp(cframes[i + 1], t)
	end
	if #cframes2 == 1 then
		return cframes2[1]
	end
	return CFrameBezierLerp(cframes2, t)
end


local function getCFrameList(cameras)
	local cframes = {}
	for i = 1, #cameras do
		cframes[i] = cameras[i].CFrame
	end
	return cframes
end


local function CameraSeriesAnimator(cameraSeries, length)
	local timestamp0 = 0
	local cameraIndex = 0
	local cframes = nil
	local isRunning = false
	local tweenTable = {}

	local animationInfo = {
		Contrast = -1;
		BlurSize = 50;
	}

	local function myGetFrameInfo()
		local t = Utility.Clamp(0, 1, (tick() - timestamp0) / length)

		return {
			CFrame = CFrameBezierLerp(cframes, t) * getGamepadInputCFrame();
			Contrast = animationInfo.Contrast;
			Saturation = -1;
			TintColor = BackgroundTintColor;
			BlurSize = animationInfo.BlurSize;
		}
	end

	local function advance()
		if not isRunning then
			return
		end
		cameraIndex = cameraIndex + 1
		if cameraIndex > #cameraSeries then
			cameraIndex = 1
		end
		cameraSeries[cameraIndex].init()
		cframes = getCFrameList(cameraSeries[cameraIndex].cameras)
		timestamp0 = tick()
	end

	runCameraSeries = function(transitionDuration)
		local timePassed = tick() - timestamp0
		for i = #tweenTable, 1, -1 do
			if tweenTable[i]:IsFinished() then
				table.remove(tweenTable, i)
			end
		end

		if timePassed >= length then
			local newTween = Utility.PropertyTweener(animationInfo, "Contrast", animationInfo.Contrast, 0.5, transitionDuration, Utility.EaseInOutQuad, true)
			table.insert(tweenTable, newTween)
			newTween = Utility.PropertyTweener(animationInfo, "BlurSize", animationInfo.BlurSize,  10, transitionDuration, Utility.EaseInOutQuad, true)
			table.insert(tweenTable, newTween)
			advance()
		elseif timePassed >= length - transitionDuration and #tweenTable == 0 then
			local newTween = Utility.PropertyTweener(animationInfo, "Contrast", animationInfo.Contrast, -1, transitionDuration, Utility.EaseInOutQuad, true)
			table.insert(tweenTable, newTween)
			newTween = Utility.PropertyTweener(animationInfo, "BlurSize", animationInfo.BlurSize, 50, transitionDuration, Utility.EaseInOutQuad, true)
			table.insert(tweenTable, newTween)
		end
	end

	local function startCameraSeries()
		local tween = Utility.PropertyTweener(animationInfo, "Contrast", animationInfo.Contrast, 0.5, 4, Utility.EaseInOutQuad, true)
		table.insert(tweenTable, tween)
		tween = Utility.PropertyTweener(animationInfo, "BlurSize", animationInfo.BlurSize,  10, 4, Utility.EaseInOutQuad, true)
		table.insert(tweenTable, tween)
		advance()
	end

	local this = {}

	function this:Start()
		isRunning = true
		startCameraSeries()
		RunService:BindToRenderStep("runCameraSeries", Enum.RenderPriority.Camera.Value + 1, function()
			runCameraSeries(1.7)
		end)
	end

	function this:Stop()
		isRunning = false
		for i = #tweenTable, 1, -1 do
			local tween = table.remove(tweenTable, i)
			tween:Finish()
		end
		animationInfo = {
			Contrast = 0.5;
			BlurSize = 10;
		}
		RunService:UnbindFromRenderStep("runCameraSeries")
	end

	function this:get_getFrameInfo()
		return myGetFrameInfo
	end

	return this
end


local function CameraZoomAnimator(cframes, length, pathFunc)
	local timestamp0 = 0

	local this = {}

	function this:Reset()
		timestamp0 = tick()
	end

	function this:Update(inCframes, length)
		cframes = inCframes
		timestamp0 = tick()
	end

	local function myGetFrameInfo()
		local t = Utility.Clamp(0, 1, (tick() - timestamp0) / length)

		return {
			CFrame = CFrameBezierLerp(cframes, pathFunc(t));
			Contrast = 0.35;
			Saturation = 0.175;
			TintColor = Color3.fromRGB(255, 255, 255);
			BlurSize = 1;
		}
	end

	function this:get_getFrameInfo()
		return myGetFrameInfo
	end

	return this
end


pcall(function()
	local function recurse(model)
		local children = model:GetChildren()
		for i = 1, #children do
			local child = children[i]
			if child:IsA("BasePart") then
				child.Locked = true
				child.Anchored = true
				child.CanCollide = false
			end
			recurse(child)
		end
	end
	recurse(workspace)
end)


local ZoneManager = require(script.Parent:WaitForChild("CameraManagerModules"):WaitForChild("ZoneManager"))

local avatarEditorCameraAnimator = nil
local flythroughAnimator = nil

local avatarEditorZoomCFrames = {
	CFrame.new(
		10.2426682, 5.1197648, -30.9536419,
		-0.946675897, 0.123298854, -0.297661126,
		0.0000000, 0.92387563, 0.382692933,
		0.322187454, 0.36228618, -0.874610782),

	CFrame.new(
		12.50625, 4.83650, -24.764325,
		-0.94241035, 0.0557777137, -0.329775006,
		0.0000000, 0.98599577, 0.166770056,
		0.334458828, 0.157165825, -0.92921263)
}

function CameraManager:CameraMoveToAsync()
	local cameraSets = GetCameraSets()

	startEternalRenderStep();

	flythroughAnimator = CameraSeriesAnimator({
		{
			init = function() ZoneManager:SetZone("City") end;
			cameras = cameraSets["City"]
		},
		{
			init = function() ZoneManager:SetZone("Space") end;
			cameras = cameraSets["Space"]
		},
		{
			init = function() ZoneManager:SetZone("Volcano") end;
			cameras = cameraSets["Volcano"]
		},
	}, 60)

	avatarEditorCameraAnimator = CameraZoomAnimator(avatarEditorZoomCFrames, 1.0, function(t)
		t = Utility.Clamp(0, 1, t)
		return t * (2 - t)
	end)

	flythroughAnimator:Start()
	transitionToCameraAnimator(flythroughAnimator, 0.25, 0.3, true, false)
end


function CameraManager:SwitchToFlyThrough()
	transitionToCameraAnimator(flythroughAnimator, 0.25, 0.3, true, false)
	flythroughAnimator:Start()
end


function CameraManager:SwitchToAvatarEditor()
	flythroughAnimator:Stop()
	ZoneManager:SetZone("AvatarEditor")
	avatarEditorCameraAnimator:Reset()

	transitionToCameraAnimator(avatarEditorCameraAnimator, 0.25, 0.02, false, true)
end

local targetCFrame = avatarEditorZoomCFrames[2]

function CameraManager:UpdateAvatarEditorCamera(newCFrame)
	targetCFrame = newCFrame
	local frameInfo = avatarEditorCameraAnimator:get_getFrameInfo()()

	avatarEditorCameraAnimator:Update(
		{
			frameInfo.CFrame,
			targetCFrame
		},
		0.5
	)
end


return CameraManager

