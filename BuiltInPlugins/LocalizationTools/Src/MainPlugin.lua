--[[
	The main plugin component.
	Consists of the PluginWidget, Toolbar, Button, and Roact tree.
]]

local RunService = game:GetService("RunService")

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)
local Rodux = require(main.Packages.Rodux)

local ContextServices = require(main.Packages.Framework.ContextServices)
local Plugin = ContextServices.Plugin
local Mouse = ContextServices.Mouse
local Store = ContextServices.Store
local StudioUI = require(main.Packages.Framework.StudioUI)
local DockWidget = StudioUI.DockWidget
local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton

local AnalyticsContext = require(main.Src.ContextServices.AnalyticsContext)
local MakeTheme = require(main.Src.Resources.MakeTheme)
local EnglishStrings = main.Src.Resources.Localization.EnglishStrings
local TranslatedStrings = main.Src.Resources.Localization.TranslatedStrings

local MainView = require(main.Src.Components.MainView)
local MainReducer = require(main.Src.Reducers.MainReducer)
local LoadPluginMetadata = require(main.Src.Thunks.LoadPluginMetadata)
local Analytics = require(main.Src.Util.Analytics)

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

local WIDGET_STATUS_SETTING_KEY = "LocalizationToolsWidgetStatus"

local function getPluginWidgetStatus(props)
	local plugin = props.Plugin
	return plugin:GetSetting(WIDGET_STATUS_SETTING_KEY)
end

function MainPlugin:init(props)
	self.state = {
		enabled = getPluginWidgetStatus(props) or false,
	}

	self.store = Rodux.Store.new(MainReducer, {}, {
		Rodux.thunkMiddleware,
	})

	self.localization = ContextServices.Localization.new({
		stringResourceTable = EnglishStrings,
		translationResourceTable = TranslatedStrings,
		pluginName = "LocalizationTools",
	})

	self.theme = MakeTheme()

	self.api = ContextServices.API.new()

	self.analyticsImpl = Analytics.new()

	self.toggleState = function()
		local plugin = props.Plugin
		local state = self.state
		local enabled = state.enabled
		self:setState({
			enabled = not enabled,
		})
		plugin:SetSetting(WIDGET_STATUS_SETTING_KEY, not enabled)

		if enabled then
			self.analyticsImpl:reportButtonPress("tools", "closed")
		else
			self.analyticsImpl:reportToolOpened(1)
			self.analyticsImpl:reportButtonPress("tools", "open")
		end
	end

	self.onClose = function()
		local plugin = props.Plugin
		self:setState({
			enabled = false,
		})
		plugin:SetSetting(WIDGET_STATUS_SETTING_KEY, false)
	end
end

function MainPlugin:didMount()
	if not RunService:IsEdit() then
		return
	end
	local api = self.api:get()
	local localization = self.localization
	local store = self.store
	store:dispatch(LoadPluginMetadata.GetAll(api, localization))
	game:GetPropertyChangedSignal("GameId"):Connect(function()
		store:dispatch(LoadPluginMetadata.OnGameIdChanged(api, localization))
	end)
end

function MainPlugin:renderButtons(toolbar, isEditMode)
	local enabled = self.state.enabled
	local theme = self.theme:get("Plugin")

	return {
		Toggle = Roact.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = enabled,
			Enabled = isEditMode,
			Title = self.localization:getText("Plugin", "RibbonBarButton"),
			Tooltip = self.localization:getText("Plugin", "ToolTipMessage"),
			Icon = theme.PluginIcon,
			OnClick = self.toggleState,
		}),
	}
end

function MainPlugin:render()
	local props = self.props
	local state = self.state
	local theme = self.theme:get("Plugin")
	local plugin = props.Plugin
	local enabled = state.enabled

	local isEditMode = RunService:IsEdit()

	return ContextServices.provide({
		Plugin.new(plugin),
	}, {
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = self.localization:getText("Plugin", "ToolbarLabel"),
			RenderButtons = function(toolbar)
				return self:renderButtons(toolbar, isEditMode)
			end,
		}),

		MainWidget = isEditMode and Roact.createElement(DockWidget, {
			Enabled = enabled,
			Title = self.localization:getText("Plugin", "WindowTitle"),
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Left,
			Size = theme.WindowSize,
			OnClose = self.onClose,
		}, {
			MainProvider = enabled and ContextServices.provide({
				Mouse.new(plugin:getMouse()),
				Store.new(self.store),
				self.api,
				self.localization,
				self.theme,
				AnalyticsContext.new(self.analyticsImpl),
			}, {
				-- Plugin contents are mounted here
				MainView = Roact.createElement(MainView),
			}),
		}),
	})
end

return MainPlugin
