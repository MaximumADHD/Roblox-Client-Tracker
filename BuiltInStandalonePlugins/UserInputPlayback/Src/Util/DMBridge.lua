local Plugin = script.Parent.Parent.Parent
local Types = require(Plugin.Src.Types)
local Constants = require(Plugin.Src.Util.Constants)

local StudioDeviceEmulatorService = game:GetService("StudioDeviceEmulatorService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")

local bridge = {}

local keys: {[string]: string} = {
	PluginEnabled = "PluginEnabled",
	RequestDevicePropertiesUpdate = "RequestDevicePropertiesUpdate",
	ConnectToStudioDeviceEmulatorServiceEvents = "ConnectToStudioDeviceEmulatorServiceEvents",
	DisconnectStudioDeviceEmulatorServiceEvents = "DisconnectStudioDeviceEmulatorServiceEvents",
	EmulationDeviceIdChanged = "EmulationDeviceIdChanged",
	EmulationDeviceOrientationChanged = "EmulationDeviceOrientationChanged",
	ViewportResolutionChanged = "ViewportResolutionChanged",
	IsPlayMode = "IsPlayMode",
	StartRecordingButtonClicked = "StartRecordingButtonClicked",
	StopRecordingButtonClicked = "StopRecordingButtonClicked",
	StartPlaybackButtonClicked = "StartPlaybackButtonClicked",
	StopPlaybackButtonClicked = "StopPlaybackButtonClicked",
	SetPluginState = "SetPluginState",
	RoduxState = "RoduxState",
	SaveRecordingDataToDM = "SaveRecordingDataToDM",
	OpenSaveRecordingDialog = "OpenSaveRecordingDialog",
	SetSavedRecordingName = "SetSavedRecordingName",
	SearchForUserInputRecordings = "SearchForUserInputRecordings",
	SetPlayableRecordings = "SetPlayableRecordings",
	LoadRecordingWithName = "LoadRecordingWithName",
	CurrentPlaybackRecordingDataStr = "CurrentPlaybackRecordingDataStr",
	CurrentPlaybackRecordingDataObj = "CurrentPlaybackRecordingDataObj",
	PlaybackInfoChanged = "PlaybackInfoChanged",
}

local plugin: Plugin = nil
function bridge.setPluginObject(pluginObj: Plugin)
	assert(pluginObj, "Plugin object must exist")
	plugin = pluginObj
end

type Localization = { getText: (Localization, string, string, {[string]: any}?) -> string }
local localization: Localization = nil
function bridge.setLocalizationObject(loc: Localization)
	assert(loc, "Localization object must exist")
	localization = loc
end

function bridge.setIsPlayMode(value: boolean)
	plugin:SetItem(keys.IsPlayMode, value)
end

function bridge.getIsPlayMode(): boolean
	return plugin:GetItem(keys.IsPlayMode, false)
end

function bridge.setPluginEnabled(enabled: boolean)
	plugin:SetItem(keys.PluginEnabled, enabled)
end

function bridge.getPluginEnabled(): boolean
	return plugin:GetItem(keys.PluginEnabled, false)
end

function bridge.setRoduxState(value: any)
	plugin:SetItem(keys.RoduxState, value)
end

function bridge.getRoduxState(): any
	return plugin:GetItem(keys.RoduxState, nil)
end

function bridge.setPluginState(state: Types.PluginState)
	plugin:Invoke(keys.SetPluginState, state)
end

function bridge.getPluginState(): Types.PluginState?
	local state = bridge.getRoduxState()
	if state == nil then
		return nil
	end

	return state.common.pluginState
end

function bridge.setPluginStateRoduxActionHandler(action: any)
	plugin:OnInvoke(keys.SetPluginState, action)
end

-- Saving recording data:
function bridge.saveRecordingDataToDM(recordingObject)
	plugin:Invoke(keys.SaveRecordingDataToDM, recordingObject)
end

local function getRecordingsFolder()
	local recordingsFolder = ReplicatedStorage:FindFirstChild("User Input Recordings")
	if recordingsFolder == nil then
		recordingsFolder = Instance.new("Folder")
		recordingsFolder.Name = Constants.RecordingsFolderName
		recordingsFolder.Parent = ReplicatedStorage
	end
	assert(recordingsFolder)
	assert(recordingsFolder:IsA("Folder"), "ReplicatedStorage.User Input Recordings must be a folder!")
	return recordingsFolder
end

local saveRecordingDataCoroutine = nil
local function saveRecordingData(recordingData: any)
	-- recordingData should be in table form
	-- This function should be called in the Edit DM only
	assert(plugin.HostDataModelType == Enum.StudioDataModelType.Edit)
	assert(recordingData, "Must have recording data")

	local dataString = HttpService:JSONEncode(recordingData)
	plugin:Invoke(keys.OpenSaveRecordingDialog, "EnterNameForRecordingMessage", {string.len(dataString)})

	local fileName = coroutine.yield()

	if fileName then
		local stringValue = Instance.new("StringValue")
		stringValue.Value = dataString
		stringValue.Name = tostring(os.date("%x %X"))

		stringValue.Parent = getRecordingsFolder()

		if string.len(fileName) > 0 then
			stringValue.Name = fileName
		end
	end
end

function bridge.onSaveRecordingDialogCancel()
	plugin:Invoke(keys.SetSavedRecordingName, nil)
end

function bridge.onSaveRecordingDialogSave(name: string)
	plugin:Invoke(keys.SetSavedRecordingName, name)
end

-- Edit DM:
local function loadRecordingWithName(name: string)
	local recordingsFolder = getRecordingsFolder()
	local stringValue = recordingsFolder:FindFirstChild(name, false)
	if not stringValue then
		error(localization:getText("AssetDM", "CouldNotFindRecordingMessage", {name = name}))
	end
	assert(stringValue:IsA("StringValue"))
	local value = stringValue.Value
	assert(value)

	plugin:Invoke(keys.PlaybackInfoChanged, nil, 0, 0)
	plugin:SetItem(keys.CurrentPlaybackRecordingDataObj, nil)
	plugin:SetItem(keys.CurrentPlaybackRecordingDataStr, nil)

	local recordingObject: Types.RecordingObject = HttpService:JSONDecode(value)
	local metadata: Types.RecordingMetadata = recordingObject.additionalMetadata

	-- Validate recording metadata
	assert(metadata, "metaData key not found")
	local resolution = metadata.resolution
	assert(resolution, "resolution key not found")
	assert(#resolution == 2, "resolution key invalid")
	local deviceId = metadata.deviceId
	assert(deviceId, "deviceId key not found")
	local orientation = metadata.orientation
	assert(orientation, "orientation key not found")

	-- Validate recording object
	local events: {any} = recordingObject.events
	assert(events, "events not found")
	local durationMs: number = recordingObject.duration
	assert(durationMs, "duration not found")
	assert(durationMs >= 0, "recording duration cannot be negative")

	local numEvents = #events
	local durationSec = durationMs / 1000

	plugin:Invoke(keys.PlaybackInfoChanged, metadata, durationSec, numEvents)
	plugin:SetItem(keys.CurrentPlaybackRecordingDataObj, recordingObject)
	plugin:SetItem(keys.CurrentPlaybackRecordingDataStr, value)
end

local function searchForUserInputRecordingsInEditDM()
	local recordingNames = {}
	local recordingsFolder = getRecordingsFolder()
	local children = recordingsFolder:GetChildren()
	for _, child in ipairs(children) do
		if child:IsA("StringValue") then
			table.insert(recordingNames, child.Name)
		end
	end
	
	plugin:Invoke(keys.SetPlayableRecordings, recordingNames)
end

local studioDeviceEmulatorServiceConnections = {}
local function connectToStudioDeviceEmulatorServiceEvents()
	if StudioDeviceEmulatorService then
		table.insert(studioDeviceEmulatorServiceConnections,
			StudioDeviceEmulatorService.CurrentDeviceIdChanged:Connect(function()
				plugin:Invoke(keys.EmulationDeviceIdChanged, StudioDeviceEmulatorService:GetCurrentDeviceId())
			end)
		)
		table.insert(studioDeviceEmulatorServiceConnections,
			StudioDeviceEmulatorService.OrientationChanged:Connect(function()
				plugin:Invoke(keys.EmulationDeviceOrientationChanged, StudioDeviceEmulatorService:GetCurrentOrientation().Name)
			end)
		)
	end
	table.insert(studioDeviceEmulatorServiceConnections,
		workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
			plugin:Invoke(keys.ViewportResolutionChanged, workspace.CurrentCamera.ViewportSize)
		end)
	)
end

local function disconnectStudioDeviceEmulatorServiceEvents()
	for _, con in ipairs(studioDeviceEmulatorServiceConnections) do
		con:Disconnect()
	end
	studioDeviceEmulatorServiceConnections = {}
end

local didSetupEditDMListenersForThisDM = false
function bridge.setupEditDMEventListeners()
	assert(not didSetupEditDMListenersForThisDM, "Should only setup once per DM")
	didSetupEditDMListenersForThisDM = true
	plugin:OnInvoke(keys.RequestDevicePropertiesUpdate, function()
		if StudioDeviceEmulatorService then
			plugin:Invoke(keys.EmulationDeviceIdChanged, StudioDeviceEmulatorService:GetCurrentDeviceId())
			plugin:Invoke(keys.EmulationDeviceOrientationChanged, StudioDeviceEmulatorService:GetCurrentOrientation().Name)
			plugin:Invoke(keys.ViewportResolutionChanged, workspace.CurrentCamera.ViewportSize)
		end
	end)

	plugin:OnInvoke(keys.ConnectToStudioDeviceEmulatorServiceEvents,
		connectToStudioDeviceEmulatorServiceEvents)
	plugin:OnInvoke(keys.DisconnectStudioDeviceEmulatorServiceEvents,
		disconnectStudioDeviceEmulatorServiceEvents)
	plugin:OnInvoke(keys.SaveRecordingDataToDM, function(recordingData)
		saveRecordingDataCoroutine = coroutine.create(saveRecordingData)
		coroutine.resume(saveRecordingDataCoroutine, recordingData)
	end)
	plugin:OnInvoke(keys.SetSavedRecordingName, function(name)
		coroutine.resume(saveRecordingDataCoroutine, name)
	end)
	plugin:OnInvoke(keys.SearchForUserInputRecordings, searchForUserInputRecordingsInEditDM)
	plugin:OnInvoke(keys.LoadRecordingWithName, loadRecordingWithName)
end

-- Play DM:
local didSetupPlayDMListenersForThisDM = false
function bridge.setupPlayClientDMEventListeners()
	assert(not didSetupPlayDMListenersForThisDM, "Should only setup once per DM")
	didSetupPlayDMListenersForThisDM = true

	plugin:OnInvoke(keys.ConnectToStudioDeviceEmulatorServiceEvents,
		connectToStudioDeviceEmulatorServiceEvents)
	plugin:OnInvoke(keys.DisconnectStudioDeviceEmulatorServiceEvents,
		disconnectStudioDeviceEmulatorServiceEvents)
end

function bridge.connectToStartRecordButtonClicked(func)
	plugin:OnInvoke(keys.StartRecordingButtonClicked, func)
end

function bridge.onStartRecordingButtonClicked()
	plugin:Invoke(keys.StartRecordingButtonClicked)
end

function bridge.connectToStopRecordButtonClicked(func)
	plugin:OnInvoke(keys.StopRecordingButtonClicked, func)
end

function bridge.onStopRecordingButtonClicked()
	plugin:Invoke(keys.StopRecordingButtonClicked)
end

function bridge.connectToStartPlaybackButtonClicked(func)
	plugin:OnInvoke(keys.StartPlaybackButtonClicked, func)
end

function bridge.onStartPlaybackButtonClicked()
	plugin:Invoke(keys.StartPlaybackButtonClicked)
end

function bridge.connectToStopPlaybackButtonClicked(func)
	plugin:OnInvoke(keys.StopPlaybackButtonClicked, func)
end

function bridge.onStopPlaybackButtonClicked()
	plugin:Invoke(keys.StopPlaybackButtonClicked)
end

function bridge.onPlayClientSessionStarted()
	-- Connect to emulator events now, since plugin is already open
	connectToStudioDeviceEmulatorServiceEvents()
	plugin:Invoke(keys.RequestDevicePropertiesUpdate)
end

function bridge.getCurrentPlaybackRecordingDataStr(): string?
	return plugin:GetItem(keys.CurrentPlaybackRecordingDataStr, nil)
end

function bridge.getCurrentPlaybackRecordingDataObj(): Types.RecordingObject?
	return plugin:GetItem(keys.CurrentPlaybackRecordingDataObj, nil)
end

-- Record Tab:
local recordTabConnections: {MemStorageConnection} = {}
export type RecordTabActionsType = {
	SetEmulationDeviceId: any,
	SetEmulationDeviceOrientation: any,
	SetCurrentScreenSize: any,
	SetSaveRecordingDialogVisible: any,
}
function bridge.connectRecordTabEventListenersWithActions(actionsDict: RecordTabActionsType)
	table.insert(recordTabConnections, plugin:OnInvoke(keys.EmulationDeviceIdChanged, function(value: string)
		actionsDict.SetEmulationDeviceId(value)
	end)::MemStorageConnection)
	table.insert(recordTabConnections, plugin:OnInvoke(keys.EmulationDeviceOrientationChanged, function(value: Enum.ScreenOrientation)
		actionsDict.SetEmulationDeviceOrientation(tostring(value))
	end)::MemStorageConnection)
	table.insert(recordTabConnections, plugin:OnInvoke(keys.ViewportResolutionChanged, function(value: Vector2)
		actionsDict.SetCurrentScreenSize(value)
	end)::MemStorageConnection)
	table.insert(recordTabConnections, plugin:OnInvoke(keys.OpenSaveRecordingDialog, function(messageKey: string, locArgs)
		actionsDict.SetSaveRecordingDialogVisible(messageKey, locArgs)
	end)::MemStorageConnection)
end

function bridge.disconnectRecordTabEventListeners()
	for _, conn in ipairs(recordTabConnections) do
		conn:Disconnect()
	end
	recordTabConnections = {}
end

function bridge.onRecordTabShown()
	plugin:Invoke(keys.RequestDevicePropertiesUpdate)
	plugin:Invoke(keys.ConnectToStudioDeviceEmulatorServiceEvents)
end

function bridge.onRecordTabHidden()
	plugin:Invoke(keys.DisconnectStudioDeviceEmulatorServiceEvents)
end

-- Playback Tab:
local playableRecordingsCallbackConnection: MemStorageConnection? = nil
function bridge.disconnectSetPlayableRecordingsCallback()
	if playableRecordingsCallbackConnection then
		playableRecordingsCallbackConnection:Disconnect()
		playableRecordingsCallbackConnection = nil
	end
end

function bridge.connectSetPlayableRecordingsCallback(callback: ({string})->())
	bridge.disconnectSetPlayableRecordingsCallback()
	playableRecordingsCallbackConnection = plugin:OnInvoke(keys.SetPlayableRecordings, callback)::MemStorageConnection
end

function bridge.searchForUserInputRecordings()
	plugin:Invoke(keys.SearchForUserInputRecordings)
end

function bridge.loadRecordingWithName(name: string)
	plugin:Invoke(keys.LoadRecordingWithName, name)
end

local playbackInfoChangedCallbackConnection: MemStorageConnection? = nil
function bridge.connectPlaybackInfoChangedCallback(callback: (Types.RecordingMetadata?, number, number) -> ())
	playbackInfoChangedCallbackConnection = plugin:OnInvoke(keys.PlaybackInfoChanged, callback)::MemStorageConnection
end

function bridge.disconnectPlaybackInfoChangedCallback()
	if playbackInfoChangedCallbackConnection then
		playbackInfoChangedCallbackConnection:Disconnect()
		playbackInfoChangedCallbackConnection = nil
	end
end

return bridge
