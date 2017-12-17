
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Utility = require(ShellModules:FindFirstChild('Utility'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local RunService = game:GetService("RunService")
local UserInputService = game:GetService('UserInputService')
local Lighting = game:GetService('Lighting')

local Brightness = 0.3
local Contrast = 0.5
local Saturation = -1
local BackgroundTintColor = Color3.new(0.0784, 0.1686, 0.2353)
local MotionBlurIntensity = 10

local ColorCorrection = Utility.Create'ColorCorrectionEffect'
{
	Brightness = Brightness;
	Contrast = Contrast;
	Saturation = Saturation;
	TintColor = BackgroundTintColor;
	Enabled = true;
	Parent = Lighting;
}

local Blur = Utility.Create'BlurEffect'
{
	Size = MotionBlurIntensity;
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
			Blur.Size = info.BlurSize
		end
	)
end


local function transitionToCameraAnimator(cameraAnimator, transitionDuration, targetColor, targetBlurEnabled)
	Utility.PropertyTweener(ColorCorrection, "Brightness",
		ColorCorrection.Brightness, 0, transitionDuration, Utility.EaseInOutQuad, true,
	function()
		getFrameInfo = cameraAnimator:get_getFrameInfo()
		Blur.Enabled = targetBlurEnabled
		ColorCorrection.TintColor = targetColor
		Utility.PropertyTweener(ColorCorrection, "Brightness", ColorCorrection.Brightness,
			.3, transitionDuration, Utility.EaseInOutQuad, true)
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

	local animationInfo = {
		Contrast = 0.5;
		BlurSize = 10;
	}

	local function myGetFrameInfo()
		local t = Utility.Clamp(0, 1, (tick() - timestamp0) / length)

		return {
			CFrame = CFrameBezierLerp(cframes, t) * getGamepadInputCFrame();
			Contrast = animationInfo.Contrast;
			BlurSize = animationInfo.BlurSize;
		}
	end

	local function advance()
		cameraIndex = cameraIndex + 1
		if cameraIndex > #cameraSeries then
			cameraIndex = 1
		end
		cameraSeries[cameraIndex].init()
		cframes = getCFrameList(cameraSeries[cameraIndex].cameras)
		timestamp0 = tick()
	end

	local this = {}

	function this:Start()
		advance()

		local transitionDuration = 1.7
		spawn(function()
			while true do
				wait(length-transitionDuration)
				Utility.PropertyTweener(animationInfo, "Contrast", animationInfo.Contrast, -1, transitionDuration, Utility.EaseInOutQuad, true)
				Utility.PropertyTweener(animationInfo, "BlurSize", animationInfo.BlurSize, 50, transitionDuration, Utility.EaseInOutQuad, true)
				wait(transitionDuration)
				advance()
				Utility.PropertyTweener(animationInfo, "Contrast", animationInfo.Contrast, 0.5, transitionDuration, Utility.EaseInOutQuad, true)
				Utility.PropertyTweener(animationInfo, "BlurSize", animationInfo.BlurSize,  10, transitionDuration, Utility.EaseInOutQuad, true)
			end
		end)
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

	function myGetFrameInfo()
		local t = Utility.Clamp(0, 1, (tick() - timestamp0) / length)

		return {
			CFrame = CFrameBezierLerp(cframes, pathFunc(t));
			Contrast = 0.5;
			BlurSize = 10;
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


local ZoneManager = require(script.Parent:WaitForChild("CameraManagerModules"):WaitForChild("CameraManager_ZoneManager"))

local avitarEditorCameraAnimator = nil
local flythroughAnimator = nil


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
	avitarEditorCameraAnimator = CameraZoomAnimator(avatarEditorZoomCFrames, 1.0, function(t)
		t = Utility.Clamp(0, 1, t)
		return t * (2 - t)
	end)

	flythroughAnimator:Start()
	transitionToCameraAnimator(flythroughAnimator, 0.5, BackgroundTintColor, true)
end


function CameraManager:SwitchToFlyThrough()
	transitionToCameraAnimator(flythroughAnimator, 0.5, BackgroundTintColor, true)
end


function CameraManager:SwitchToAvatarEditor()
	ZoneManager:SetZone("AvatarEditor")
	avitarEditorCameraAnimator:Reset()
	transitionToCameraAnimator(avitarEditorCameraAnimator, 0.5, Color3.new(0,0,0), false)
end


return CameraManager

