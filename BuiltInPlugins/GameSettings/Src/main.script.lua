if not plugin then
	return
end

-- Fast flags
local FFlagStudioUseLuaGameSettingsDialog = settings():GetFFlag("StudioUseLuaGameSettingsDialog")
local FFlagStudioLuaGameSettingsDialog2 = settings():GetFFlag("StudioLuaGameSettingsDialog2")

if not FFlagStudioUseLuaGameSettingsDialog then
	return
end

--Turn this on when debugging the store and actions
local LOG_STORE_STATE_AND_EVENTS = false

local RunService = game:GetService("RunService")

local Plugin = script.Parent.Parent
local Roact = require(Plugin.Roact)
local Rodux = require(Plugin.Rodux)
local Cryo = require(Plugin.Cryo)
local Promise = require(Plugin.Promise)

local MainView = require(Plugin.Src.Components.MainView)
local SimpleDialog = require(Plugin.Src.Components.Dialog.SimpleDialog)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local SettingsImpl = require(Plugin.Src.Networking.SettingsImpl)
local ExternalServicesWrapper = require(Plugin.Src.Components.ExternalServicesWrapper)
local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)
local Theme = require(Plugin.Src.Util.Theme)

local CurrentStatus = require(Plugin.Src.Util.CurrentStatus)

local SetCurrentStatus = require(Plugin.Src.Actions.SetCurrentStatus)
local DiscardChanges = require(Plugin.Src.Actions.DiscardChanges)
local DiscardErrors = require(Plugin.Src.Actions.DiscardErrors)
local SetCurrentSettings = require(Plugin.Src.Actions.SetCurrentSettings)
local LoadAllSettings = require(Plugin.Src.Thunks.LoadAllSettings)

local isEmpty = require(Plugin.Src.Util.isEmpty)

local gameSettingsHandle
local pluginGui

local middlewares = {Rodux.thunkMiddleware}
if LOG_STORE_STATE_AND_EVENTS then
	table.insert(middlewares, Rodux.loggerMiddleware)
end

local settingsStore = Rodux.Store.new(MainReducer, nil, middlewares)

local settingsImpl = SettingsImpl.new(plugin:GetStudioUserId())

--Add all settings pages in order
local settingsPages
if FFlagStudioLuaGameSettingsDialog2 then
	settingsPages = {
		"Basic Info",
		"Avatar",
		"Options",
	}
else
	settingsPages = {
		"Avatar",
		"Options",
	}
end

local function showDialog(type, props)
	return Promise.new(function(resolve, reject)
		spawn(function()
			local dialogHandle
			local dialog = plugin:CreateQWidgetPluginGui(props.Title, {
				Size = props.Size or Vector2.new(473, 197),
				InitialEnabled = true,
				Modal = true,
			})
			dialog.Title = props.Title
			local dialogContents = Roact.createElement(ThemeProvider, {
				theme = FFlagStudioLuaGameSettingsDialog2 and Theme.new() or Theme.DEPRECATED_constantColors(),
			}, {
				Content = Roact.createElement(type, Cryo.Dictionary.join(props, {
					OnResult = function(result)
						Roact.unmount(dialogHandle)
						dialog:Destroy()
						if result then
							resolve()
						else
							reject()
						end
					end
				})),
			})
			dialog:GetPropertyChangedSignal("Enabled"):connect(function()
				Roact.unmount(dialogHandle)
				dialog:Destroy()
				reject()
			end)
			dialogHandle = Roact.mount(dialogContents, dialog)
		end)
	end)
end

--Closes and unmounts the Game Settings popup window
local function closeGameSettings(userPressedSave)
	local state = settingsStore:getState()
	local currentStatus = state.Status
	if currentStatus ~= CurrentStatus.Closed then
		if currentStatus == CurrentStatus.Error and userPressedSave then
			settingsStore:dispatch(SetCurrentStatus(CurrentStatus.Open))
		else
			local changed = state.Settings.Changed
			local hasUnsavedChanges = changed and not isEmpty(changed)
			if hasUnsavedChanges and not userPressedSave then
				--Prompt if the user actually wanted to save using a Modal
				settingsStore:dispatch(SetCurrentStatus(CurrentStatus.Closed))

				local dialogProps = {
					Size = Vector2.new(343, 145),
					Title = "Discard Changes",
					Header = "Would you like to discard all changes?",
					Buttons = {"No", "Yes"},
				}
				local didDiscardAllChanges = showDialog(SimpleDialog, dialogProps):await()

				if didDiscardAllChanges then
					--Exit game settings and delete all changes without saving
					settingsStore:dispatch(DiscardChanges())
					pluginGui.Enabled = false
					Roact.unmount(gameSettingsHandle)
				else
					--Return to game settings window without modifying state,
					--giving the user another chance to modify or save.
					settingsStore:dispatch(SetCurrentStatus(CurrentStatus.Open))
					if not pluginGui.Enabled then
						pluginGui.Enabled = true
					end
				end
			else
				settingsStore:dispatch(SetCurrentStatus(CurrentStatus.Closed))
				pluginGui.Enabled = false
				Roact.unmount(gameSettingsHandle)
			end
		end
	end
end

local function makePluginGui()
	pluginGui = plugin:CreateQWidgetPluginGui("Game Settings", {
		Size = Vector2.new(960, 600),
		MinSize = Vector2.new(960, 600),
		Resizable = true,
		Modal = true,
		InitialEnabled = false,
	})
	pluginGui.Name = plugin.Name
	pluginGui.Title = plugin.Name
	pluginGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

	pluginGui:GetPropertyChangedSignal("Enabled"):connect(function()
		-- Handle if user clicked the X button to close the window
		if not pluginGui.Enabled then
			local state = settingsStore:getState()
			local currentStatus = state.Status
			if currentStatus == CurrentStatus.Open then
				closeGameSettings(false)
			end
		end
	end)
end

--Initializes and populates the Game Settings popup window
local function openGameSettings()
	if settingsStore then
		local state = settingsStore:getState()
		local currentStatus = state.Status
		if currentStatus ~= CurrentStatus.Closed then
			return
		end
	end

	local menuEntries = {}
	for i, entry in ipairs(settingsPages) do
		menuEntries[i] = {
			Name = entry,
		}
	end

	local servicesProvider = Roact.createElement(ExternalServicesWrapper, {
		impl = settingsImpl,
		store = settingsStore,
		showDialog = showDialog,
		theme = FFlagStudioLuaGameSettingsDialog2 and Theme.new() or Theme.DEPRECATED_constantColors(),
	}, {
		mainView = Roact.createElement(MainView, {
			MenuEntries = menuEntries,
			OnClose = closeGameSettings,
		}),
	})

	settingsStore:dispatch(SetCurrentSettings({}))
	settingsStore:dispatch(DiscardChanges())
	settingsStore:dispatch(DiscardErrors())
	settingsStore:dispatch(LoadAllSettings(settingsImpl))

	gameSettingsHandle = Roact.mount(servicesProvider, pluginGui)
	pluginGui.Enabled = true
end

--Binds a toolbar button to the Game Settings window
local function main()
	plugin.Name = "Game Settings"

	local toolbar = plugin:CreateToolbar("gameSettingsToolbar")
	local settingsButton = toolbar:CreateButton(
		"gameSettingsButton",
		"Update settings related to current game",
		"rbxasset://textures/GameSettings/ToolbarIcon.png"
	)

	-- Don't want to be able to open game settings while the game is running
	-- it is for edit mode only!
	if RunService:IsEdit() then
		makePluginGui()
		settingsButton.Enabled = true
		settingsButton.Click:connect(function()
			openGameSettings()
		end)
		settingsStore.changed:connect(function(state)
			settingsButton:SetActive(state.Status ~= CurrentStatus.Closed)
		end)
	else
		settingsButton.Enabled = false
	end
end

main()