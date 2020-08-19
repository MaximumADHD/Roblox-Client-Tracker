local FFlagQ220PermissionsSettings = settings():GetFFlag("Q220PermissionsSettings")

if not plugin then
	return
end
-- Define Fast flags
require(script.Parent.defineLuaFlags)

-- Fast flags
local FFlagGameSettingsPlaceSettings = game:GetFastFlag("GameSettingsPlaceSettings")
local FFlagStudioOpenGameSettingsEvent = game:GetFastFlag("StudioOpenGameSettingsEvent")
local FFlagLocalizationPageInGameSettingsV2 = game:GetFastFlag("LocalizationPageInGameSettingsV2")

--Turn this on when debugging the store and actions
local LOG_STORE_STATE_AND_EVENTS = false

local RunService = game:GetService("RunService")
local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent
local Roact = require(Plugin.Roact)
local Rodux = require(Plugin.Rodux)
local Cryo = require(Plugin.Cryo)
local Promise = require(Plugin.Promise)

local ContextServices = require(Plugin.Framework.ContextServices)
local FrameworkUtil = require(Plugin.Framework.Util)

local MainView = require(Plugin.Src.Components.MainView)
local SimpleDialog = require(Plugin.Src.Components.Dialog.SimpleDialog)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local ExternalServicesWrapper = require(Plugin.Src.Components.ExternalServicesWrapper)
local Theme = require(Plugin.Src.Util.Theme)
local Networking = require(Plugin.Src.ContextServices.Networking)
local WorldRootPhysics = require(Plugin.Pages.WorldPage.ContextServices.WorldRootPhysics)
local GameInfoController = require(Plugin.Src.Controllers.GameInfoController)
local GameMetadataController = require(Plugin.Src.Controllers.GameMetadataController)
local GroupMetadataController = require(Plugin.Src.Controllers.GroupMetadataController)
local GamePermissionsController = require(Plugin.Pages.PermissionsPage.Controllers.GamePermissionsController)
local GameOptionsController = require(Plugin.Pages.OptionsPage.Controllers.GameOptionsController)
local MonetizationController = require(Plugin.Pages.MonetizationPage.Controllers.MonetizationController)
local PlacesController = require(Plugin.Pages.PlacesPage.Controllers.PlacesController)
local SecurityController = require(Plugin.Pages.SecurityPage.Controllers.SecurityController)
local SocialController = require(Plugin.Pages.PermissionsPage.Controllers.SocialController)
local UniverseAvatarController = require(Plugin.Pages.AvatarPage.Controllers.UniverseAvatarController)
local LocalizationPageController = require(Plugin.Pages.LocalizationPage.Controllers.LocalizationPageController)

local CurrentStatus = require(Plugin.Src.Util.CurrentStatus)

local ResetStore = require(Plugin.Src.Actions.ResetStore)
local SetCurrentStatus = require(Plugin.Src.Actions.SetCurrentStatus)
local DiscardChanges = require(Plugin.Src.Actions.DiscardChanges)
local SetGameId = require(Plugin.Src.Actions.SetGameId)
local SetGame = require(Plugin.Src.Actions.SetGame)

local isEmpty = require(Plugin.Src.Util.isEmpty)
local Analytics = require(Plugin.Src.Util.Analytics)

local FFlagStudioAddMonetizationToGameSettings = game:GetFastFlag("StudioAddMonetizationToGameSettings")

local gameSettingsHandle
local pluginGui
local openedTimestamp

local worldRootPhysics = WorldRootPhysics.new()

local thunkContextItems = {}

local networking = Networking.new()
local gameInfoController = GameInfoController.new(networking:get())
local gameMetadataController = GameMetadataController.new(networking:get())
local groupMetadataController = GroupMetadataController.new(networking:get())
local gamePermissionsController = GamePermissionsController.new(networking:get())
local monetizationController = FFlagStudioAddMonetizationToGameSettings and MonetizationController.new(networking:get()) or nil
local gameOptionsController = GameOptionsController.new(networking:get())
local universePermissionsController = FFlagQ220PermissionsSettings and SecurityController.new(networking:get()) or nil
local socialController = SocialController.new(networking:get())
local universeAvatarController = UniverseAvatarController.new(networking:get())
local placesController = FFlagGameSettingsPlaceSettings and PlacesController.new(networking:get()) or nil
local localizationPageController = FFlagLocalizationPageInGameSettingsV2 and LocalizationPageController.new(networking:get()) or nil

thunkContextItems.networking = networking:get()
thunkContextItems.worldRootPhysicsController = worldRootPhysics:get()
thunkContextItems.gameInfoController = gameInfoController
thunkContextItems.gameMetadataController = gameMetadataController
thunkContextItems.groupMetadataController = groupMetadataController
thunkContextItems.gamePermissionsController = gamePermissionsController
thunkContextItems.gameOptionsController = gameOptionsController
thunkContextItems.monetizationController = monetizationController
thunkContextItems.universePermissionsController = universePermissionsController
thunkContextItems.socialController = socialController
thunkContextItems.universeAvatarController = universeAvatarController
thunkContextItems.placesController = placesController
thunkContextItems.localizationPageController = localizationPageController

local thunkWithArgsMiddleware = FrameworkUtil.ThunkWithArgsMiddleware(thunkContextItems)
local middlewares = {thunkWithArgsMiddleware}

if LOG_STORE_STATE_AND_EVENTS then
	table.insert(middlewares, Rodux.loggerMiddleware)
end

local settingsStore = Rodux.Store.new(MainReducer, nil, middlewares)
local lastObservedStatus = CurrentStatus.Open

local TranslationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable

local localization = ContextServices.Localization.new({
	pluginName = "GameSettings",
	stringResourceTable = TranslationDevelopmentTable,
	translationResourceTable = TranslationReferenceTable,
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

	if currentStatus == CurrentStatus.Working and not userPressedSave then
		return
	end

	if currentStatus ~= CurrentStatus.Closed then
		if currentStatus == CurrentStatus.Error and userPressedSave then
			settingsStore:dispatch(SetCurrentStatus(CurrentStatus.Open))
		else
			local changed = state.Settings.Changed
			local hasUnsavedChanges = changed and not isEmpty(changed)
			if hasUnsavedChanges and not userPressedSave then
				--Prompt if the user actually wanted to save using a Modal
				local dialogProps
				dialogProps = {
					Size = Vector2.new(343, 145),
					Title = localization:getText("General", "CancelDialogHeader"),
					Header = localization:getText("General", "CancelDialogBody"),
					Buttons = {
						localization:getText("General", "ReplyNo"),
						localization:getText("General", "ReplyYes"),
					},
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
local function openGameSettings(gameId, dataModel, firstSelectedId)
	if settingsStore then
		local state = settingsStore:getState()
		local currentStatus = state.Status
		if currentStatus ~= CurrentStatus.Closed then
			return
		end
	end

	local servicesProvider = Roact.createElement(ExternalServicesWrapper, {
		store = settingsStore,
		showDialog = showDialog,
		theme = Theme.new(),
		mouse = plugin:GetMouse(),
		localization = localization,
		pluginGui = pluginGui,
		plugin = plugin,
		worldRootPhysics = worldRootPhysics,
	}, {
		mainView = Roact.createElement(MainView, {
			OnClose = closeGameSettings,
			FirstSelectedId = firstSelectedId
		}),
	})

	settingsStore:dispatch(ResetStore())
	settingsStore:dispatch(SetGameId(gameId))
	settingsStore:dispatch(SetGame(dataModel))

	settingsStore:dispatch(SetCurrentStatus(CurrentStatus.Open))

	gameSettingsHandle = Roact.mount(servicesProvider, pluginGui)
	pluginGui.Enabled = true

	Analytics.onOpenEvent(plugin:GetStudioUserId(), gameId)
	openedTimestamp = tick()
end

--Binds a toolbar button to the Game Settings window
local function main()
	plugin.Name = localization:getText("General", "PluginName")

	local toolbar = plugin:CreateToolbar("gameSettingsToolbar")
	local settingsButton = toolbar:CreateButton(
		"gameSettingsButton",
		localization:getText("General", "PluginDescription"),
		"rbxasset://textures/GameSettings/ToolbarIcon.png"
	)

	-- Don't want to be able to open game settings while the game is running
	-- it is for edit mode only!
	if RunService:IsEdit() then
		makePluginGui()
		settingsButton.ClickableWhenViewportHidden = true
		settingsButton.Enabled = true
		settingsButton.Click:connect(function()
			openGameSettings(game.GameId, game)
		end)
		settingsStore.changed:connect(function(state)
			if state.Status ~= lastObservedStatus then
				settingsButton:SetActive(state.Status ~= CurrentStatus.Closed)
				setMainWidgetInteractable(state.Status ~= CurrentStatus.Working)
				lastObservedStatus = state.Status
			end
		end)

		if FFlagStudioOpenGameSettingsEvent then
			-- hook into event for opening game settings
			StudioService.OnOpenGameSettings:Connect(function(pageIdentifier)
				openGameSettings(game.GameId, game, pageIdentifier)
			end)
		end

	else
		settingsButton.Enabled = false
	end
end

main()
