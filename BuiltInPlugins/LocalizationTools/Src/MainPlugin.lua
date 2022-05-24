--[[
	The main plugin component.
	Consists of the PluginWidget, Toolbar, Button, and Roact tree.
]]

local RunService = game:GetService("RunService")

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)
local Rodux = require(main.Packages.Rodux)
local Framework = require(main.Packages.Framework)

local ContextServices = Framework.ContextServices
local Plugin = ContextServices.Plugin
local Mouse = ContextServices.Mouse
local Store = ContextServices.Store
local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget

local AnalyticsContext = require(main.Src.ContextServices.AnalyticsContext)
local PluginTheme = require(main.Src.Resources.PluginTheme)
local SourceStrings = main.Src.Resources.Localization.SourceStrings
local LocalizedStrings = main.Src.Resources.Localization.LocalizedStrings

local MainView = require(main.Src.Components.MainView)
local MainReducer = require(main.Src.Reducers.MainReducer)
local LoadPluginMetadata = require(main.Src.Thunks.LoadPluginMetadata)
local Analytics = require(main.Src.Util.Analytics)

local WINDOW_SIZE = Vector2.new(300, 250)

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

function MainPlugin:init()
	self.state = {
		enabled = false,
	}

	self.store = Rodux.Store.new(MainReducer, {}, {
		Rodux.thunkMiddleware,
	})

	self.localization = ContextServices.Localization.new({
		stringResourceTable = SourceStrings,
		translationResourceTable = LocalizedStrings,
		pluginName = "LocalizationTools",
	})

	self.theme = PluginTheme()

	self.api = ContextServices.API.new()

	self.analyticsImpl = Analytics.new()

	self.toggleState = function()
		local state = self.state
		local enabled = state.enabled
		self:setState({
			enabled = not enabled,
		})

		if enabled then
			self.analyticsImpl:reportButtonPress("tools", "closed")
		else
			self.analyticsImpl:reportToolOpened(1)
			self.analyticsImpl:reportButtonPress("tools", "open")
		end
	end

	self.onRestore = function(enabled)
		self:setState({
			enabled = enabled,
		})
	end

	self.onDockWidgetCreated = function()
		self.props.pluginLoaderContext.mainButtonClickedSignal:Connect(self.toggleState)
	end

	self.onClose = function()
		self:setState({
			enabled = false,
		})
	end

	self.button = self.props.pluginLoaderContext.mainButton
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

function MainPlugin:didUpdate()
	self.button:SetActive(self.state.enabled)
end

function MainPlugin:render()
	local props = self.props
	local state = self.state

	local plugin = props.Plugin
	local enabled = state.enabled

	local isEditMode = RunService:IsEdit()

	return ContextServices.provide({
		Plugin.new(plugin),
	}, {
		MainWidget = isEditMode and Roact.createElement(DockWidget, {
			Enabled = enabled,
			Widget = props.pluginLoaderContext.mainDockWidget,
			Title = self.localization:getText("Plugin", "WindowTitle"),
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Left,
			Size = WINDOW_SIZE,
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
			OnWidgetCreated = self.onDockWidgetCreated,
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
