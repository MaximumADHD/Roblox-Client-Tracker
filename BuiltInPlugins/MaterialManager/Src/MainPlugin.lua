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

local TranslationDevelopmentTable = main.Src.Resources.Localization.TranslationDevelopmentTable
local TranslationReferenceTable = main.Src.Resources.Localization.TranslationReferenceTable

local Components = main.Src.Components
local MaterialManagerView = require(Components.MaterialManagerView)
local MaterialPrompt = require(Components.MaterialPrompt)

local Utils = main.Src.Util
local MaterialController = require(Utils.MaterialController)
local getBuiltInMaterialVariants = require(Utils.getBuiltInMaterialVariants)
local ImageUploader = require(main.Src.Util.ImageUploader)
local ImportAssetHandler = require(main.Src.Util.ImportAssetHandler)
local ImageLoader = require(Utils.ImageLoader)
local MaterialServiceWrapper = require(Utils.MaterialServiceWrapper)


local MainPlugin = Roact.PureComponent:extend("MainPlugin")

function MainPlugin:init(props)
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
		self:setState({
			prompt = true
		})
	end

	self.closePrompt = function()
		self:setState({
			prompt = false
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
			enabled = enabled
		})
	end

	self.onWidgetEnabledChanged = function(widget)
		self:setState({
			enabled = widget.Enabled
		})
	end

	self.store = Rodux.Store.new(MainReducer, nil, {
		Rodux.thunkMiddleware,
	}, nil)

	self.localization = ContextServices.Localization.new({
		stringResourceTable = TranslationDevelopmentTable,
		translationResourceTable = TranslationReferenceTable,
		pluginName = "MaterialManager",
	})

	-- TODO: skuhne add analytics handlers
	self.analytics = ContextServices.Analytics.new(function()
		return {}
	end, {})

	self.materialController = MaterialController.new(
		getBuiltInMaterialVariants(),
		MaterialServiceWrapper.new()
	)
end

function MainPlugin:willUnmount()
	if self.materialController then
		self.materialController:destroy()
	end
end

function MainPlugin:renderButtons(toolbar)
	local enabled = self.state.enabled

	return {
		Toggle = Roact.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = enabled,
			Title = self.localization:getText("Plugin", "Button"),
			Tooltip = self.localization:getText("Plugin", "Description"),
			Icon = "rbxasset://textures/MaterialManager/Material_Manager.png",
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
		self.materialController,
		self.imageLoader,
		self.assetHandler,
	}, {
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = self.localization:getText("Plugin", "Toolbar"),
			RenderButtons = function(toolbar)
				return self:renderButtons(toolbar)
			end,
		}),

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
			MinSize = Vector2.new(250, 200),
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
		}, {
			Roact.createElement(MaterialManagerView, {
				OpenPrompt = self.openPrompt
			}),
		}),
	})
end

return MainPlugin
