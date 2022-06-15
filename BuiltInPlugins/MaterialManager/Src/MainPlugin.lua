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

local ServiceWrapper = Framework.TestHelpers.ServiceWrapper

local MainReducer = require(main.Src.Reducers.MainReducer)
local MakeTheme = require(main.Src.Resources.MakeTheme)
local createAnalyticsHandlers = require(main.Src.Resources.createAnalyticsHandlers)

local SourceStrings = main.Src.Resources.Localization.SourceStrings
local LocalizedStrings = main.Src.Resources.Localization.LocalizedStrings

local SetGridLock = require(main.Src.Actions.SetGridLock)

local Components = main.Src.Components
local DEPRECATED_MaterialBrowser = require(Components.DEPRECATED_MaterialBrowser)
local MaterialBrowser = require(Components.MaterialBrowser)
local MaterialPrompt = require(Components.MaterialPrompt)
local ImageUploader = require(Components.ImageUploader)
local ImportAssetHandler = require(Components.ImportAssetHandler)
local ImageLoader = require(Components.ImageLoader)

local Utils = main.Src.Util
local CalloutController = require(Utils.CalloutController)
local GeneralServiceController = require(Utils.GeneralServiceController)
local MaterialController = require(Utils.MaterialController)
local MaterialServiceController = require(Utils.MaterialServiceController)
local MaterialServiceWrapper = require(Utils.MaterialServiceWrapper)
local PluginController = require(Utils.PluginController)

local Flags = main.Src.Flags
local getFFlagMaterialManagerGlassNeonForceField = require(Flags.getFFlagMaterialManagerGlassNeonForceField)
local getFFlagMaterialManagerGridListView = require(Flags.getFFlagMaterialManagerGridListView)
local getFFlagMaterialManagerDetailsOverhaul = require(Flags.getFFlagMaterialManagerDetailsOverhaul)
local getFFlagMaterialManagerHideDetails = require(Flags.getFFlagMaterialManagerHideDetails)

local DEPRECATED_getBuiltInMaterialVariants = require(main.Src.Resources.Constants.DEPRECATED_getBuiltInMaterialVariants)
local FIntInfluxReportMaterialManagerHundrethPercent = game:GetFastInt("InfluxReportMaterialManagerHundrethPercent")

local getFFlagDevFrameworkMockWrapper = require(main.Src.Flags.getFFlagDevFrameworkMockWrapper)
local FFlagMaterialManagerSideBarHide = game:GetFastFlag("MaterialManagerSideBarHide")

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
		if getFFlagMaterialManagerDetailsOverhaul() then
			self.store:dispatch(SetGridLock(true))
		end
		self:setState({
			prompt = true
		})
	end

	self.closePrompt = function()
		if getFFlagMaterialManagerDetailsOverhaul() then
			self.store:dispatch(SetGridLock(false))
		end
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
		stringResourceTable = SourceStrings,
		translationResourceTable = LocalizedStrings,
		pluginName = "MaterialManager",
	})

	self.analytics = nil
	if FIntInfluxReportMaterialManagerHundrethPercent then
		self.analytics = ContextServices.Analytics.new(createAnalyticsHandlers)
	else
		self.analytics = ContextServices.Analytics.new(function()
			return {}
		end, {})
	end

	if getFFlagMaterialManagerGlassNeonForceField() then
		if getFFlagDevFrameworkMockWrapper() then
			self.materialController = MaterialController.new(
				nil,
				ServiceWrapper.new("MaterialService")
			)
		else
			self.materialController = MaterialController.new(
				nil,
				MaterialServiceWrapper.new()
			)
		end
	else
		if getFFlagDevFrameworkMockWrapper() then
			self.materialController = MaterialController.new(
				DEPRECATED_getBuiltInMaterialVariants(),
				ServiceWrapper.new("MaterialService")
			)
		else
			self.materialController = MaterialController.new(
				DEPRECATED_getBuiltInMaterialVariants(),
				MaterialServiceWrapper.new()
			)
		end
	end

	if getFFlagMaterialManagerDetailsOverhaul() then
		self.materialServiceController = MaterialServiceController.new(self.store)
		self.generalServiceController = GeneralServiceController.new()
	end

	-- Remove with FFlagMaterialManagerTeachingCallout, also CalloutController and TeachingCallout
	self.calloutController = CalloutController.new()
	local definitionId = "MaterialManagerApplyCallout"
	local description = self.localization:getText("Callout", "MaterialManagerApplyDescription")
	self.calloutController:defineCallout(definitionId, "", description, "")

	self.pluginController = PluginController.new(plugin, self.store)
	if getFFlagMaterialManagerGridListView() then
		self.pluginController:initialize()
	end
end

function MainPlugin:willUnmount()
	if self.materialController then
		self.materialController:destroy()
	end
	if self.imageLoader then
		self.imageLoader:destroy()
	end
	if getFFlagMaterialManagerDetailsOverhaul() then
		if self.materialServiceController then
			self.materialServiceController:destroy()
		end
		if self.generalServiceController then
			self.generalServiceController:destroy()
		end
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
		self.materialController,
		self.materialServiceController,
		self.imageLoader,
		self.assetHandler,
		self.calloutController,
		self.pluginController,
	}, {
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = "Edit",
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
			MinSize = if FFlagMaterialManagerSideBarHide then Vector2.new(300, 200) else Vector2.new(400, 200),
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
		}, {
			Roact.createElement(if getFFlagMaterialManagerHideDetails() and FFlagMaterialManagerSideBarHide then MaterialBrowser else DEPRECATED_MaterialBrowser, {
				OpenPrompt = self.openPrompt
			}),
		}),
	})
end

return MainPlugin
