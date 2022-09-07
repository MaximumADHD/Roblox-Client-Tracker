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
local Common = main.Common
local commonInit = require(Common.commonInit)
commonInit()

local DebugFlags = require(main.Src.Util.DebugFlags)
if DebugFlags.RunningUnderCLI() then
	return
end

local VirtualInputManager = game:GetService("VirtualInputManager")
local StudioDeviceEmulatorService = game:GetService("StudioDeviceEmulatorService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")

local mdiInstance = plugin.MultipleDocumentInterfaceInstance
local DMBridge = require(main.Src.Util.DMBridge)
local InputVisualizer = require(main.Src.Components.InputVisualizer)
local Types = require(main.Src.Types)
local Enums = require(main.Src.Util.Enums)
local Cryo = require(main.Packages.Cryo)
local Roact = require(main.Packages.Roact)

local Framework = require(main.Packages.Framework)
local ContextServices = Framework.ContextServices
local Plugin = ContextServices.Plugin
local MakeTheme = require(main.Src.Resources.MakeTheme)

DMBridge.setPluginObject(plugin)

local recordingSessionProperties: Types.RecordingMetadata

local FFlagUserInputPlaybackPluginShowMouseCursorAfterPlayback = game:GetFastFlag("UserInputPlaybackPluginShowMouseCursorAfterPlayback")

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

local function setStudioEmulationDevice()
	local roduxState = DMBridge.getRoduxState()
	assert(roduxState, "Access rodux state")

	if roduxState.playbackTab.shouldSetEmulationDevice then
		-- Note we only set emulation device for delayed-start playback:
		local recordingObject: Types.RecordingObject? = DMBridge.getCurrentPlaybackRecordingDataObj()
		assert(recordingObject, "Could not get recording data")

		local metadata: Types.RecordingMetadata = recordingObject.additionalMetadata

		local resolution = metadata.resolution
		local deviceId = metadata.deviceId
		local orientation = metadata.orientation
		
		if deviceId == "default" then
			StudioDeviceEmulatorService:EmulatePCDeviceWithResolution("Test Computer Device",
				Vector2.new(resolution[1], resolution[2]))
		else
			StudioDeviceEmulatorService:SetCurrentDeviceId(deviceId)
			StudioDeviceEmulatorService:SetCurrentOrientation(orientation)
		end
	end
end

local stopPlaybackConnection: RBXScriptConnection? = nil
local function disconnectStopPlaybackConnection()
	if stopPlaybackConnection then
		stopPlaybackConnection:Disconnect()
		stopPlaybackConnection = nil
	end
end

local roactHandle
local function setupInputVisualizer()
	local inputVisualizer = ContextServices.provide({
		Plugin.new(plugin),
		MakeTheme(),
	}, {
		InputVisualizer = Roact.createElement("ScreenGui", {
			DisplayOrder = 1000, -- Render on top of Core Gui menus
			Enabled = true,
		}, {
			InputVisualizer = Roact.createElement(InputVisualizer)
		}),
	})

	assert(roactHandle == nil)
	roactHandle = Roact.mount(inputVisualizer, CoreGui)
end

local function teardownInputVisualizer()
	if roactHandle then
		Roact.unmount(roactHandle)
		roactHandle = nil
	end
end

local function onPlaybackEnded()
	assert(plugin.HostDataModelType == Enum.StudioDataModelType.PlayClient, "Correct datamodel game state type")
	disconnectStopPlaybackConnection()
	assert(DMBridge.getPluginState() == Enums.PluginState.Playing)
	DMBridge.setPluginState(Enums.PluginState.Default)

	teardownInputVisualizer()

	if FFlagUserInputPlaybackPluginShowMouseCursorAfterPlayback then
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
	end
end

local function stopPlayback()
	assert(DMBridge.getPluginState() == Enums.PluginState.Playing)
	assert(plugin.HostDataModelType == Enum.StudioDataModelType.PlayClient, "Correct datamodel game state type")

	VirtualInputManager:StopPlaying()
end

local function startPlayback()
	local state: Types.PluginState? = DMBridge.getPluginState()
	assert(state == Enums.PluginState.Default or state == Enums.PluginState.ShouldStartPlayback)
	assert(plugin.HostDataModelType == Enum.StudioDataModelType.PlayClient, "Correct datamodel game state type")
	local roduxState = DMBridge.getRoduxState()
	assert(roduxState, "Access rodux state")

	local dataStr = DMBridge.getCurrentPlaybackRecordingDataStr()
	assert(dataStr, "Recording data string not found")

	DMBridge.setPluginState(Enums.PluginState.Disabled)

	setInputTypesToIgnore({
		mouseMove = roduxState.playbackTabFilter.mouseMove,
		mouseButton = roduxState.playbackTabFilter.mouseClick,
		keyboard = roduxState.playbackTabFilter.keyboard,
		gamepad = roduxState.playbackTabFilter.gamepad,
		touch = roduxState.playbackTabFilter.touch
	})

	setupInputVisualizer()

	-- Wait for game to start...
	while game.Players.LocalPlayer == nil do
		wait()
	end
	if not game:IsLoaded() then
		game.Loaded:Wait()
	end

	DMBridge.setPluginState(Enums.PluginState.Playing)

	setStudioEmulationDevice()

	disconnectStopPlaybackConnection()
	stopPlaybackConnection = VirtualInputManager.PlaybackCompleted:Connect(onPlaybackEnded)

	VirtualInputManager:StartPlayingJSON(dataStr)
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
		local recordingObject: Types.RecordingObject = HttpService:JSONDecode(dataStr)
		recordingObject.additionalMetadata = recordingSessionProperties
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
	DMBridge.connectToStartPlaybackButtonClicked(startPlayback)
	DMBridge.connectToStopPlaybackButtonClicked(stopPlayback)

	local focusedDMSession = mdiInstance.FocusedDataModelSession
	focusedDMSession.CurrentDataModelTypeAboutToChange:Connect(function(targetGst)
		if plugin.HostDataModelTypeIsCurrent and targetGst == Enum.StudioDataModelType.Edit then
			DMBridge.setIsPlayMode(false)

			local pluginState = DMBridge.getPluginState()
			if pluginState == Enums.PluginState.Recording then
				stopRecording()
			elseif pluginState == Enums.PluginState.Playing then
				stopPlayback()
			elseif pluginState == Enums.PluginState.Disabled then
				DMBridge.setPluginState(Enums.PluginState.Default)
			end
		end
	end)
end

local function setupPlayClientDM()
	DMBridge.setIsPlayMode(true)
	setupPlayClientDMEventListeners()
	DMBridge.onPlayClientSessionStarted()
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
			setupPlayClientDM()
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
