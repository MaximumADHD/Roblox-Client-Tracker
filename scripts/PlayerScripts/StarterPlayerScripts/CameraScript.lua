local RunService = game:GetService('RunService')
local UserInputService = game:GetService('UserInputService')
local PlayersService = game:GetService('Players')
local VRService = game:GetService("VRService")
local StarterPlayer = game:GetService('StarterPlayer')


local RootCamera = script:WaitForChild('RootCamera')

local AttachCamera = require(RootCamera:WaitForChild('AttachCamera'))()
local FixedCamera = require(RootCamera:WaitForChild('FixedCamera'))()
local ScriptableCamera = require(RootCamera:WaitForChild('ScriptableCamera'))()
local TrackCamera = require(RootCamera:WaitForChild('TrackCamera'))()
local WatchCamera = require(RootCamera:WaitForChild('WatchCamera'))()

local OrbitalCamera = require(RootCamera:WaitForChild('OrbitalCamera'))()
local ClassicCamera = require(RootCamera:WaitForChild('ClassicCamera'))()
local FollowCamera = require(RootCamera:WaitForChild('FollowCamera'))()
local PopperCam = require(script:WaitForChild('PopperCam'))
local Invisicam = require(script:WaitForChild('Invisicam'))
local TransparencyController = require(script:WaitForChild('TransparencyController'))()

local VRCamera = require(RootCamera:WaitForChild("VRCamera"))()

local GameSettings = UserSettings().GameSettings

local AllCamerasInLua = false
local success, msg = pcall(function()
	AllCamerasInLua = UserSettings():IsUserFeatureEnabled("UserAllCamerasInLua")
end)
if not success then
	print("Couldn't get feature UserAllCamerasInLua because:" , msg) 
end

local FFlagUserNoCameraClickToMoveSuccess, FFlagUserNoCameraClickToMoveResult = pcall(function() return UserSettings():IsUserFeatureEnabled("UserNoCameraClickToMove") end)
local FFlagUserNoCameraClickToMove = FFlagUserNoCameraClickToMoveSuccess and FFlagUserNoCameraClickToMoveResult
local ClickToMove = FFlagUserNoCameraClickToMove and nil or require(script:WaitForChild('ClickToMove'))()

local isOrbitalCameraEnabled = pcall(function() local test = Enum.CameraType.Orbital end)

-- register what camera scripts we are using
do
	local PlayerScripts = PlayersService.LocalPlayer:WaitForChild("PlayerScripts")
	local canRegisterCameras = pcall(function() PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Default) end)

	if canRegisterCameras then
		PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Follow)
		PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Classic)

		PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Default)
		PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Follow)
		PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Classic)
	end
end

local CameraTypeEnumMap = 
{
	[Enum.CameraType.Attach] = AttachCamera;
	[Enum.CameraType.Fixed] = FixedCamera;
	[Enum.CameraType.Scriptable] = ScriptableCamera;
	[Enum.CameraType.Track] = TrackCamera;
	[Enum.CameraType.Watch] = WatchCamera;
	[Enum.CameraType.Follow] = FollowCamera;
}

if isOrbitalCameraEnabled then
	CameraTypeEnumMap[Enum.CameraType.Orbital] = OrbitalCamera;
end

local EnabledCamera = nil
local EnabledOcclusion = nil

local cameraSubjectChangedConn = nil
local cameraTypeChangedConn = nil
local renderSteppedConn = nil

local lastInputType = nil
local hasLastInput = false

local function IsTouch()
	return UserInputService.TouchEnabled
end

local function shouldUsePlayerScriptsCamera()
	local player = PlayersService.LocalPlayer
	local currentCamera = workspace.CurrentCamera
	if AllCamerasInLua then
		return true
	else
		if player then
			if currentCamera == nil or (currentCamera.CameraType == Enum.CameraType.Custom)
						or (isOrbitalCameraEnabled and currentCamera.CameraType == Enum.CameraType.Orbital) then
				return true
			end
		end
	end
	return false
end

local function isClickToMoveOn()
	local usePlayerScripts = shouldUsePlayerScriptsCamera()
	local player = PlayersService.LocalPlayer
	if usePlayerScripts and player then
		if (hasLastInput and lastInputType == Enum.UserInputType.Touch) or IsTouch() then -- Touch
			if player.DevTouchMovementMode == Enum.DevTouchMovementMode.ClickToMove or
					(player.DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice and GameSettings.TouchMovementMode == Enum.TouchMovementMode.ClickToMove) then
				return true
			end
		else -- Computer
			if player.DevComputerMovementMode == Enum.DevComputerMovementMode.ClickToMove or
					(player.DevComputerMovementMode == Enum.DevComputerMovementMode.UserChoice and GameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove) then
				return true
			end
		end
	end
	return false
end

local function getCurrentCameraMode()
	local usePlayerScripts = shouldUsePlayerScriptsCamera()
	local player = PlayersService.LocalPlayer
	if usePlayerScripts and player then
		if (hasLastInput and lastInputType == Enum.UserInputType.Touch) or IsTouch() then -- Touch (iPad, etc...)
			if not FFlagUserNoCameraClickToMove and isClickToMoveOn() then
				return Enum.DevTouchMovementMode.ClickToMove.Name
			elseif player.DevTouchCameraMode == Enum.DevTouchCameraMovementMode.UserChoice then
				local touchMovementMode = GameSettings.TouchCameraMovementMode
				if touchMovementMode == Enum.TouchCameraMovementMode.Default then
					return Enum.TouchCameraMovementMode.Follow.Name
				end
				return touchMovementMode.Name
			else
				return player.DevTouchCameraMode.Name
			end
		else -- Computer
			if not FFlagUserNoCameraClickToMove and isClickToMoveOn() then
				return Enum.DevComputerMovementMode.ClickToMove.Name
			elseif player.DevComputerCameraMode == Enum.DevComputerCameraMovementMode.UserChoice then
				local computerMovementMode = GameSettings.ComputerCameraMovementMode
				if computerMovementMode == Enum.ComputerCameraMovementMode.Default then
					return Enum.ComputerCameraMovementMode.Classic.Name
				end
				return computerMovementMode.Name
			else
				return player.DevComputerCameraMode.Name
			end
		end
	end
end

local function getCameraOcclusionMode()
	local usePlayerScripts = shouldUsePlayerScriptsCamera()
	local player = PlayersService.LocalPlayer
	if usePlayerScripts and player then
		return player.DevCameraOcclusionMode
	end
end

local function Update()
	if EnabledCamera then
		EnabledCamera:Update()
	end
	if EnabledOcclusion and not VRService.VREnabled then
		EnabledOcclusion:Update(EnabledCamera)
	end
	if shouldUsePlayerScriptsCamera() then
		TransparencyController:Update()
	end
end

local function SetEnabledCamera(newCamera)
	if EnabledCamera ~= newCamera then
		if EnabledCamera then
			EnabledCamera:SetEnabled(false)
		end
		EnabledCamera = newCamera
		if EnabledCamera then
			EnabledCamera:SetEnabled(true)
		end
	end
end

local function OnCameraMovementModeChange(newCameraMode)
	if newCameraMode == Enum.DevComputerMovementMode.ClickToMove.Name then
		if FFlagUserNoCameraClickToMove then
			--No longer responding to ClickToMove here!
			return
		end
		ClickToMove:Start()
		SetEnabledCamera(nil)
		TransparencyController:SetEnabled(true)
	else
		local currentCameraType = workspace.CurrentCamera and workspace.CurrentCamera.CameraType
		if VRService.VREnabled and currentCameraType ~= Enum.CameraType.Scriptable then
			SetEnabledCamera(VRCamera)
			TransparencyController:SetEnabled(false)		
		elseif (currentCameraType == Enum.CameraType.Custom or not AllCamerasInLua) and newCameraMode == Enum.ComputerCameraMovementMode.Classic.Name then
			SetEnabledCamera(ClassicCamera)			
			TransparencyController:SetEnabled(true)
		elseif (currentCameraType == Enum.CameraType.Custom or not AllCamerasInLua) and newCameraMode == Enum.ComputerCameraMovementMode.Follow.Name then
			SetEnabledCamera(FollowCamera)
			TransparencyController:SetEnabled(true)
		elseif (currentCameraType == Enum.CameraType.Custom or not AllCamerasInLua) and (isOrbitalCameraEnabled and (newCameraMode == Enum.ComputerCameraMovementMode.Orbital.Name)) then
			SetEnabledCamera(OrbitalCamera)
			TransparencyController:SetEnabled(true)
		elseif AllCamerasInLua and CameraTypeEnumMap[currentCameraType] then
			SetEnabledCamera(CameraTypeEnumMap[currentCameraType])
			TransparencyController:SetEnabled(false)
		else -- Our camera movement code was disabled by the developer
			SetEnabledCamera(nil)
			TransparencyController:SetEnabled(false)
		end
		ClickToMove:Stop()
	end

	local newOcclusionMode = getCameraOcclusionMode()
	if EnabledOcclusion == Invisicam and newOcclusionMode ~= Enum.DevCameraOcclusionMode.Invisicam then
		Invisicam:Cleanup()
	end
	
	-- PopperCam does not work with OrbitalCamera, as OrbitalCamera's distance can be fixed.
	if newOcclusionMode == Enum.DevCameraOcclusionMode.Zoom and ( isOrbitalCameraEnabled and newCameraMode ~= Enum.ComputerCameraMovementMode.Orbital.Name ) then
		EnabledOcclusion = PopperCam
	elseif newOcclusionMode == Enum.DevCameraOcclusionMode.Invisicam then
		EnabledOcclusion = Invisicam
	else
		EnabledOcclusion = false
	end
end

local function OnCameraTypeChanged(newCameraType)
	if newCameraType == Enum.CameraType.Scriptable then
		if UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter then
			UserInputService.MouseBehavior = Enum.MouseBehavior.Default
		end
	end
end


local function OnCameraSubjectChanged(newSubject)
	TransparencyController:SetSubject(newSubject)
end

local function OnNewCamera()
	OnCameraMovementModeChange(getCurrentCameraMode())

	local currentCamera = workspace.CurrentCamera
	if currentCamera then
		if cameraSubjectChangedConn then
			cameraSubjectChangedConn:disconnect()
  		end

		if cameraTypeChangedConn then
			cameraTypeChangedConn:disconnect()
		end

		cameraSubjectChangedConn = currentCamera:GetPropertyChangedSignal("CameraSubject"):connect(function()
			OnCameraSubjectChanged(currentCamera.CameraSubject)
		end)
	
		cameraTypeChangedConn = currentCamera:GetPropertyChangedSignal("CameraType"):connect(function()
			OnCameraMovementModeChange(getCurrentCameraMode())
			OnCameraTypeChanged(currentCamera.CameraType)
  		end)

		OnCameraSubjectChanged(currentCamera.CameraSubject)
		OnCameraTypeChanged(currentCamera.CameraType)
	end
end


local function OnPlayerAdded(player)
	workspace.Changed:connect(function(prop)
		if prop == 'CurrentCamera' then
			OnNewCamera()
		end
	end)

	player.Changed:connect(function(prop)
		OnCameraMovementModeChange(getCurrentCameraMode())
	end)

	GameSettings.Changed:connect(function(prop)
		OnCameraMovementModeChange(getCurrentCameraMode())
	end)

	RunService:BindToRenderStep("cameraRenderUpdate", Enum.RenderPriority.Camera.Value, Update)

	OnNewCamera()
	OnCameraMovementModeChange(getCurrentCameraMode())
end

do
	while PlayersService.LocalPlayer == nil do PlayersService.PlayerAdded:wait() end
	hasLastInput = pcall(function()
		lastInputType = UserInputService:GetLastInputType()
		UserInputService.LastInputTypeChanged:connect(function(newLastInputType) 
			lastInputType = newLastInputType
		end)
	end)
	OnPlayerAdded(PlayersService.LocalPlayer)
end

local function OnVREnabled()
	OnCameraMovementModeChange(getCurrentCameraMode())
end

VRService:GetPropertyChangedSignal("VREnabled"):connect(OnVREnabled)
