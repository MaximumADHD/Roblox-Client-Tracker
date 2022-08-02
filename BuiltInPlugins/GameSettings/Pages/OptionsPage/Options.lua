
local Page = script.Parent
local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryTitledFrame = SharedFlags.getFFlagRemoveUILibraryTitledFrame()

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local ToggleButtonWithTitle = require(Plugin.Src.Components.ToggleButtonWithTitle)

local Dialog = require(Plugin.Src.ContextServices.Dialog)

local UILibrary = if FFlagRemoveUILibraryTitledFrame then nil else require(Plugin.Packages.UILibrary)

local Util = Framework.Util
local GetTextSize = Util.GetTextSize
local LayoutOrderIterator = Util.LayoutOrderIterator

local UI = Framework.UI
local Button = UI.Button
local HoverArea = UI.HoverArea
local TitledFrame = if FFlagRemoveUILibraryTitledFrame then UI.TitledFrame else UILibrary.Component.TitledFrame


local SimpleDialog = require(Plugin.Src.Components.Dialog.SimpleDialog)
local SettingsPage = require(Plugin.Src.Components.SettingsPages.SettingsPage)

local AddChange = require(Plugin.Src.Actions.AddChange)
local ShutdownAllServers = require(Page.Thunks.ShutdownAllServers)

local KeyProvider = require(Plugin.Src.Util.KeyProvider)

local FStringSpatialVoiceChatLink = game:DefineFastString("SpatialVoiceChatLink", "https://developer.roblox.com/articles/spatial-voice")

local GuiService = game:GetService("GuiService")

local GetVoiceChatEnabledKeyName = KeyProvider.getVoiceChatEnabledKeyName
local voiceChatEnabledKey = GetVoiceChatEnabledKeyName()

local GetScriptCollaborationEnabledOnServerKeyName = KeyProvider.getScriptCollaborationEnabledOnServerKeyName
local scriptCollaborationEnabledOnServerKey = GetScriptCollaborationEnabledOnServerKeyName()

local teamCreateEnabledKey = KeyProvider.getTeamCreateEnabledKeyName()

-- TODO: When removing FFlagGameSettingsRenameOptions, rename `OptionsPage` and `Options.lua` to `OtherPage` and `Other.lua`
game:GetFastFlag("GameSettingsRenameOptions")
local LOCALIZATION_ID = if game:GetFastFlag("GameSettingsRenameOptions") then "Other" else script.Name

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
			local optIn = gameOptionsController:getVoiceChatEnabled(gameId)

			loadedSettings[voiceChatEnabledKey] = optIn
		end,
		
		function(loadedSettings)
			local enabled = gameOptionsController:getScriptCollaborationEnabledOnServer(game)
								
			loadedSettings[scriptCollaborationEnabledOnServerKey] = enabled
		end,

		function(loadedSettings)
			local enabled = gameOptionsController:getIsTeamCreateEnabled()

			loadedSettings[teamCreateEnabledKey] = enabled
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
			local changed = state.Settings.Changed.VoiceChatEnabled

			if changed ~= nil then
				gameOptionsController:setVoiceChatEnabled(gameId, changed)
			end
		end,
	}
end

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	local scriptCollabEnabledOnServer = state.Settings.Current.ScriptCollaborationEnabledOnServer
		
	local loadedProps = {
		ScriptCollabEnabled = getValue("ScriptCollabEnabled"),
		CurrentScriptCollabEnabled = state.Settings.Current.ScriptCollabEnabled,
		VoiceChatEnabled = getValue(voiceChatEnabledKey),
		TeamCreateEnabled = state.Settings.Current.TeamCreateEnabled or nil,
		-- This value holds the server value (which cannot be changed during session). Used to display warning about needing to restart
		ScriptCollabEnabledOnServer = scriptCollabEnabledOnServer
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
	local theme = props.Stylizer
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

	local TeamCreateEnabled = props.TeamCreateEnabled or false
	
	local layoutIndex = LayoutOrderIterator.new()
	-- Display warning to user that collab editing change will only take affect if the server restarts
	local shouldDisplayScriptCollabWarning = TeamCreateEnabled and (props.ScriptCollabEnabledOnServer ~= props.ScriptCollabEnabled)

	-- Prioritized EnableTeamCreateForCollabEditingText here since if TC is off that text should always show
	local toggleButtonDescriptionText
	if not TeamCreateEnabled then
		toggleButtonDescriptionText = localization:getText("General", "EnableTeamCreateForCollabEditing")
	elseif shouldDisplayScriptCollabWarning then
		toggleButtonDescriptionText = localization:getText("General", "ServerRestartWarning")
	else
		toggleButtonDescriptionText = localization:getText("General", "ScriptCollabDesc")
	end

	local function createChildren()
		local props = self.props

		local localization = props.Localization

		return {
			EnableScriptCollab = Roact.createElement(ToggleButtonWithTitle, {
				Title = localization:getText("General", "TitleScriptCollab"),
				Description = toggleButtonDescriptionText,
				LayoutOrder = layoutIndex:getNextOrder(),
				Disabled = not TeamCreateEnabled,
				Selected = props.ScriptCollabEnabled,
				ShowWarning = shouldDisplayScriptCollabWarning,
				OnClick = function()
					props.ScriptCollabEnabledChanged(not props.ScriptCollabEnabled)
				end,
			}),

			ShutdownAllServers = Roact.createElement(TitledFrame, if FFlagRemoveUILibraryTitledFrame then {
				LayoutOrder = layoutIndex:getNextOrder(),
				Title = localization:getText("General", "TitleShutdownAllServers"),
			} else {
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

			EnableVoiceChat = Roact.createElement(ToggleButtonWithTitle, {
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


Options = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	Dialog = Dialog,
})(Options)


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
