--[[
	The main plugin component.
	Consists of the PluginWidget, SliceEditor
	(container for all 9SliceEditor components), and Roact tree.

	Props:
		Plugin: plugin -- The plugin DataModel
]]

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)
local Cryo = require(main.Packages.Cryo)
local Framework = require(main.Packages.Framework)
local Constants = require(main.Src.Util.Constants)
local Types = require(main.Src.Types)

local ContextServices = Framework.ContextServices
local Plugin = ContextServices.Plugin
local Mouse = ContextServices.Mouse
local MakeTheme = require(main.Src.Resources.MakeTheme)

local SourceStrings = main.Src.Resources.Localization.SourceStrings
local LocalizedStrings = main.Src.Resources.Localization.LocalizedStrings

local SliceEditor = require(main.Src.Components.SliceEditorMain)
local InstanceUnderEditManager = require(main.Src.Components.InstanceUnderEditManager)
local AnalyticsHandlers = require(main.Src.Resources.AnalyticsHandlers)

local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

function MainPlugin:init(props)
	self.localization = ContextServices.Localization.new({
		stringResourceTable = SourceStrings,
		translationResourceTable = LocalizedStrings,
		pluginName = "9SliceEditor",
	})

	self.analytics = nil
	self.analytics = ContextServices.Analytics.new(AnalyticsHandlers)

	self.state = {
		-- Main 9-Slice Editor window visible
		enabled = false,

		-- Image under edit
		pixelDimensions = Vector2.new(0, 0),
		sliceRect = { 0, 0, 0, 0 },
		revertSliceRect = { 0, 0, 0, 0 },
		imageRectSize = Vector2.new(),
		imageRectOffset = Vector2.new(),
		imageColor3 = Color3.new(),
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
		if self.state.enabled then
			self.reportClose()
		end

		self:setState({
			enabled = false,
		})
	end

	self.onInstanceUnderEditChanged = function(instance: Instance?, newState: { [string]: any })
		if not self.state.enabled then
			self.reportOpen()
		end

		if instance then
			-- Every time an image is loaded into editor
			self.analytics:report("sliceEditorImageLoadedIntoEditor")
		end

		local nextState = {
			enabled = true,
			selectedInstance = instance or Roact.None,
		}

		nextState = Cryo.Dictionary.join(nextState, newState)
		self:setState(nextState)
	end

	self.onSliceRectChanged = function(sliceRect: Types.SliceRectType)
		self:setState({
			sliceRect = sliceRect,
		})
	end

	self.onLoadingChanged = function(loading: boolean)
		self:setState({
			loading = loading,
		})
	end

	self.onInstancePropertyChanged = function(property: string, value: any)
		if property == "ImageRectOffset" then
			self:setState({
				imageRectOffset = value,
			})
		elseif property == "ImageRectSize" then
			self:setState({
				imageRectSize = value,
			})
		elseif property == "ImageColor3" then
			self:setState({
				imageColor3 = value,
			})
		elseif property == "ResampleMode" then
			self:setState({
				resampleMode = value,
			})
		end
	end
end

function MainPlugin:willUnmount()
	if self.state.enabled then
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
			InstancePropertyChanged = self.onInstancePropertyChanged,
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
			ShouldRestore = false,
		}, {
			SliceEditor = enabled and Roact.createElement(SliceEditor, {
				onClose = self.onClose,
				pixelDimensions = state.pixelDimensions,
				selectedObject = state.selectedInstance,
				sliceRect = state.sliceRect,
				revertSliceRect = state.revertSliceRect,
				loading = state.loading,
				imageRectSize = state.imageRectSize,
				imageRectOffset = state.imageRectOffset,
				imageColor3 = state.imageColor3,
				resampleMode = state.resampleMode,
			}),
		}),
	})
end

return MainPlugin
