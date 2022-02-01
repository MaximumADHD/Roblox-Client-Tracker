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
local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton

local AnalyticsContext = require(main.Src.ContextServices.AnalyticsContext)
local MakeTheme = require(main.Src.Resources.MakeTheme)
local PluginTheme = require(main.Src.Resources.PluginTheme)
local TranslationDevelopmentTable = main.Src.Resources.Localization.TranslationDevelopmentTable
local TranslationReferenceTable = main.Src.Resources.Localization.TranslationReferenceTable

local MainView = require(main.Src.Components.MainView)
local MainReducer = require(main.Src.Reducers.MainReducer)
local LoadPluginMetadata = require(main.Src.Thunks.LoadPluginMetadata)
local Analytics = require(main.Src.Util.Analytics)

local FFlagImprovePluginSpeed_LocalizationTool = game:GetFastFlag("ImprovePluginSpeed_LocalizationTool")
local FFlagFixToolbarButtonForFreshInstallation = game:GetFastFlag("FixToolbarButtonForFreshInstallation")

local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

local PLUGIN_ICON = "rbxasset://textures/localizationTestingIcon.png"
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
		stringResourceTable = TranslationDevelopmentTable,
		translationResourceTable = TranslationReferenceTable,
		pluginName = "LocalizationTools",
	})

	self.theme = nil
	if THEME_REFACTOR then
		self.theme = PluginTheme()
	else
		self.theme = MakeTheme()
	end

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

		if not FFlagFixToolbarButtonForFreshInstallation and FFlagImprovePluginSpeed_LocalizationTool then
			self.props.pluginLoaderContext.mainButtonClickedSignal:Connect(self.toggleState)
		end
	end

	if FFlagFixToolbarButtonForFreshInstallation then
		self.onDockWidgetCreated = function()
			if FFlagImprovePluginSpeed_LocalizationTool then
				self.props.pluginLoaderContext.mainButtonClickedSignal:Connect(self.toggleState)
			end
		end
	end

	self.onClose = function()
		self:setState({
			enabled = false,
		})
	end

	if FFlagImprovePluginSpeed_LocalizationTool then
		self.button = self.props.pluginLoaderContext.mainButton
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

if not FFlagImprovePluginSpeed_LocalizationTool then
	function MainPlugin:renderButtons(toolbar, isEditMode)
		local enabled = self.state.enabled
		local theme
		if (not THEME_REFACTOR) then
			theme = self.theme:get("Plugin")
		end

		return {
			Toggle = Roact.createElement(PluginButton, {
				Toolbar = toolbar,
				Active = enabled,
				Enabled = isEditMode,
				Title = self.localization:getText("Plugin", "RibbonBarButton"),
				Tooltip = self.localization:getText("Plugin", "ToolTipMessage"),
				Icon = THEME_REFACTOR and PLUGIN_ICON or theme.PluginIcon,
				OnClick = self.toggleState,
			}),
		}
	end
end

if FFlagImprovePluginSpeed_LocalizationTool then
	function MainPlugin:didUpdate()
		self.button:SetActive(self.state.enabled)
	end
end

function MainPlugin:render()
	local props = self.props
	local state = self.state
	local theme
	if (not THEME_REFACTOR) then
		theme = self.theme:get("Plugin")
	end
	local plugin = props.Plugin
	local enabled = state.enabled

	local isEditMode = RunService:IsEdit()

	return ContextServices.provide({
		Plugin.new(plugin),
	}, {
		Toolbar = not FFlagImprovePluginSpeed_LocalizationTool and Roact.createElement(PluginToolbar, {
			Title = self.localization:getText("Plugin", "ToolbarLabel"),
			RenderButtons = function(toolbar)
				return self:renderButtons(toolbar, isEditMode)
			end,
		}),

		MainWidget = isEditMode and Roact.createElement(DockWidget, {
			Enabled = enabled,
			Widget = FFlagImprovePluginSpeed_LocalizationTool and props.pluginLoaderContext.mainDockWidget or nil,
			Title = self.localization:getText("Plugin", "WindowTitle"),
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Left,
			Size = THEME_REFACTOR and WINDOW_SIZE or theme.WindowSize,
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
			OnWidgetCreated = FFlagFixToolbarButtonForFreshInstallation and self.onDockWidgetCreated or nil,
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
