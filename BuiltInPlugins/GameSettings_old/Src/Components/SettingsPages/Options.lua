--[[
	Settings page for Http settings (formerly known as Security).
		- Http Enabled

	Settings:
		bool HttpEnabled - Whether the game is allowed to access external Http endpoints
]]

local PageName = "Options"

local FFlagVersionControlServiceScriptCollabEnabled = settings():GetFFlag("VersionControlServiceScriptCollabEnabled")
local FFlagsEnableVersionHistorySetting = settings():GetFFlag("CollabEditVersionHistoryEnabled") and
	(settings():GetFFlag("StudioInternalScriptVersionHistorySetting") or
	settings():GetFFlag("StudioPlaceFilterScriptVersionHistorySetting"))
local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")
local FFlagGameSettingsShutdownAllServersButton = game:GetFastFlag("GameSettingsShutdownAllServersButton")
local FFlagGameSettingsPlaceSettings = game:GetFastFlag("GameSettingsPlaceSettings")
local FFlagQ220PermissionsSettings = game:GetFastFlag("Q220PermissionsSettings")
local FFlagTidyUpStudioGameManagementButtons = game:GetFastFlag("TidyUpStudioGameManagementButtons")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local FrameworkUI = require(Plugin.Framework.UI)
local Button = FrameworkUI.Button
local HoverArea = FrameworkUI.HoverArea
local UILibrary = require(Plugin.UILibrary)
local GetTextSize = UILibrary.Util.GetTextSize
local TitledFrame = UILibrary.Component.TitledFrame
local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)
local Header = require(Plugin.Src.Components.Header)
local SimpleDialog = require(Plugin.Src.Components.Dialog.SimpleDialog)
local ShutdownAllServers = require(Plugin.Src.Thunks.ShutdownAllServers)

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.createSettingsPage)

--Loads settings values into props by key
local function loadValuesToProps(getValue)
	local loadedProps = {
		HttpEnabled = getValue("HttpEnabled"),
		studioAccessToApisAllowed = getValue("studioAccessToApisAllowed"),
		ScriptCollabEnabled = FFlagVersionControlServiceScriptCollabEnabled and getValue("ScriptCollabEnabled"),
		ScriptVersionHistoryEnabled = FFlagsEnableVersionHistorySetting and getValue("ScriptVersionHistoryEnabled"),
		Places = FFlagGameSettingsPlaceSettings and getValue("places"),
	}
	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	local dispatchFuncs = {
		HttpEnabledChanged = setValue("HttpEnabled"),
		StudioApiServicesChanged = setValue("studioAccessToApisAllowed"),
		ScriptCollabEnabledChanged = FFlagVersionControlServiceScriptCollabEnabled and setValue("ScriptCollabEnabled"),
		ScriptVersionHistoryEnabledChanged = FFlagsEnableVersionHistorySetting and setValue("ScriptVersionHistoryEnabled"),
		ShutdownAllServers = function()
			dispatch(ShutdownAllServers())
		end,
	}

	return dispatchFuncs
end

--Uses props to display current settings values
local function displayContents(page, localized)
	local props = page.props
	local dialog = props.Dialog
	local theme = FFlagStudioConvertGameSettingsToDevFramework and props.Theme:get("Plugin")
	local shutdownButtonText = FFlagGameSettingsShutdownAllServersButton and localized:getText("General",
		"ButtonShutdownAllServers")
	local shutdownButtonFrameSize = FFlagTidyUpStudioGameManagementButtons and Vector2.new(math.huge, theme.button.height) or nil
	local shutdownButtonTextExtents = FFlagGameSettingsShutdownAllServersButton and GetTextSize(shutdownButtonText,
		theme.fontStyle.Header.TextSize, theme.fontStyle.Header.Font, shutdownButtonFrameSize)

	local shutdownButtonButtonWidth = FFlagTidyUpStudioGameManagementButtons and math.max(shutdownButtonTextExtents.X, theme.button.width) or shutdownButtonTextExtents.X + theme.shutdownButton.PaddingX
	local shutdownButtonPaddingY = FFlagTidyUpStudioGameManagementButtons and (theme.button.height - shutdownButtonTextExtents.Y) or theme.shutdownButton.PaddingY

	local shutDownButtonSize = UDim2.new(0, shutdownButtonButtonWidth,
		0, shutdownButtonTextExtents.Y + shutdownButtonPaddingY)

	return {
		Header = Roact.createElement(Header, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "Category" .. PageName)or localized.Category[PageName],
			LayoutOrder = 0,
		}),

		Http = (not FFlagQ220PermissionsSettings) and Roact.createElement(RadioButtonSet, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "TitleHttp") or localized.Title.Http,
			Buttons = {{
					Id = true,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOn") or localized.Http.On,
					Description = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "HttpDesc") or localized.Http.OnDescription,
				}, {
					Id = false,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOff") or localized.Http.Off,
				},
			},
			Enabled = props.HttpEnabled ~= nil,
			LayoutOrder = 3,
			--Functionality
			Selected = props.HttpEnabled,
			SelectionChanged = function(button)
				props.HttpEnabledChanged(button.Id)
			end,
		}),

		StudioApiServices = (not FFlagQ220PermissionsSettings) and Roact.createElement(RadioButtonSet, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "TitleStudioApiServices") or localized.Title.StudioApiServices,
			Buttons = {{
					Id = true,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOn") or localized.StudioApiServices.On,
					Description = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "StudioApiServicesDesc") or localized.StudioApiServices.OnDescription,
				}, {
					Id = false,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOff") or localized.StudioApiServices.Off,
				},
			},
			Enabled = props.studioAccessToApisAllowed ~= nil,
			LayoutOrder = 4,
			--Functionality
			Selected = props.studioAccessToApisAllowed,
			SelectionChanged = function(button)
				props.StudioApiServicesChanged(button.Id)
			end,
		}),
		EnableScriptCollab = FFlagVersionControlServiceScriptCollabEnabled and Roact.createElement(RadioButtonSet, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "TitleScriptCollab") or localized.Title.ScriptCollab,
			Buttons = {{
					Id = true,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOn") or localized.ScriptCollab.On,
					Description = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "ScriptCollabDesc") or localized.ScriptCollab.OnDescription,
				}, {
					Id = false,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOff") or localized.ScriptCollab.Off,
				},
			},
			Enabled = props.ScriptCollabEnabled ~= nil and (not FFlagsEnableVersionHistorySetting or props.ScriptVersionHistoryEnabled == false),
			LayoutOrder = 5,
			Selected = props.ScriptCollabEnabled,
			SelectionChanged = function(button)
				props.ScriptCollabEnabledChanged(button.Id)
			end,
		}),
		EnableScriptVersionHistory = FFlagsEnableVersionHistorySetting and Roact.createElement(RadioButtonSet, { --Internal ONLY, no translation needed, should never be in production
			Title = "Enable Script Version History",
			Buttons = {{
					Id = true,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOn") or localized.ScriptCollab.On,
					Description = "Track version history for scripts"
				}, {
					Id = false,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOff") or localized.ScriptCollab.Off,
				},
			},
			Enabled = props.ScriptCollabEnabled,  --only enabled if enablescriptcollab is true
			LayoutOrder = 6,
			Selected = props.ScriptVersionHistoryEnabled,
			SelectionChanged = function(button)
				props.ScriptVersionHistoryEnabledChanged(button.Id)
			end,
		}),
		ShutdownAllServers = FFlagGameSettingsShutdownAllServersButton and Roact.createElement(TitledFrame, {
			Title = localized:getText("General", "TitleShutdownAllServers"),
			MaxHeight = 60,
			LayoutOrder = 7,
			TextSize = theme.fontStyle.Normal.TextSize,
			}, {
				VerticalLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				ShutdownButton = Roact.createElement(Button, {
					Style = FFlagTidyUpStudioGameManagementButtons and "GameSettingsButton" or "RoundPrimary",
					Text = shutdownButtonText,
					Size = shutDownButtonSize,
					LayoutOrder = 1,
					OnClick = function()
						local dialogProps = {
							Size = Vector2.new(343, 145),
							Title = localized:getText("General", "ShutdownDialogHeader"),
							Header = localized:getText("General", "ShutdownDialogBody"),
							Buttons = {
								localized:getText("General", "ReplyNo"),
								localized:getText("General", "ReplyYes"),
							},
						}

						local confirmed = dialog.showDialog(SimpleDialog, dialogProps):await()
						if confirmed then
							props.ShutdownAllServers()
						end
					end,
				}, {
					Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
				}),

				ShutdownButtonDescription = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtext, {
					Size = UDim2.new(1, 0, 0, shutdownButtonTextExtents.Y + theme.shutdownButton.PaddingY),
					LayoutOrder = 2,
					BackgroundTransparency = 1,
					Text = localized:getText("General", "StudioShutdownAllServicesDesc"),
					TextYAlignment = Enum.TextYAlignment.Center,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextWrapped = true,
				})),
		}),
	}
end

local SettingsPage = createSettingsPage(PageName, loadValuesToProps, dispatchChanges)

local function Options(props)
	return Roact.createElement(SettingsPage, {
		ContentHeightChanged = props.ContentHeightChanged,
		SetScrollbarEnabled = props.SetScrollbarEnabled,
		LayoutOrder = props.LayoutOrder,
		Content = displayContents,

		AddLayout = true,
	})
end

return Options
