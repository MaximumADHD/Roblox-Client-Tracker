local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)
local Rodux = require(main.Packages.Rodux)

local Framework = require(main.Packages.Framework)

local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget
local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton

local ContextServices = Framework.ContextServices
local Plugin = ContextServices.Plugin
local Mouse = ContextServices.Mouse
local Store = ContextServices.Store

local Http = Framework.Http

local MainReducer = require(main.Src.Reducers.MainReducer)
local MakeTheme = require(main.Src.Resources.MakeTheme)
local createAnalyticsHandlers = require(main.Src.Resources.createAnalyticsHandlers)

local SourceStrings = main.Src.Resources.Localization.SourceStrings
local LocalizedStrings = main.Src.Resources.Localization.LocalizedStrings

local SetGridLock = require(main.Src.Actions.SetGridLock)

local Components = main.Src.Components
local DEPRECATED_MaterialBrowser = require(Components.DEPRECATED_MaterialBrowser)
local MaterialBrowser = require(Components.MaterialBrowser)
local MaterialPrompt = require(Components.MaterialPrompt) -- Remove with FFlagMaterialManagerVariantCreatorOverhaul

local Controllers = main.Src.Controllers
local GeneralServiceController = require(Controllers.GeneralServiceController)
local ImageUploader = require(Controllers.ImageUploader)
local ImportAssetHandler = require(Controllers.ImportAssetHandler)
local ImageLoader = require(Controllers.ImageLoader)
local MaterialServiceController = require(Controllers.MaterialServiceController)
local PluginController = require(Controllers.PluginController)

local getFFlagMaterialBrowserOverhaul2 = require(main.Src.Flags.getFFlagMaterialBrowserOverhaul2)

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

function MainPlugin:init(props)
	local plugin = props.Plugin

	self.state = {
		enabled = false,
	}

	local networking = Http.Networking.new({
		isInternal = true,
	})
	local imageUploader = ImageUploader.new(networking)
	self.assetHandler = ImportAssetHandler.new(imageUploader)
	self.imageLoader = ImageLoader.new()

	self.openPrompt = function()
		self.store:dispatch(SetGridLock(true))
		-- Remove prompt with FFlagMaterialManagerVariantCreatorOverhaul
		self:setState({
			prompt = true,
		})
	end

	self.closePrompt = function()
		self.store:dispatch(SetGridLock(false))
		self:setState({
			prompt = false,
		})
	end

	self.toggleEnabled = function()
		self:setState(function(state)
			return {
				enabled = not state.enabled,
			}
		end)
	end

	self.onClose = function()
		self:setState({
			enabled = false,
		})
	end

	self.onRestore = function(enabled)
		self:setState({
			enabled = enabled,
		})
	end

	self.onWidgetEnabledChanged = function(widget)
		self:setState({
			enabled = widget.Enabled,
		})
	end

	self.store = Rodux.Store.new(MainReducer, nil, {
		Rodux.thunkMiddleware,
	}, nil)

	self.localization = ContextServices.Localization.new({
		stringResourceTable = SourceStrings,
		translationResourceTable = LocalizedStrings,
		pluginName = "MaterialManager",
	})

	self.analytics = ContextServices.Analytics.new(createAnalyticsHandlers)
	self.materialServiceController = MaterialServiceController.new(self.store)
	self.generalServiceController = GeneralServiceController.new()

	self.pluginController = PluginController.new(plugin, self.store, plugin:getMouse(), self.generalServiceController)
	self.pluginController:initialize()
end

function MainPlugin:willUnmount()
	if self.imageLoader then
		self.imageLoader:destroy()
	end
	if self.materialServiceController then
		self.materialServiceController:destroy()
	end
	if self.generalServiceController then
		self.generalServiceController:destroy()
	end
	if self.pluginController then
		self.pluginController:destroy()
	end
end

function MainPlugin:renderButtons(toolbar)
	local enabled = self.state.enabled

	return {
		Toggle = Roact.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = enabled,
			Title = "MaterialManager", -- not user visible, no localization
			Tooltip = "",
			Icon = "", -- C++ code is source of truth for Tooltip & Icon
			OnClick = self.toggleEnabled,
			ClickableWhenViewportHidden = true,
		}),
	}
end

function MainPlugin:render()
	local props = self.props
	local state = self.state
	local plugin = props.Plugin
	local enabled = state.enabled
	local prompt = state.prompt

	return ContextServices.provide({
		Plugin.new(plugin),
		Store.new(self.store),
		Mouse.new(plugin:getMouse()),
		MakeTheme(),
		self.localization,
		self.analytics,
		self.generalServiceController,
		self.materialServiceController,
		self.imageLoader,
		self.assetHandler,
		self.pluginController,
	}, {
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = "Edit",
			RenderButtons = function(toolbar)
				return self:renderButtons(toolbar)
			end,
		}),

		-- Remove with FFlagMaterialManagerVariantCreatorOverhaul
		MaterialPrompt = prompt and Roact.createElement(MaterialPrompt, {
			PromptClosed = self.closePrompt,
			PromptType = prompt,
		}) or nil,

		MainWidget = Roact.createElement(DockWidget, {
			Enabled = enabled,
			Title = self.localization:getText("Plugin", "Name"),
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			InitialDockState = Enum.InitialDockState.Bottom,
			Size = Vector2.new(640, 480),
			MinSize = Vector2.new(300, 200),
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
		}, {
			Roact.createElement(if getFFlagMaterialBrowserOverhaul2() then MaterialBrowser else DEPRECATED_MaterialBrowser, {
				OpenPrompt = self.openPrompt,
			}),
		}),
	})
end

return MainPlugin
