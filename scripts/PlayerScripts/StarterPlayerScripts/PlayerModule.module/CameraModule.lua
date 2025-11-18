--!strict
--[[
	CameraModule - This ModuleScript implements a singleton class to manage the
	selection, activation, and deactivation of the current camera controller,
	character occlusion controller, and transparency controller. This script binds to
	RenderStepped at Camera priority and calls the Update() methods on the active
	controller instances.

	The camera controller ModuleScripts implement classes which are instantiated and
	activated as-needed, they are no longer all instantiated up front as they were in
	the previous generation of PlayerScripts.

	2018 PlayerScripts Update - AllYourBlox
--]]

local CameraModule = {}
CameraModule.__index = CameraModule

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
local VRService = game:GetService("VRService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local CommonUtils = script.Parent:WaitForChild("CommonUtils")
local ConnectionUtil = require(CommonUtils:WaitForChild("ConnectionUtil"))
local FlagUtil = require(CommonUtils:WaitForChild("FlagUtil"))

-- Static camera utils
local CameraUtils = require(script:WaitForChild("CameraUtils"))
local CameraInput = require(script:WaitForChild("CameraInput"))

-- Load Roblox Camera Controller Modules
local ClassicCamera = require(script:WaitForChild("ClassicCamera"))
local OrbitalCamera = require(script:WaitForChild("OrbitalCamera"))
local LegacyCamera = require(script:WaitForChild("LegacyCamera"))
local VehicleCamera = require(script:WaitForChild("VehicleCamera"))
-- New VR System Modules
local VRCamera = require(script:WaitForChild("VRCamera"))
local VRVehicleCamera = require(script:WaitForChild("VRVehicleCamera"))

-- Load Roblox Occlusion Modules
local Invisicam = require(script:WaitForChild("Invisicam"))
local Poppercam = require(script:WaitForChild("Poppercam"))

-- Load the near-field character transparency controller and the mouse lock "shift lock" controller
local TransparencyController = require(script:WaitForChild("TransparencyController"))
local MouseLockController = require(script:WaitForChild("MouseLockController"))

-- Table of camera controllers that have been instantiated. They are instantiated as they are used.
local instantiatedCameraControllers = {}
local instantiatedOcclusionModules = {}

if not Players.LocalPlayer then
	return {}
end
assert(Players.LocalPlayer, "Strict typing check")

-- Management of which options appear on the Roblox User Settings screen
do
	local PlayerScripts: PlayerScripts = Players.LocalPlayer:WaitForChild("PlayerScripts") :: PlayerScripts

	PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Default)
	PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Follow)
	PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Classic)

	PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Default)
	PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Follow)
	PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Classic)
	PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.CameraToggle)
end

local FFlagUserPlayerConnectionMemoryLeak = FlagUtil.getUserFlag("UserPlayerConnectionMemoryLeak")
local FFlagUserPSFixCameraControllerReset = FlagUtil.getUserFlag("UserPSFixCameraControllerReset")
local FFlagUserCheckTouchControlMode = FlagUtil.getUserFlag("UserCheckTouchControlMode")

-- Change this later as types are added for more classes
type Generic = any
type GenericOptional = any?

type CameraModuleClass = {
	__index: CameraModuleClass,
	new: () -> CameraModule,

	ActivateCameraController: (self: CameraModule) -> (),
	ActivateOcclusionModule: (self: CameraModule, occlusionMode: Enum.DevCameraOcclusionMode) -> (),
	GetCameraMovementModeFromSettings: (self: CameraModule) -> Enum.ComputerCameraMovementMode | Enum.DevComputerCameraMovementMode,
	OnPreferredInputChanged: (self: CameraModule) -> (),
	OnCameraSubjectChanged: (self: CameraModule) -> (),
	OnCameraTypeChanged: (self: CameraModule, newCameraType: Enum.CameraType) -> (),
	OnCharacterAdded: (self: CameraModule, character: Model, player: Player) -> (),
	OnCharacterRemoving: (self: CameraModule, character: Model, player: Player) -> (),
	OnCurrentCameraChanged: (self: CameraModule) -> (),
	OnLocalPlayerCameraPropertyChanged: (self: CameraModule, propertyName: string) -> (),
	OnPlayerAdded: (self: CameraModule, player: Player) -> (),
	OnPlayerRemoving: (self: CameraModule, player: Player) -> (),
	OnMouseLockToggled: (self: CameraModule) -> (),
	OnUserGameSettingsPropertyChanged: (self: CameraModule, propertyName: string) -> (),
	ShouldUseVehicleCamera: (self: CameraModule) -> boolean,
	Update: (self: CameraModule, dt: number) -> (),
}

export type CameraModule = typeof(setmetatable({} :: {
	activeCameraController: GenericOptional,
	activeMouseLockController: GenericOptional,
	activeOcclusionModule: GenericOptional,
	activeTransparencyController: Generic,
	cameraSubjectChangedConn: RBXScriptConnection?,
	cameraTypeChangedConn: RBXScriptConnection?,
	connectionUtil: ConnectionUtil.ConnectionUtil?,
	currentComputerCameraMovementMode: Enum.ComputerCameraMovementMode? | Enum.DevComputerCameraMovementMode?,
	occlusionMode: Enum.DevCameraOcclusionMode?,
}, {} :: CameraModuleClass))

function CameraModule.new()
	local self: CameraModule = setmetatable({
		activeTransparencyController = TransparencyController.new(),
		connectionUtil = if FFlagUserPlayerConnectionMemoryLeak then ConnectionUtil.new() else nil,
	},CameraModule)

	-- Current active controller instances
	self.activeCameraController = nil
	self.activeOcclusionModule = nil
	self.activeMouseLockController = nil

	self.currentComputerCameraMovementMode = nil

	-- Connections to events
	self.cameraSubjectChangedConn = nil
	self.cameraTypeChangedConn = nil

	-- Adds CharacterAdded and CharacterRemoving event handlers for all current players
	for _,player in pairs(Players:GetPlayers()) do
		self:OnPlayerAdded(player)
	end

	-- Adds CharacterAdded and CharacterRemoving event handlers for all players who join in the future
	Players.PlayerAdded:Connect(function(player)
		self:OnPlayerAdded(player)
	end)

	if FFlagUserPlayerConnectionMemoryLeak then
		Players.PlayerRemoving:Connect(function(player)
			self:OnPlayerRemoving(player)
		end)
	end

	self.activeTransparencyController:Enable(true)

	self.activeMouseLockController = MouseLockController.new()
	assert(self.activeMouseLockController, "Strict typing check")

	local toggleEvent = self.activeMouseLockController:GetBindableToggleEvent()
	if toggleEvent then
		toggleEvent:Connect(function()
			self:OnMouseLockToggled()
		end)
	end

	self:ActivateCameraController()
	self:ActivateOcclusionModule(Players.LocalPlayer.DevCameraOcclusionMode)
	self:OnCurrentCameraChanged() -- Does initializations and makes first camera controller
	RunService:BindToRenderStep("cameraRenderUpdate", Enum.RenderPriority.Camera.Value, function(dt) self:Update(dt) end)

	-- Connect listeners to camera-related properties
	for _, propertyName in pairs(PLAYER_CAMERA_PROPERTIES) do
		Players.LocalPlayer:GetPropertyChangedSignal(propertyName):Connect(function()
			self:OnLocalPlayerCameraPropertyChanged(propertyName)
		end)
	end

	for _, propertyName in pairs(USER_GAME_SETTINGS_PROPERTIES) do
		UserGameSettings:GetPropertyChangedSignal(propertyName):Connect(function()
			self:OnUserGameSettingsPropertyChanged(propertyName)
		end)
	end
	game.Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
		self:OnCurrentCameraChanged()
	end)
	UserInputService:GetPropertyChangedSignal("PreferredInput"):Connect(function()
		self:OnPreferredInputChanged()
	end)

	return self
end

function CameraModule:GetCameraMovementModeFromSettings(): Enum.ComputerCameraMovementMode | Enum.DevComputerCameraMovementMode
	local cameraMode = Players.LocalPlayer.CameraMode

	-- Lock First Person trumps all other settings and forces ClassicCamera
	if cameraMode == Enum.CameraMode.LockFirstPerson then
		return CameraUtils.ConvertCameraModeEnumToStandard(Enum.ComputerCameraMovementMode.Classic)
	end

	local devMode, userMode
	if UserInputService.PreferredInput == Enum.PreferredInput.Touch then
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

function CameraModule:ActivateOcclusionModule(occlusionMode: Enum.DevCameraOcclusionMode)
	local newModuleCreator
	if occlusionMode == Enum.DevCameraOcclusionMode.Zoom then
		newModuleCreator = Poppercam
	elseif occlusionMode == Enum.DevCameraOcclusionMode.Invisicam then
		newModuleCreator = Invisicam
	else
		warn("CameraScript ActivateOcclusionModule called with unsupported mode")
		return
	end

	self.occlusionMode = occlusionMode

	-- First check to see if there is actually a change. If the module being requested is already
	-- the currently-active solution then just make sure it's enabled and exit early
	if self.activeOcclusionModule and self.activeOcclusionModule:GetOcclusionMode() == occlusionMode then
		if not self.activeOcclusionModule:GetEnabled() then
			self.activeOcclusionModule:Enable(true)
		end
		return
	end

	-- Save a reference to the current active module (may be nil) so that we can disable it if
	-- we are successful in activating its replacement
	local prevOcclusionModule = self.activeOcclusionModule

	-- If there is no active module, see if the one we need has already been instantiated
	self.activeOcclusionModule = instantiatedOcclusionModules[newModuleCreator]

	-- If the module was not already instantiated and selected above, instantiate it
	if not self.activeOcclusionModule then
		self.activeOcclusionModule = newModuleCreator.new()
		if self.activeOcclusionModule then
			instantiatedOcclusionModules[newModuleCreator] = self.activeOcclusionModule
		end
	end

	-- If we were successful in either selecting or instantiating the module,
	-- enable it if it's not already the currently-active enabled module
	if self.activeOcclusionModule then
		local newModuleOcclusionMode = self.activeOcclusionModule:GetOcclusionMode()
		-- Sanity check that the module we selected or instantiated actually supports the desired occlusionMode
		if newModuleOcclusionMode ~= occlusionMode then
			warn("CameraScript ActivateOcclusionModule mismatch: ",self.activeOcclusionModule:GetOcclusionMode(),"~=",occlusionMode)
		end

		-- Deactivate current module if there is one
		if prevOcclusionModule then
			-- Sanity check that current module is not being replaced by itself (that should have been handled above)
			if prevOcclusionModule ~= self.activeOcclusionModule then
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
				self.activeOcclusionModule:CharacterAdded(Players.LocalPlayer.Character, Players.LocalPlayer )
			end
		else
			-- When Poppercam is enabled, we send it all existing player characters for its raycast ignore list
			for _, player in pairs(Players:GetPlayers()) do
				if player and player.Character then
					self.activeOcclusionModule:CharacterAdded(player.Character, player)
				end
			end
			self.activeOcclusionModule:OnCameraSubjectChanged((game.Workspace.CurrentCamera :: Camera).CameraSubject)
		end

		-- Activate new choice
		self.activeOcclusionModule:Enable(true)
	end
end

function CameraModule:ShouldUseVehicleCamera(): boolean
	local camera = workspace.CurrentCamera
	if not camera then
		return false
	end

	local cameraType = camera.CameraType
	local cameraSubject = camera.CameraSubject

	local isEligibleType = cameraType == Enum.CameraType.Custom or cameraType == Enum.CameraType.Follow
	local isEligibleSubject = cameraSubject and cameraSubject:IsA("VehicleSeat") or false
	local isEligibleOcclusionMode = self.occlusionMode ~= Enum.DevCameraOcclusionMode.Invisicam

	return isEligibleSubject and isEligibleType and isEligibleOcclusionMode
end

function CameraModule:ActivateCameraController()
	-- legacyCameraType should always be respected
	local legacyCameraType = (workspace.CurrentCamera :: Camera).CameraType
	local cameraMovementMode = self:GetCameraMovementModeFromSettings()
	local newCameraCreator = nil

	-- Some legacy CameraTypes map to the use of
	-- the LegacyCamera module, the value "Custom" will be translated to a movementMode enum
	-- value based on Dev and User settings, and "Scriptable" will disable the camera controller.
	if legacyCameraType == Enum.CameraType.Scriptable then
		if self.activeCameraController then
			self.activeCameraController:Enable(false)
			self.activeCameraController = nil
		end
		return
	elseif legacyCameraType == Enum.CameraType.Custom then
		cameraMovementMode = self:GetCameraMovementModeFromSettings()
	elseif legacyCameraType == Enum.CameraType.Track then
		-- Note: The TrackCamera module was basically an older, less fully-featured
		-- version of ClassicCamera, no longer actively maintained, but it is re-implemented in
		-- case a game was dependent on its lack of ClassicCamera's extra functionality.
		cameraMovementMode = Enum.ComputerCameraMovementMode.Classic
	elseif legacyCameraType == Enum.CameraType.Follow then
		cameraMovementMode = Enum.ComputerCameraMovementMode.Follow
	elseif legacyCameraType == Enum.CameraType.Orbital then
		cameraMovementMode = Enum.ComputerCameraMovementMode.Orbital
	elseif
		legacyCameraType == Enum.CameraType.Attach
		or legacyCameraType == Enum.CameraType.Watch
		or legacyCameraType == Enum.CameraType.Fixed
	then
		newCameraCreator = LegacyCamera
	else
		warn("CameraScript encountered an unhandled Camera.CameraType value: ", legacyCameraType)
	end

	if not newCameraCreator then
		if VRService.VREnabled then
			newCameraCreator = VRCamera
		elseif cameraMovementMode == Enum.ComputerCameraMovementMode.Classic or
			cameraMovementMode == Enum.ComputerCameraMovementMode.Follow or
			cameraMovementMode == Enum.ComputerCameraMovementMode.Default or
			cameraMovementMode == Enum.ComputerCameraMovementMode.CameraToggle then
			newCameraCreator = ClassicCamera
		elseif cameraMovementMode == Enum.ComputerCameraMovementMode.Orbital then
			newCameraCreator = OrbitalCamera
		else
			warn("ActivateCameraController did not select a module.")
			return
		end
	end

	local isVehicleCamera = self:ShouldUseVehicleCamera()
	if isVehicleCamera then
		if VRService.VREnabled then
			newCameraCreator = VRVehicleCamera
		else
			newCameraCreator = VehicleCamera
		end
	end

	-- Create the camera control module we need if it does not already exist in instantiatedCameraControllers
	local newCameraController
	if not instantiatedCameraControllers[newCameraCreator] then
		newCameraController = newCameraCreator.new()
		instantiatedCameraControllers[newCameraCreator] = newCameraController
	else
		newCameraController = instantiatedCameraControllers[newCameraCreator]
		if FFlagUserPSFixCameraControllerReset then 
			if newCameraController.Reset and self.activeCameraController ~= newCameraController then
				newCameraController:Reset()
			end
		else
			if newCameraController.Reset then
				newCameraController:Reset()
			end
		end
	end

	if self.activeCameraController then
		-- deactivate the old controller and activate the new one
		if self.activeCameraController ~= newCameraController then
			self.activeCameraController:Enable(false)
			self.activeCameraController = newCameraController
			self.activeCameraController:Enable(true)
		elseif not self.activeCameraController:GetEnabled() then
			self.activeCameraController:Enable(true)
		end
	elseif newCameraController ~= nil then
		-- only activate the new controller
		self.activeCameraController = newCameraController
		assert(self.activeCameraController, "Strict typing check")

		self.activeCameraController:Enable(true)
	end

	if self.activeCameraController then
		-- These functions can be removed in the future and the logic of managing cameraType/cameraMovementMode should be moved
		-- into a higher level class so that activeCameraControllers can be single function.
		self.activeCameraController:SetCameraMovementMode(cameraMovementMode)
		-- was convertible to a ComputerCameraMovementMode value, i.e. really only applies to LegacyCamera
		self.activeCameraController:SetCameraType(legacyCameraType)
	end
end

-- Note: The active transparency controller could be made to listen for this event itself.
function CameraModule:OnCameraSubjectChanged()
	local camera = workspace.CurrentCamera
	local cameraSubject = if camera then camera.CameraSubject else nil

	if self.activeTransparencyController then
		self.activeTransparencyController:SetSubject(cameraSubject)
	end

	if self.activeOcclusionModule then
		self.activeOcclusionModule:OnCameraSubjectChanged(cameraSubject)
	end

	self:ActivateCameraController()
end

function CameraModule:OnCameraTypeChanged(newCameraType: Enum.CameraType)
	if newCameraType == Enum.CameraType.Scriptable then
		if UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter then
			CameraUtils.restoreMouseBehavior()
		end
	end

	-- Forward the change to ActivateCameraController to handle
	self:ActivateCameraController()
end

-- Note: Called whenever workspace.CurrentCamera changes, but also on initialization of this script
function CameraModule:OnCurrentCameraChanged()
	local currentCamera = game.Workspace.CurrentCamera
	if not currentCamera then return end

	if self.cameraSubjectChangedConn then
		self.cameraSubjectChangedConn:Disconnect()
	end

	if self.cameraTypeChangedConn then
		self.cameraTypeChangedConn:Disconnect()
	end

	self.cameraSubjectChangedConn = currentCamera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
		self:OnCameraSubjectChanged()
	end)

	self.cameraTypeChangedConn = currentCamera:GetPropertyChangedSignal("CameraType"):Connect(function()
		self:OnCameraTypeChanged(currentCamera.CameraType)
	end)

	self:OnCameraSubjectChanged()
	self:OnCameraTypeChanged(currentCamera.CameraType)
end

function CameraModule:OnLocalPlayerCameraPropertyChanged(propertyName: string)
	if propertyName == "CameraMode" then
		-- CameraMode is only used to turn on/off forcing the player into first person view. The
		-- Note: The case "Classic" is used for all other views and does not correspond only to the ClassicCamera module
		if Players.LocalPlayer.CameraMode == Enum.CameraMode.LockFirstPerson then
			-- Locked in first person, use ClassicCamera which supports this
			if not self.activeCameraController or self.activeCameraController:GetModuleName() ~= "ClassicCamera" then
				self:ActivateCameraController()
			end

			if self.activeCameraController then
				self.activeCameraController:UpdateForDistancePropertyChange()
			end
		elseif Players.LocalPlayer.CameraMode == Enum.CameraMode.Classic then
			-- Not locked in first person view
			self:ActivateCameraController()
		else
			warn("Unhandled value for property player.CameraMode: ",Players.LocalPlayer.CameraMode)
		end

	elseif propertyName == "DevComputerCameraMode" or
		   propertyName == "DevTouchCameraMode" then
		self:ActivateCameraController()

	elseif propertyName == "DevCameraOcclusionMode" then
		self:ActivateOcclusionModule(Players.LocalPlayer.DevCameraOcclusionMode)

	elseif propertyName == "CameraMinZoomDistance" or propertyName == "CameraMaxZoomDistance" then
		if self.activeCameraController then
			self.activeCameraController:UpdateForDistancePropertyChange()
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

function CameraModule:OnUserGameSettingsPropertyChanged(propertyName: string)
	if propertyName == "ComputerCameraMovementMode" or (FFlagUserCheckTouchControlMode and propertyName == "TouchCameraMovementMode") then
		self:ActivateCameraController()
	end
end

function CameraModule:OnPreferredInputChanged()
	self:ActivateCameraController()
end

--[[
	Main RenderStep Update. The camera controller and occlusion module both have opportunities
	to set and modify (respectively) the CFrame and Focus before it is set once on CurrentCamera.
	The camera and occlusion modules should only return CFrames, not set the CFrame property of
	CurrentCamera directly.
--]]
function CameraModule:Update(dt)
	if self.activeCameraController then
		self.activeCameraController:UpdateMouseBehavior()

		local newCameraCFrame, newCameraFocus = self.activeCameraController:Update(dt)

		if self.activeOcclusionModule then
			newCameraCFrame, newCameraFocus = self.activeOcclusionModule:Update(dt, newCameraCFrame, newCameraFocus)
		end

		-- Here is where the new CFrame and Focus are set for this render frame
		local currentCamera = game.Workspace.CurrentCamera :: Camera
		currentCamera.CFrame = newCameraCFrame
		currentCamera.Focus = newCameraFocus

		-- Update to character local transparency as needed based on camera-to-subject distance
		if self.activeTransparencyController then
			self.activeTransparencyController:Update(dt)
		end

		if CameraInput.getInputEnabled() then
			CameraInput.resetInputForFrameEnd()
		end
	end
end

function CameraModule:OnCharacterAdded(char: Model, player: Player)
	if self.activeOcclusionModule then
		self.activeOcclusionModule:CharacterAdded(char, player)
	end
end

function CameraModule:OnCharacterRemoving(char, player)
	if self.activeOcclusionModule then
		self.activeOcclusionModule:CharacterRemoving(char, player)
	end
end

function CameraModule:OnPlayerAdded(player: Player)
	if FFlagUserPlayerConnectionMemoryLeak then
		-- Return connectionUtil to non optional if FFlagUserPlayerConnectionMemoryLeak is removed
		if self.connectionUtil then
			self.connectionUtil:trackConnection(`{player.UserId}CharacterAdded`, player.CharacterAdded:Connect(function(char)
				self:OnCharacterAdded(char, player)
			end))
			self.connectionUtil:trackConnection(`{player.UserId}CharacterRemoving`, player.CharacterRemoving:Connect(function(char)
				self:OnCharacterRemoving(char, player)
			end))
		end
	else
		player.CharacterAdded:Connect(function(char)
			self:OnCharacterAdded(char, player)
		end)
		player.CharacterRemoving:Connect(function(char)
			self:OnCharacterRemoving(char, player)
		end)
	end
end

function CameraModule:OnPlayerRemoving(player: Player)
	-- Return connectionUtil to non optional if FFlagUserPlayerConnectionMemoryLeak is removed
	if self.connectionUtil then
		self.connectionUtil:disconnect(`{player.UserId}CharacterAdded`)
		self.connectionUtil:disconnect(`{player.UserId}CharacterRemoving`)
	end
end

function CameraModule:OnMouseLockToggled()
	if self.activeMouseLockController then
		local mouseLocked = self.activeMouseLockController:GetIsMouseLocked()
		local mouseLockOffset = self.activeMouseLockController:GetMouseLockOffset()
		if self.activeCameraController then
			self.activeCameraController:SetIsMouseLocked(mouseLocked)
			self.activeCameraController:SetMouseLockOffset(mouseLockOffset)
		end
	end
end

CameraModule.new()

return {}
