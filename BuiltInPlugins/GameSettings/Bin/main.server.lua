if not plugin then
	return
end
-- Define Fast flags
require(script.Parent.defineLuaFlags)

-- Fast flags
local OverrideLocaleId = settings():GetFVariable("StudioForceLocale")
local DFFlagDeveloperSubscriptionsEnabled = settings():GetFFlag("DeveloperSubscriptionsEnabled")
local FFlagGameSettingsPreventClosingDialogWhileSaveInProgress = game:DefineFastFlag("GameSettingsPreventClosingDialogWhileSaveInProgress", false)
local FFlagStudioLocalizationInGameSettingsEnabled = game:GetFastFlag("StudioLocalizationInGameSettingsEnabled")

--Turn this on when debugging the store and actions
local LOG_STORE_STATE_AND_EVENTS = false

local RunService = game:GetService("RunService")
local LocalizationService = game:GetService("LocalizationService")
local StudioService = game:GetService("StudioService")

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
local MouseProvider = require(Plugin.Src.Providers.MouseProvider)
local Localization = require(Plugin.Src.Localization.Localization)
local LocalizationProvider = require(Plugin.Src.Providers.LocalizationProvider)

local CurrentStatus = require(Plugin.Src.Util.CurrentStatus)

local SetCurrentStatus = require(Plugin.Src.Actions.SetCurrentStatus)
local DiscardChanges = require(Plugin.Src.Actions.DiscardChanges)
local DiscardErrors = require(Plugin.Src.Actions.DiscardErrors)
local SetCurrentSettings = require(Plugin.Src.Actions.SetCurrentSettings)
local LoadAllSettings = require(Plugin.Src.Thunks.LoadAllSettings)

local isEmpty = require(Plugin.Src.Util.isEmpty)
local Analytics = require(Plugin.Src.Util.Analytics)

local gameSettingsHandle
local pluginGui
local openedTimestamp

local middlewares = {Rodux.thunkMiddleware}
if LOG_STORE_STATE_AND_EVENTS then
	table.insert(middlewares, Rodux.loggerMiddleware)
end

local settingsStore = Rodux.Store.new(MainReducer, nil, middlewares)
local lastObservedStatus = CurrentStatus.Open

local settingsImpl = SettingsImpl.new(plugin:GetStudioUserId())

--Add all settings pages in order
local settingsPages = {
	"Basic Info",
	"Access Permissions",
	"Avatar",
	"Options",
}

if DFFlagDeveloperSubscriptionsEnabled then
	table.insert(settingsPages, "Developer Subscriptions")
end

table.insert(settingsPages, "World")

if FFlagStudioLocalizationInGameSettingsEnabled then
	table.insert(settingsPages, "Localization")
end

local localizationTable = Plugin.Src.Localization.GameSettingsTranslationReferenceTable
local localization = Localization.new({
	localizationTable = localizationTable,
	getLocale = function()
		if #OverrideLocaleId > 0 then
			return OverrideLocaleId
		else
			return StudioService["StudioLocaleId"]
		end
	end,
	localeChanged = StudioService:GetPropertyChangedSignal("StudioLocaleId")
})

-- Make sure that the main window elements cannot be interacted with
-- when a second dialog is open over the Game Settings widget
local function setMainWidgetInteractable(interactable)
	if pluginGui then
		for _, instance in pairs(pluginGui:GetDescendants()) do
			if instance:IsA("GuiObject") then
				instance.Active = interactable
			end
		end
	end
end

local function showDialog(type, props)
	return Promise.new(function(resolve, reject)
		spawn(function()
			setMainWidgetInteractable(false)
			local dialogHandle
			local dialog = plugin:CreateQWidgetPluginGui(props.Title, {
				Size = props.Size or Vector2.new(473, 197),
				Modal = true,
			})
			dialog.Enabled = true
			dialog.Title = props.Title
			local dialogContents = Roact.createElement(ExternalServicesWrapper, {
					theme = Theme.new(),
					mouse = plugin:GetMouse(),
					localization = localization,
					pluginGui = pluginGui,
					plugin = plugin,
				}, {
					Content = Roact.createElement(type, Cryo.Dictionary.join(props, {
						OnResult = function(result)
							Roact.unmount(dialogHandle)
							dialog:Destroy()
							setMainWidgetInteractable(true)
							if result then
								resolve()
							else
								reject()
							end
						end
					})),
				})

			dialog:BindToClose(function()
				Roact.unmount(dialogHandle)
				dialog:Destroy()
				setMainWidgetInteractable(true)
				reject()
			end)

			dialogHandle = Roact.mount(dialogContents, dialog)
		end)
	end)
end

local function closeAnalytics(userPressedSave)
	if openedTimestamp then
		local timeOpen = tick() - openedTimestamp
		openedTimestamp = nil
		Analytics.onCloseEvent(userPressedSave and "Save" or "Cancel", timeOpen)
	end
end

--Closes and unmounts the Game Settings popup window
local function closeGameSettings(userPressedSave)
	local state = settingsStore:getState()
	local currentStatus = state.Status

	if FFlagGameSettingsPreventClosingDialogWhileSaveInProgress then
		if currentStatus == CurrentStatus.Working and not userPressedSave then
			return
		end
	end

	if currentStatus ~= CurrentStatus.Closed then
		if currentStatus == CurrentStatus.Error and userPressedSave then
			settingsStore:dispatch(SetCurrentStatus(CurrentStatus.Open))
		else
			local changed = state.Settings.Changed
			local hasUnsavedChanges = changed and not isEmpty(changed)
			if hasUnsavedChanges and not userPressedSave then
				--Prompt if the user actually wanted to save using a Modal
				local dialogProps = {
					Size = Vector2.new(343, 145),
					Title = localization.values.CancelDialog.Header,
					Header = localization.values.CancelDialog.Body,
					Buttons = localization.values.CancelDialog.Buttons,
				}
				local didDiscardAllChanges = showDialog(SimpleDialog, dialogProps):await()

				if didDiscardAllChanges then
					--Exit game settings and delete all changes without saving
					settingsStore:dispatch(DiscardChanges())
					settingsStore:dispatch(SetCurrentStatus(CurrentStatus.Closed))
					pluginGui.Enabled = false
					Roact.unmount(gameSettingsHandle)

					closeAnalytics(userPressedSave)
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

				closeAnalytics(userPressedSave)
			end
		end
	end
end

local function makePluginGui()
	pluginGui = plugin:CreateQWidgetPluginGui(plugin.Name, {
		Size = Vector2.new(960, 600),
		MinSize = Vector2.new(960, 600),
		Resizable = true,
		Modal = true,
		InitialEnabled = false,
	})
	pluginGui.Name = plugin.Name
	pluginGui.Title = plugin.Name
	pluginGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	pluginGui:BindToClose(function()
		closeGameSettings(false)
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
		settingsSaverLoader = settingsImpl,
		store = settingsStore,
		showDialog = showDialog,
		theme = Theme.new(),
		mouse = plugin:GetMouse(),
		localization = localization,
		pluginGui = pluginGui,
		plugin = plugin,
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

	Analytics.onOpenEvent(plugin:GetStudioUserId())
	openedTimestamp = tick()
end

--Binds a toolbar button to the Game Settings window
local function main()
	plugin.Name = localization.values.Plugin.Name

	local toolbar = plugin:CreateToolbar("gameSettingsToolbar")
	local settingsButton = toolbar:CreateButton(
		"gameSettingsButton",
		localization.values.Plugin.Description,
		"rbxasset://textures/GameSettings/ToolbarIcon.png"
	)

	-- Don't want to be able to open game settings while the game is running
	-- it is for edit mode only!
	if RunService:IsEdit() then
		makePluginGui()
		settingsButton.ClickableWhenViewportHidden = true
		settingsButton.Enabled = true
		settingsButton.Click:connect(function()
			openGameSettings()
		end)
		settingsStore.changed:connect(function(state)
			if state.Status ~= lastObservedStatus then
				settingsButton:SetActive(state.Status ~= CurrentStatus.Closed)
				setMainWidgetInteractable(state.Status ~= CurrentStatus.Working)
				lastObservedStatus = state.Status
			end
		end)
	else
		settingsButton.Enabled = false
	end
end

main()
