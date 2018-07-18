--[[
	CameraScript - This module manages the selection of the current camera control module,
	character occlusion module, and transparency controller. This script binds to
	RenderStepped at Camera priority and calls the Update() methods on the active camera
	control module, character occlusion module, and character transparency controller.
	Camera control modules are instantiated and activated as-needed, they are no longer all
	instantiated up front.
	
	2018 PlayerScripts Update - AllYourBlox		
--]]

local CameraScript = {}

-- NOTICE: Player property names do not all match their StarterPlayer equivalents,
-- with the differences noted in the comments on the right
local PLAYER_CAMERA_PROPERTIES =
{
	"CameraMinZoomDistance",
	"CameraMaxZoomDistance",
	"CameraMode",
	"DevCameraOcclusionMode",
	"DevComputerCameraMode",			-- Corresponds to StarterPlayer.DevComputerCameraMovementMode
	"DevTouchCameraMode",				-- Corresponds to StarterPlayer.DevTouchCameraMovementMode
	
	-- Character movement mode
	"DevComputerMovementMode",
	"DevTouchMovementMode",
	"DevEnableMouseLock",				-- Corresponds to StarterPlayer.EnableMouseLockOption
}

local USER_GAME_SETTINGS_PROPERTIES =
{
	"ComputerCameraMovementMode",
	"ComputerMovementMode",
	"ControlMode",
	"GamepadCameraSensitivity",
	"MouseSensitivity",
	"RotationType",
	"TouchCameraMovementMode",
	"TouchMovementMode",
}

--[[ Roblox Services ]]--
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local StarterPlayer = game:GetService("StarterPlayer")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

-- Camera math utility library
local CameraUtils = require(script:WaitForChild("CameraUtils"))

-- Load camera modules (Note: each returns a new() constructor function but does not instantiate a controller)
local ClassicCamera = require(script:WaitForChild("ClassicCamera"))
local OrbitalCamera = require(script:WaitForChild("OrbitalCamera"))
local LegacyCamera = require(script:WaitForChild("LegacyCamera"))

-- Load character-occlusion modules
local Invisicam = require(script:WaitForChild("Invisicam"))
local Poppercam do
	local success, useNewPoppercam = pcall(UserSettings().IsUserFeatureEnabled, UserSettings(), "UserNewPoppercam")
	if success and useNewPoppercam then
		Poppercam = require(script:WaitForChild("Poppercam"))
	else
		Poppercam = require(script:WaitForChild("Poppercam_Classic"))
	end
end

-- Load the near-field character transparency controller
local TransparencyController = require(script:WaitForChild("TransparencyController"))
local MouseLockController = require(script:WaitForChild("MouseLockController"))

-- Table of camera controllers that have been instantiated as needed
local instantiatedCameraControllers = {}
local instantiatedOcclusionModules = {}

-- Management of which options appear on the Roblox User Settings screen
do
	local PlayerScripts = Players.LocalPlayer:WaitForChild("PlayerScripts")
	local canRegisterCameras = pcall(function() PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Default) end)
	if canRegisterCameras then
		PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Follow)
		PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Classic)

		PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Default)
		PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Follow)
		PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Classic)
	end
end

-- Current active camera and occlusion module
local activeCameraController = nil
local activeOcclusionModule = nil
local activeTransparencyController = nil
local activeMouseLockController = nil

local currentComputerCameraMovementMode = nil

-- Connections to events
local cameraSubjectChangedConn = nil
local cameraTypeChangedConn = nil

local function GetCameraMovementModeFromSettings()
	local cameraMode = Players.LocalPlayer.CameraMode

	-- Lock First Person trumps all other settings and forces ClassicCamera
	if cameraMode == Enum.CameraMode.LockFirstPerson then
		return CameraUtils.ConvertCameraModeEnumToStandard(Enum.ComputerCameraMovementMode.Classic)
	end

	local devMode, userMode
	if UserInputService.TouchEnabled then
		devMode = CameraUtils.ConvertCameraModeEnumToStandard(Players.LocalPlayer.DevTouchCameraMode)
		userMode = CameraUtils.ConvertCameraModeEnumToStandard(UserGameSettings.TouchCameraMovementMode)
	else
		devMode = CameraUtils.ConvertCameraModeEnumToStandard(Players.LocalPlayer.DevComputerCameraMode)
		userMode = CameraUtils.ConvertCameraModeEnumToStandard(UserGameSettings.ComputerCameraMovementMode)
	end	
	
	if devMode == Enum.DevComputerCameraMovementMode.UserChoice then
		-- Developer is allowing user choice, so user setting is respected
		return userMode
	end

	return devMode
end

local function ActivateOcclusionModule( occlusionMode )
	local newModuleCreator = nil
	if occlusionMode == Enum.DevCameraOcclusionMode.Zoom then
		newModuleCreator = Poppercam
	elseif occlusionMode == Enum.DevCameraOcclusionMode.Invisicam then
		newModuleCreator = Invisicam
	else
		warn("CameraScript ActivateOcclusionModule called with unsupported mode")
		return
	end
	
	-- First check to see if there is actually a change. If the module being requested is already
	-- the currently-active solution then just make sure it's enabled and exit early
	if activeOcclusionModule and activeOcclusionModule:GetOcclusionMode() == occlusionMode then
		if not activeOcclusionModule:GetEnabled() then
			activeOcclusionModule:Enable(true)
		end
		return
	end
	
	-- Save a reference to the current active module (may be nil) so that we can disable it if
	-- we are successful in activating its replacement
	local prevOcclusionModule = activeOcclusionModule
	
	-- If there is no active module, see if the one we need has already been instantiated
	activeOcclusionModule = instantiatedOcclusionModules[newModuleCreator]
	
	-- If the module was not already instantiated and selected above, instantiate it
	if not activeOcclusionModule then
		activeOcclusionModule = newModuleCreator.new()
		if activeOcclusionModule then
			instantiatedOcclusionModules[newModuleCreator] = activeOcclusionModule
		end
	end
	
	-- If we were successful in either selecting or instantiating the module,
	-- enable it if it's not already the currently-active enabled module
	if activeOcclusionModule then
		local newModuleOcclusionMode = activeOcclusionModule:GetOcclusionMode()
		-- Sanity check that the module we selected or instantiated actually supports the desired occlusionMode
		if newModuleOcclusionMode ~= occlusionMode then
			warn("CameraScript ActivateOcclusionModule mismatch: ",activeOcclusionModule:GetOcclusionMode(),"~=",occlusionMode)
		end		
		
		-- Deactivate current module if there is one
		if prevOcclusionModule then
			-- Sanity check that current module is not being replaced by itself (that should have been handled above)
			if prevOcclusionModule ~= activeOcclusionModule then
				prevOcclusionModule:Enable(false)
			else
				warn("CameraScript ActivateOcclusionModule failure to detect already running correct module")
			end
		end
		
		-- Occlusion modules need to be initialized with information about characters and cameraSubject
		-- Invisicam needs the LocalPlayer's character
		-- Poppercam needs all player characters and the camera subject
		if occlusionMode == Enum.DevCameraOcclusionMode.Invisicam then
			-- Optimization to only send Invisicam what we know it needs
			if Players.LocalPlayer.Character then
				activeOcclusionModule:CharacterAdded(Players.LocalPlayer, Players.LocalPlayer.Character)
			end
		else
			-- Poppercam and any others that get added in the future and need the full player list for raycast ignore list 
			for _, player in pairs(Players:GetPlayers()) do
				if player and player.Character then
					activeOcclusionModule:CharacterAdded(player, player.Character)
				end
			end
			activeOcclusionModule:OnCameraSubjectChanged(game.Workspace.CurrentCamera.CameraSubject)
		end
		
		-- Activate new choice
		activeOcclusionModule:Enable(true)
	end
end

-- When supplied, legacyCameraType is used and cameraMovementMode is ignored (should be nil anyways)
-- Next, if userCameraCreator is passed in, that is used as the cameraCreator
local function ActivateCameraController( cameraMovementMode, legacyCameraType )
	
	local newCameraCreator = nil
	
	if legacyCameraType~=nil then
		--[[ 
			This function has been passed a CameraType enum value. Some of these map to the use of
			the LegacyCamera module, the value "Custom" will be translated to a movementMode enum
			value based on Dev and User settings, and "Scriptable" will disable the camera controller.
		--]]
		
		if legacyCameraType == Enum.CameraType.Scriptable then
			if activeCameraController then
				activeCameraController:Enable(false)
				activeCameraController = nil				
				return
			end
		elseif legacyCameraType == Enum.CameraType.Custom then
			cameraMovementMode = GetCameraMovementModeFromSettings()
			
		elseif legacyCameraType == Enum.CameraType.Track then
			-- Note: The TrackCamera module was basically an older, less fully-featured
			-- version of ClassicCamera, no longer actively maintained, but it is re-implemented in
			-- case a game was dependent on its lack of ClassicCamera's extra functionality.
			cameraMovementMode = Enum.ComputerCameraMovementMode.Classic
			
		elseif legacyCameraType == Enum.CameraType.Follow then
			cameraMovementMode = Enum.ComputerCameraMovementMode.Follow
			
		elseif legacyCameraType == Enum.CameraType.Orbital then
			cameraMovementMode = Enum.ComputerCameraMovementMode.Orbital
			
		elseif legacyCameraType == Enum.CameraType.Attach or
			   legacyCameraType == Enum.CameraType.Watch or
			   legacyCameraType == Enum.CameraType.Fixed then
			newCameraCreator = LegacyCamera
		else
			warn("CameraScript encountered an unhandled Camera.CameraType value: ",legacyCameraType)			
		end		
	end
	
	if not newCameraCreator then		
		if cameraMovementMode == Enum.ComputerCameraMovementMode.Classic or
			cameraMovementMode == Enum.ComputerCameraMovementMode.Follow or
			cameraMovementMode == Enum.ComputerCameraMovementMode.Default then
			newCameraCreator = ClassicCamera
		elseif cameraMovementMode == Enum.ComputerCameraMovementMode.Orbital then
			newCameraCreator = OrbitalCamera
		else
			warn("ActivateCameraController did not select a module.")
			return
		end
	end
	
	-- Create the camera control module we need if it does not already exist in instantiatedCameraControllers
	local newCameraController = nil
	if not instantiatedCameraControllers[newCameraCreator] then
		newCameraController = newCameraCreator.new()
		instantiatedCameraControllers[newCameraCreator] = newCameraController
	else
		newCameraController = instantiatedCameraControllers[newCameraCreator]
	end
	
	-- If there is a controller active and it's not the one we need, disable it,
	-- if it is the one we need, make sure it's enabled
	if activeCameraController then
		if activeCameraController ~= newCameraController then
			activeCameraController:Enable(false)
			activeCameraController = newCameraController
			activeCameraController:Enable(true)		
		elseif not activeCameraController:GetEnabled() then
			activeCameraController:Enable(true)
		end		
	elseif newCameraController ~= nil then
		activeCameraController = newCameraController
		activeCameraController:Enable(true)		
	end
	
	if activeCameraController then
		if cameraMovementMode~=nil then
			activeCameraController:SetCameraMovementMode(cameraMovementMode)
		elseif legacyCameraType~=nil then
			-- Note that this is only called when legacyCameraType is not a type that
			-- was convertible to a ComputerCameraMovementMode value, i.e. really only applies to LegacyCamera
			activeCameraController:SetCameraType(legacyCameraType)
		end
	end
end

-- Note: The active transparency controller could be made to listen for this event itself.
local function OnCameraSubjectChanged()
	if activeTransparencyController then
		activeTransparencyController:SetSubject(game.Workspace.CurrentCamera.CameraSubject)
	end
	
	if activeOcclusionModule then
		activeOcclusionModule:OnCameraSubjectChanged(game.Workspace.CurrentCamera.CameraSubject)
	end
end

local function OnCameraTypeChanged(newCameraType)
	if newCameraType == Enum.CameraType.Scriptable then
		if UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter then
			UserInputService.MouseBehavior = Enum.MouseBehavior.Default
		end
	end
	
	-- Forward the change to ActivateCameraController to handle
	ActivateCameraController(nil, newCameraType)	
end

-- Note: Called whenever workspace.CurrentCamera changes, but also on initialization of this script
local function OnCurrentCameraChanged()
	local currentCamera = game.Workspace.CurrentCamera
	if not currentCamera then return end
	
	if cameraSubjectChangedConn then
		cameraSubjectChangedConn:Disconnect()
	end

	if cameraTypeChangedConn then
		cameraTypeChangedConn:Disconnect()
	end

	cameraSubjectChangedConn = currentCamera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
		OnCameraSubjectChanged(currentCamera.CameraSubject)
	end)

	cameraTypeChangedConn = currentCamera:GetPropertyChangedSignal("CameraType"):Connect(function()
		OnCameraTypeChanged(currentCamera.CameraType)
		end)

	OnCameraSubjectChanged(currentCamera.CameraSubject)
	OnCameraTypeChanged(currentCamera.CameraType)
end

local function OnLocalPlayerCameraPropertyChanged(propertyName)
	if propertyName == "CameraMode" then
		-- CameraMode is only used to turn on/off forcing the player into first person view. The
		-- Note: The case "Classic" is used for all other views and does not correspond only to the ClassicCamera module
		if Players.LocalPlayer.CameraMode == Enum.CameraMode.LockFirstPerson then
			-- Locked in first person, use ClassicCamera which supports this
			if not activeCameraController or activeCameraController:GetModuleName() ~= "ClassicCamera" then
				ActivateCameraController(CameraUtils.ConvertCameraModeEnumToStandard(Enum.DevComputerCameraMovementMode.Classic))
			end
			
			if activeCameraController then
				activeCameraController:UpdateForDistancePropertyChange()
			end
		elseif Players.LocalPlayer.CameraMode == Enum.CameraMode.Classic then
			-- Not locked in first person view
			local cameraMovementMode = GetCameraMovementModeFromSettings()
			ActivateCameraController(CameraUtils.ConvertCameraModeEnumToStandard(cameraMovementMode))
		else
			warn("Unhandled value for property player.CameraMode: ",Players.LocalPlayer.CameraMode)
		end
	
	elseif propertyName == "DevComputerCameraMode" or 
		   propertyName == "DevTouchCameraMode" then
		local cameraMovementMode = GetCameraMovementModeFromSettings()
		ActivateCameraController(CameraUtils.ConvertCameraModeEnumToStandard(cameraMovementMode))
		
	elseif propertyName == "DevCameraOcclusionMode" then
		ActivateOcclusionModule(Players.LocalPlayer.DevCameraOcclusionMode)
		
	elseif propertyName == "CameraMinZoomDistance" or propertyName == "CameraMaxZoomDistance" then
		if activeCameraController then
			activeCameraController:UpdateForDistancePropertyChange()
		end
	elseif propertyName == "DevTouchMovementMode" then
		
	elseif propertyName == "DevComputerMovementMode" then
		
	elseif propertyName == "DevEnableMouseLock" then
		-- This is the enabling/disabling of "Shift Lock" mode, not LockFirstPerson (which is a CameraMode)
		
		-- Note: Enabling and disabling of MouseLock mode is normally only a publish-time choice made via
		-- the corresponding EnableMouseLockOption checkbox of StarterPlayer, and this script does not have
		-- support for changing the availability of MouseLock at runtime (this would require listening to
		-- Player.DevEnableMouseLock changes)
	end
end

local function OnUserGameSettingsPropertyChanged(propertyName)
	
	if propertyName == 	"ComputerCameraMovementMode" then
		local cameraMovementMode = GetCameraMovementModeFromSettings()
		ActivateCameraController(CameraUtils.ConvertCameraModeEnumToStandard(cameraMovementMode))
	
	-- These remaining UserGameSettings properties are not currently used by camera scripts in Lua
	-- and these cases could be removed.
	elseif propertyName == "ComputerMovementMode" then

	elseif propertyName == "ControlMode" then

	elseif propertyName == "GamepadCameraSensitivity" then

	elseif propertyName == "MouseSensitivity" then

	elseif propertyName == "RotationType" then

	elseif propertyName == "TouchCameraMovementMode" then

	elseif propertyName == "TouchMovementMode" then

	end
end

game.Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(OnCurrentCameraChanged)

-- Connect listeners to camera-related properties
for _, propertyName in pairs(PLAYER_CAMERA_PROPERTIES) do
	Players.LocalPlayer:GetPropertyChangedSignal(propertyName):Connect(function()
		OnLocalPlayerCameraPropertyChanged(propertyName)
	end)
end

for _, propertyName in pairs(USER_GAME_SETTINGS_PROPERTIES) do
	UserGameSettings:GetPropertyChangedSignal(propertyName):Connect(function()
		OnUserGameSettingsPropertyChanged(propertyName)
	end)
end

--[[	
	Main RenderStep Update. The camera controller and occlusion module both have opportunities
	to set and modify (respectively) the CFrame and Focus before it is set once on CurrentCamera.
	The camera and occlusion modules should only return CFrames, not set the CFrame property of
	CurrentCamera directly.	
--]]
local function Update(dt)
	local newCameraCFrame = nil
	local newCameraFocus = nil
	
	if activeCameraController then
		newCameraCFrame, newCameraFocus = activeCameraController:Update(dt)
		activeCameraController:ApplyVRTransform()
	else
		newCameraCFrame = game.Workspace.CurrentCamera.CFrame
		newCameraFocus = game.Workspace.CurrentCamera.Focus
	end
	
	if activeOcclusionModule then
		newCameraCFrame, newCameraFocus = activeOcclusionModule:Update(dt, newCameraCFrame, newCameraFocus)
	end
	
	-- Here is where the new CFrame and Focus are set for this render frame
	game.Workspace.CurrentCamera.CFrame = newCameraCFrame
	game.Workspace.CurrentCamera.Focus = newCameraFocus
	
	-- Update to character local transparency as needed based on camera-to-subject distance
	if activeTransparencyController then
		activeTransparencyController:Update()
	end
end

-- [[ old module migrating code below this point ]] --
local hasLastInput = false
local lastInputType = nil 

-- Formerly getCurrentCameraMode, this function resolves developer and user camera control settings to
-- decide which camera control module should be instantiated. The old method of converting redundant enum types
local function GetCameraControlChoice()
	local player = Players.LocalPlayer
	
	if player then
		if (hasLastInput and lastInputType == Enum.UserInputType.Touch) or UserInputService.TouchEnabled then
			-- Touch			
			if player.DevTouchCameraMode == Enum.DevTouchCameraMovementMode.UserChoice then
				return CameraUtils.ConvertCameraModeEnumToStandard( UserGameSettings.TouchCameraMovementMode )
			else
				return CameraUtils.ConvertCameraModeEnumToStandard( player.DevTouchCameraMode )
			end
		else
			-- Computer
			if player.DevComputerCameraMode == Enum.DevComputerCameraMovementMode.UserChoice then
				local computerMovementMode = CameraUtils.ConvertCameraModeEnumToStandard(UserGameSettings.ComputerCameraMovementMode)
				return CameraUtils.ConvertCameraModeEnumToStandard(computerMovementMode)
			else
				return CameraUtils.ConvertCameraModeEnumToStandard(player.DevComputerCameraMode)
			end
		end
	end
end

hasLastInput = pcall(function()
	lastInputType = UserInputService:GetLastInputType()
	UserInputService.LastInputTypeChanged:Connect(function(newLastInputType) 
		lastInputType = newLastInputType
	end)
end)

local function OnCharacterAdded(player, char)
	if activeOcclusionModule then
		activeOcclusionModule:CharacterAdded(player, char)
	end
end

local function OnCharacterRemoving(player, char)
	if activeOcclusionModule then
		activeOcclusionModule:CharacterRemoving(player, char)
	end
end

local function OnPlayerAdded(player)
	player.CharacterAdded:Connect(function(character) OnCharacterAdded(player, character) end)
	player.CharacterRemoving:Connect(function(character) OnCharacterRemoving(player, character) end)
end

local function OnMouseLockToggled()
	if activeMouseLockController then
		local mouseLocked = activeMouseLockController:GetIsMouseLocked()
		local mouseLockOffset = activeMouseLockController:GetMouseLockOffset()
		if activeCameraController then
			activeCameraController:SetIsMouseLocked(mouseLocked)
			activeCameraController:SetMouseLockOffset(mouseLockOffset)
		end
	end
end

OnPlayerAdded(Players.LocalPlayer)

activeTransparencyController = TransparencyController.new()
activeTransparencyController:Enable(true)

if not UserInputService.TouchEnabled then
	activeMouseLockController = MouseLockController.new()
	local toggleEvent = activeMouseLockController:GetBindableToggleEvent()
	if toggleEvent then
		toggleEvent:Connect(OnMouseLockToggled)
	end
end

ActivateCameraController(GetCameraControlChoice())
ActivateOcclusionModule(Players.LocalPlayer.DevCameraOcclusionMode)
OnCurrentCameraChanged() -- Does initializations and makes first camera controller
RunService:BindToRenderStep("cameraRenderUpdate", Enum.RenderPriority.Camera.Value, Update)

function CameraScript:GetActiveCameraController()
	return activeCameraController
end

return CameraScript
