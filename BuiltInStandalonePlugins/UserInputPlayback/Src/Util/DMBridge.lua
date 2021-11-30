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
}

local plugin: Plugin = nil
function bridge.setPluginObject(pluginObj: Plugin)
	assert(pluginObj, "Plugin object must exist")
	plugin = pluginObj
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
function bridge.connectToStopPlaybackButtonClicked(func)
	plugin:OnInvoke(keys.StopPlaybackButtonClicked, func)
end

function bridge.onPlayClientSessionStarted()
	-- Connect to emulator events now, since plugin is already open
	connectToStudioDeviceEmulatorServiceEvents()
	plugin:Invoke(keys.RequestDevicePropertiesUpdate)
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

return bridge