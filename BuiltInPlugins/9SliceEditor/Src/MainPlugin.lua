--[[
	The main plugin component.
	Consists of the PluginWidget, SliceEditor
	(container for all 9SliceEditor components), and Roact tree.

	Props:
		Plugin: plugin -- The plugin DataModel
]]

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)
local Framework = require(main.Packages.Framework)
local Constants = require(main.Src.Util.Constants)
local SliceRectUtil = require(main.Src.Util.SliceRectUtil)

local ContextServices = Framework.ContextServices
local Plugin = ContextServices.Plugin
local Mouse = ContextServices.Mouse
local MakeTheme = require(main.Src.Resources.MakeTheme)

local TranslationDevelopmentTable = main.Src.Resources.Localization.TranslationDevelopmentTable
local TranslationReferenceTable = main.Src.Resources.Localization.TranslationReferenceTable

local SliceEditor = require(main.Src.Components.SliceEditorMain)
local InstanceUnderEditManager = require(main.Src.Components.InstanceUnderEditManager)
local AnalyticsHandlers = require(main.Src.Resources.AnalyticsHandlers)

local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget

local FFlag9SliceEditorEnableAnalytics = game:GetFastFlag("9SliceEditorEnableAnalytics")

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

function MainPlugin:init(props)
	self.localization = ContextServices.Localization.new({
		stringResourceTable = TranslationDevelopmentTable,
		translationResourceTable = TranslationReferenceTable,
		pluginName = "9SliceEditor",
	})

	self.analytics = nil
	if FFlag9SliceEditorEnableAnalytics then
		self.analytics = ContextServices.Analytics.new(AnalyticsHandlers)
	else
		self.analytics = ContextServices.Analytics.new(function()
			return {}
		end, {})
	end

	self.state = {
		-- Main 9-Slice Editor window visible
		enabled = false,

		-- Image under edit
		pixelDimensions = Vector2.new(0, 0),
		sliceRect = {0, 0, 0, 0},
		revertSliceRect = {0, 0, 0, 0},
		selectedInstance = nil,
		title = self.localization:getText("Plugin", "Name"),
		loading = false,
	}

	self.timeOpened = nil
	self.reportOpen = function()
		-- Opening the editor when it was previously closed
		self.timeOpened = tick()
		self.analytics:report("sliceEditorOpened")
	end

	self.reportClose = function()
		if self.timeOpened then
			self.analytics:report("sliceEditorOpenTime", tick() - self.timeOpened)
		end
	end

	self.onClose = function()
		if FFlag9SliceEditorEnableAnalytics and self.state.enabled then
			self.reportClose()
		end

		self:setState({
			enabled = false,
		})
	end

	self.onRestore = function(enabled)
		if FFlag9SliceEditorEnableAnalytics and enabled and not self.state.enabled then
			self.reportOpen()
		end
		
		self:setState({
			enabled = enabled
		})
	end

	self.onInstanceUnderEditChanged = function(instance: Instance?, title: string, pixelDimensions: Vector2,
		sliceRect: SliceRectUtil.SliceRectType, revertSliceRect: SliceRectUtil.SliceRectType)

		if FFlag9SliceEditorEnableAnalytics then
			if not self.state.enabled then
				self.reportOpen()
			end

			if instance then
				-- Every time an image is loaded into editor
				self.analytics:report("sliceEditorImageLoadedIntoEditor")
			end
		end

		self:setState({
			enabled = true,
			selectedInstance = instance or Roact.None,
			title = title,
			pixelDimensions = pixelDimensions,
			sliceRect = sliceRect,
			revertSliceRect = revertSliceRect,
		})
	end

	self.onSliceRectChanged = function(sliceRect: SliceRectUtil.SliceRectType)
		self:setState({
			sliceRect = sliceRect,
		})
	end

	self.onLoadingChanged = function(loading: boolean)
		self:setState({
			loading = loading
		})
	end
end

function MainPlugin:willUnmount()
	if FFlag9SliceEditorEnableAnalytics and self.state.enabled then
		self.reportClose()
	end
end

function MainPlugin:render()
	local props = self.props
	local state = self.state
	local plugin = props.Plugin
	local enabled = state.enabled

	return ContextServices.provide({
		Plugin.new(plugin),
		Mouse.new(plugin:getMouse()),
		MakeTheme(),
		self.localization,
		self.analytics,
	}, {
		InstanceUnderEditManager = Roact.createElement(InstanceUnderEditManager, {
			WidgetEnabled = enabled,
			InstanceUnderEditChanged = self.onInstanceUnderEditChanged,
			SliceRectChanged = self.onSliceRectChanged,
			LoadingChanged = self.onLoadingChanged,
		}),

		MainWidget = Roact.createElement(DockWidget, {
			Enabled = enabled,
			Title = state.title,
			InitialDockState = Enum.InitialDockState.Float,
			ZIndexBehavior = Enum.ZIndexBehavior.Global,
			Size = Constants.WIDGET_SIZE,
			MinSize = Constants.WIDGET_SIZE,
			OnClose = self.onClose,
			ShouldRestore = true,
			OnWidgetRestored = self.onRestore,
		}, {
			SliceEditor = enabled and Roact.createElement(SliceEditor, {
				onClose = self.onClose,
				pixelDimensions = state.pixelDimensions,
				selectedObject = state.selectedInstance,
				sliceRect = state.sliceRect,
				revertSliceRect = state.revertSliceRect,
				loading = state.loading,
			}),
		}),

	})
end

return MainPlugin
