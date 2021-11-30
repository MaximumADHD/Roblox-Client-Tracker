--[[
	Entry point for the plugin instance created in the "asset" datamodels:
	eg. Edit, Play (Client), and Play (Server).
--]]

local ok, hasInternalPermission = pcall(function()
	return game:GetService("StudioService"):HasInternalPermission()
end)

if not ok then
	hasInternalPermission = false
end

if not hasInternalPermission then
	return
end

local FFlagEnableUserInputPlaybackPlugin = game:GetFastFlag("EnableUserInputPlaybackPlugin")
if not FFlagEnableUserInputPlaybackPlugin then
	return
end

local main = script.Parent.Parent

local DebugFlags = require(main.Src.Util.DebugFlags)
if DebugFlags.RunningUnderCLI() then
	return
end

local VirtualInputManager = game:GetService("VirtualInputManager")
local StudioDeviceEmulatorService = game:GetService("StudioDeviceEmulatorService")
local HttpService = game:GetService("HttpService")

local mdiInstance = plugin.MultipleDocumentInterfaceInstance
local DMBridge = require(main.Src.Util.DMBridge)
local Types = require(main.Src.Types)
local Enums = require(main.Src.Util.Enums)
local Cryo = require(main.Packages.Cryo)

DMBridge.setPluginObject(plugin)

local recordingSessionProperties: Types.RecordingSessionProperties

local function setInputTypesToIgnore(ignoreState)
	local groups = {
		mouseButton = {
			Enum.UserInputType.MouseButton1,
			Enum.UserInputType.MouseButton2,
			Enum.UserInputType.MouseButton3,
		},
		mouseMove = { Enum.UserInputType.MouseMovement, },
		touch = { Enum.UserInputType.Touch, },
		keyboard = { Enum.UserInputType.Keyboard, },
		gamepad = {
			Enum.UserInputType.Gamepad1,
			Enum.UserInputType.Gamepad2,
			Enum.UserInputType.Gamepad3,
			Enum.UserInputType.Gamepad4,
			Enum.UserInputType.Gamepad5,
			Enum.UserInputType.Gamepad6,
			Enum.UserInputType.Gamepad7,
			Enum.UserInputType.Gamepad8,
		},
	}
	
	local ignoreList = {}
	for type, allowed in pairs(ignoreState) do
		if not allowed then
			ignoreList = Cryo.List.join(ignoreList, groups[type])
		end
	end

	VirtualInputManager:SetInputTypesToIgnore(ignoreList)
end

local function startPlayback()
end

local function stopPlayback()
end

local function startRecording()
	local state: Types.PluginState? = DMBridge.getPluginState()
	assert(state == Enums.PluginState.Default or state == Enums.PluginState.ShouldStartRecording)
	assert(plugin.HostDataModelType == Enum.StudioDataModelType.PlayClient, "Correct datamodel game state type")
	local roduxState = DMBridge.getRoduxState()
	assert(roduxState, "Access rodux state")

	VirtualInputManager:StopRecording() -- Stop recording in case started already
	
	DMBridge.setPluginState(Enums.PluginState.Disabled)

	-- Wait for game to load assets.
	if not game:IsLoaded() then
        game.Loaded:Wait()
    end

	while game.Players.LocalPlayer == nil do
        game.Players.PlayerAdded:Wait()
    end

	DMBridge.setPluginState(Enums.PluginState.Recording)

	local vec2Resolution = game.workspace.CurrentCamera.ViewportSize
	assert(vec2Resolution, "Get viewport resolution")
	local currentEmulationDevice = StudioDeviceEmulatorService:GetCurrentDeviceId()
	assert(currentEmulationDevice)
	local currentOrientation = StudioDeviceEmulatorService:GetCurrentOrientation().Name
	assert(currentOrientation)

	recordingSessionProperties = {
		resolution = {math.floor(vec2Resolution.x), math.floor(vec2Resolution.y)},
		deviceId = currentEmulationDevice,
		orientation = currentOrientation,
	}
	
	setInputTypesToIgnore({
		mouseMove = roduxState.recordTabFilter.mouseMove,
		mouseButton = roduxState.recordTabFilter.mouseClick,
		keyboard = roduxState.recordTabFilter.keyboard,
		gamepad = roduxState.recordTabFilter.gamepad,
		touch = roduxState.recordTabFilter.touch
	})

	VirtualInputManager:StartRecording()
end

local function stopRecording()
	assert(DMBridge.getPluginState() == Enums.PluginState.Recording)

	local recCompleteCon = nil
	recCompleteCon = VirtualInputManager.RecordingCompleted:Connect(function(dataStr: string)
		local recordingObject = HttpService:JSONDecode(dataStr)
		recordingObject.metaData = recordingSessionProperties
		if not recordingObject.additionalLuaState then
			-- additionalLuaState must be defined for proper parsing by VirtualInputManager
			recordingObject.additionalLuaState = {"dummy state"}
		end

		DMBridge.saveRecordingDataToDM(recordingObject)
		DMBridge.setPluginState(Enums.PluginState.Default)

		if recCompleteCon then
			recCompleteCon:Disconnect()
		end
	end)

	VirtualInputManager:StopRecording()
end

local function startRecordingOrPlayingIfRequested()
	local pluginState = DMBridge.getPluginState()
	-- Handle waiting to start recording/playback on play start:
	if pluginState == Enums.PluginState.ShouldStartRecording then
		startRecording()
	elseif pluginState == Enums.PluginState.ShouldStartPlayback then
		startPlayback()
	end
end

local function setupPlayClientDMEventListeners()
	DMBridge.setupPlayClientDMEventListeners()
	DMBridge.connectToStartRecordButtonClicked(startRecording)
	DMBridge.connectToStopRecordButtonClicked(stopRecording)

	local focusedDMSession = mdiInstance.FocusedDataModelSession
	focusedDMSession.CurrentDataModelTypeAboutToChange:Connect(function(targetGst)
		if plugin.HostDataModelTypeIsCurrent and targetGst == Enum.StudioDataModelType.Edit then
			DMBridge.setIsPlayMode(false)

			local pluginState = DMBridge.getPluginState()
			if pluginState == Enums.PluginState.Recording then
				stopRecording()
			elseif pluginState == Enums.PluginState.Playing then
				stopPlayback()
			end
		end
	end)
end

local inspector
local function initializeDataModel()
	local Framework = require(main.Packages.Framework)
	inspector = Framework.DeveloperTools.forPlugin(main.Name, plugin)
	inspector:addPluginRouter(plugin)

	if plugin.HostDataModelType == Enum.StudioDataModelType.Edit then
		DMBridge.setupEditDMEventListeners()

	elseif plugin.HostDataModelType == Enum.StudioDataModelType.PlayClient then
		if DMBridge.getPluginEnabled() then
			DMBridge.setIsPlayMode(true)
			setupPlayClientDMEventListeners()
			DMBridge.onPlayClientSessionStarted()
			startRecordingOrPlayingIfRequested()
		end
	end
end

local function init()
	local session = mdiInstance.FocusedDataModelSession

	session.CurrentDataModelTypeAboutToChange:Connect(function()
		if inspector then
			inspector:destroy()
			inspector = nil
		end
	end)

	initializeDataModel()
end

init()
