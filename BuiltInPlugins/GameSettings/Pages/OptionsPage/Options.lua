local FFlagGameSettingsWithContext = game:GetFastFlag("GameSettingsWithContext")

local Page = script.Parent
local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)

local FrameworkUI = require(Plugin.Framework).UI
local Button = FrameworkUI.Button
local HoverArea = FrameworkUI.HoverArea
local ToggleButtonWithTitle = require(Plugin.Src.Components.ToggleButtonWithTitle)

local Dialog = require(Plugin.Src.ContextServices.Dialog)

local ContextServices = require(Plugin.Framework).ContextServices
local withContext = ContextServices.withContext

local UILibrary = require(Plugin.UILibrary)
local GetTextSize = UILibrary.Util.GetTextSize
local TitledFrame = UILibrary.Component.TitledFrame

local SimpleDialog = require(Plugin.Src.Components.Dialog.SimpleDialog)
local SettingsPage = require(Plugin.Src.Components.SettingsPages.SettingsPage)

local AddChange = require(Plugin.Src.Actions.AddChange)
local ShutdownAllServers = require(Page.Thunks.ShutdownAllServers)

local LayoutOrderIterator = require(Plugin.Framework).Util.LayoutOrderIterator

local KeyProvider = require(Plugin.Src.Util.KeyProvider)

local FFlagGameSettingsEnableVoiceChat = game:GetFastFlag("GameSettingsEnableVoiceChat")

local FStringSpatialVoiceChatLink = game:DefineFastString("SpatialVoiceChatLink", "https://developer.roblox.com/articles/spatial-voice")

local GuiService = game:GetService("GuiService")

local GetVoiceChatEnabledKeyName = KeyProvider.getVoiceChatEnabledKeyName
local voiceChatEnabledKey = FFlagGameSettingsEnableVoiceChat and GetVoiceChatEnabledKeyName() or nil

local LOCALIZATION_ID = script.Name

local function loadSettings(store, contextItems)
	local state = store:getState()
	local game = state.Metadata.game
	local gameId = state.Metadata.gameId
	local gameOptionsController = contextItems.gameOptionsController

	return {
		function(loadedSettings)
			local enabled = gameOptionsController:getScriptCollaborationEnabled(game)

			loadedSettings["ScriptCollabEnabled"] = enabled
		end,

		function(loadedSettings)
			if FFlagGameSettingsEnableVoiceChat then
				local optIn = gameOptionsController:getVoiceChatEnabled(gameId)

				loadedSettings[voiceChatEnabledKey] = optIn
			end
		end,
	}
end

local function saveSettings(store, contextItems)
	local state = store:getState()
	local game = state.Metadata.game
	local gameId = state.Metadata.gameId
	local gameOptionsController = contextItems.gameOptionsController

	return {
		function()
			local changed = state.Settings.Changed.ScriptCollabEnabled

			if changed ~= nil then
				gameOptionsController:setScriptCollaborationEnabled(game, changed)
			end
		end,
		function()
			if FFlagGameSettingsEnableVoiceChat then
				local changed = state.Settings.Changed.VoiceChatEnabled

				if changed ~= nil then
					gameOptionsController:setVoiceChatEnabled(gameId, changed)
				end
			end
		end,
	}
end

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	local loadedProps = {
		ScriptCollabEnabled = getValue("ScriptCollabEnabled"),
		CurrentScriptCollabEnabled = state.Settings.Current.ScriptCollabEnabled,
		VoiceChatEnabled = FFlagGameSettingsEnableVoiceChat and getValue(voiceChatEnabledKey) or nil,
	}
	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	local dispatchFuncs = {
		ScriptCollabEnabledChanged = setValue("ScriptCollabEnabled"),
		dispatchShutdownAllServers = function()
			dispatch(ShutdownAllServers())
		end,
		VoiceChatEnabledChanged = setValue(voiceChatEnabledKey),
	}

	return dispatchFuncs
end

local Options = Roact.PureComponent:extend(script.Name)

function Options:render()
	local props = self.props
	local dialog = props.Dialog
	local theme = props.Theme:get("Plugin")
	local localization = props.Localization

	local shutdownButtonText = localization:getText("General","ButtonShutdownAllServers")
	local shutdownButtonFrameSize = Vector2.new(math.huge, theme.button.height)
	local shutdownButtonTextExtents = GetTextSize(shutdownButtonText, theme.fontStyle.Header.TextSize,
		theme.fontStyle.Header.Font, shutdownButtonFrameSize)
	local shutdownButtonButtonWidth = math.max(shutdownButtonTextExtents.X, theme.button.width)
	local shutdownButtonPaddingY = theme.button.height - shutdownButtonTextExtents.Y
	local shutDownButtonSize = UDim2.new(0, shutdownButtonButtonWidth,
		0, shutdownButtonTextExtents.Y + shutdownButtonPaddingY)

	local dispatchShutdownAllServers = props.dispatchShutdownAllServers

    -- Display warning to user if they are switching Collab off when it is currently saved as on
    local shouldDisplayWarning = props.CurrentScriptCollabEnabled and (props.ScriptCollabEnabled == false)
    local layoutIndex = LayoutOrderIterator.new()

	local function createChildren()
		local props = self.props

		local localization = props.Localization

		return {
            EnableScriptCollab = Roact.createElement(ToggleButtonWithTitle, {
                Title = localization:getText("General", "TitleScriptCollab"),
                Description = shouldDisplayWarning and localization:getText("General", "ScriptCollabWarning")
                    or localization:getText("General", "ScriptCollabDesc"),
                LayoutOrder = layoutIndex:getNextOrder(),
                Disabled = false,
                Selected = props.ScriptCollabEnabled,
                ShowWarning = shouldDisplayWarning,
                OnClick = function()
                    props.ScriptCollabEnabledChanged(not props.ScriptCollabEnabled)
                end,
            }),

			ShutdownAllServers = Roact.createElement(TitledFrame, {
				Title = localization:getText("General", "TitleShutdownAllServers"),
				MaxHeight = 60,
				LayoutOrder = layoutIndex:getNextOrder(),
				TextSize = theme.fontStyle.Normal.TextSize,
				}, {
					VerticalLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					ShutdownButton = Roact.createElement(Button, {
						Style = "GameSettingsButton",
						Text = shutdownButtonText,
						Size = shutDownButtonSize,
						LayoutOrder = 1,
						OnClick = function()
							local dialogProps = {
								Size = Vector2.new(343, 145),
								Title = localization:getText("General", "ShutdownDialogHeader"),
								Header = localization:getText("General", "ShutdownDialogBody"),
								Buttons = {
									localization:getText("General", "ReplyNo"),
									localization:getText("General", "ReplyYes"),
								},
							}

							local confirmed = dialog.showDialog(SimpleDialog, dialogProps):await()
							if confirmed then
								dispatchShutdownAllServers()
							end
						end,
					}, {
						Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
					}),

					ShutdownButtonDescription = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtext, {
						Size = UDim2.new(1, 0, 0, shutdownButtonTextExtents.Y + theme.shutdownButton.PaddingY),
						LayoutOrder = 2,
						BackgroundTransparency = 1,
						Text = localization:getText("General", "StudioShutdownAllServicesDesc"),
						TextYAlignment = Enum.TextYAlignment.Center,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextWrapped = true,
					})),
			}),

			EnableVoiceChat = FFlagGameSettingsEnableVoiceChat and Roact.createElement(ToggleButtonWithTitle, {
				Title = localization:getText("General", "VoiceChatTitle"),
				LinkProps = {
					Text = localization:getText("General", "VoiceChatBody"),
					LinkText = localization:getText("General", "VoiceChatLink"),
					OnLinkClicked = function()
						GuiService:OpenBrowserWindow(FStringSpatialVoiceChatLink)
					end,
				},
				LayoutOrder = layoutIndex:getNextOrder(),
				Disabled = false,
				Selected = props.VoiceChatEnabled,
				OnClick = function()
					props.VoiceChatEnabledChanged(not props.VoiceChatEnabled)
				end,
			}),
		}
	end

	return Roact.createElement(SettingsPage, {
		SettingsLoadJobs = loadSettings,
		SettingsSaveJobs = saveSettings,
		Title = localization:getText("General", "Category"..LOCALIZATION_ID),
		PageId = LOCALIZATION_ID,
		CreateChildren = createChildren,
	})
end

if FFlagGameSettingsWithContext then
	Options = withContext({
		Theme = ContextServices.Theme,
		Localization = ContextServices.Localization,
		Dialog = Dialog,
	})(Options)
else
	ContextServices.mapToProps(Options, {
		Theme = ContextServices.Theme,
		Localization = ContextServices.Localization,
		Dialog = Dialog,
	})
end


local settingFromState = require(Plugin.Src.Networking.settingFromState)
Options = RoactRodux.connect(
	function(state, props)
		if not state then return end

		local getValue = function(propName)
			return settingFromState(state.Settings, propName)
		end

		return loadValuesToProps(getValue, state)
	end,

	function(dispatch)
		local setValue = function(propName)
			return function(value)
				dispatch(AddChange(propName, value))
			end
		end

		return dispatchChanges(setValue, dispatch)
	end
)(Options)

Options.LocalizationId = LOCALIZATION_ID

return Options
