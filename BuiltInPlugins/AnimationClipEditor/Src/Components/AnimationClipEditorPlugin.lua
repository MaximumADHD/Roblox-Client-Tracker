--[[
	The main Animation Editor plugin window.

	Contains logic for the main toolbar button and dock widget.
	Also creates the external services which are provided to context.
]]

game:DefineFastFlag("AnimationEditorDisableOnClosing", false)

local RunService = game:GetService("RunService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local AnimationClipEditor = require(Plugin.Src.Components.AnimationClipEditor)
local DockWidget = require(Plugin.Src.Components.PluginWidget.DockWidget)
local ErrorDialogContents = require(Plugin.Src.Components.BlockingDialog.ErrorDialogContents)

local MainProvider = require(Plugin.Src.Context.MainProvider)
local Signals = require(Plugin.Src.Context.Signals)

local Theme = require(Plugin.Src.Util.Theme)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local Localization = ContextServices.Localization
local DevelopmentReferenceTable = Plugin.Src.Resources.DevelopmentReferenceTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable

local Constants = require(Plugin.Src.Util.Constants)
local DebugFlags = require(Plugin.Src.Util.DebugFlags)
local MakePluginActions = require(Plugin.Src.Util.MakePluginActions)
local showBlockingDialog = require(Plugin.Src.Util.showBlockingDialog)

local ReleaseEditor = require(Plugin.Src.Thunks.ReleaseEditor)
local SetShowAsSeconds = require(Plugin.Src.Actions.SetShowAsSeconds)
local SetSnapMode = require(Plugin.Src.Actions.SetSnapMode)
local SetTool = require(Plugin.Src.Actions.SetTool)

local DraggerWrapper = require(Plugin.Src.Components.Draggers.DraggerWrapper)

local FFlagImprovePluginSpeed_AnimationClipEditor = game:GetFastFlag("ImprovePluginSpeed_AnimationClipEditor")

-- analytics
local AnalyticsHandlers = require(Plugin.Src.Resources.AnalyticsHandlers)

local AnimationClipEditorPlugin = Roact.PureComponent:extend("AnimationClipEditorPlugin")

function AnimationClipEditorPlugin:handleButtonClick(plugin)
	if RunService:IsRunning() then
		showBlockingDialog(plugin, Roact.createElement(ErrorDialogContents, {
			ErrorType = Constants.EDITOR_ERRORS.OpenedWhileRunning,
			ErrorKey = Constants.EDITOR_ERRORS_KEY,
			ErrorHeader = Constants.EDITOR_ERRORS_HEADER_KEY,
		}))
	else
		self:setState(function(state)
			return {
				enabled = not state.enabled,
			}
		end)
	end
end

function AnimationClipEditorPlugin:createPluginButton(plugin, localization)
	if FFlagImprovePluginSpeed_AnimationClipEditor then
		self.toolbar = self.props.pluginLoaderContext.toolbar
		self.mainButton = self.props.pluginLoaderContext.mainButton
	else
		self.toolbar = plugin:CreateToolbar(localization:getText("Plugin", "Toolbar"))
		self.mainButton = self.toolbar:CreateButton(localization:getText("Plugin", "Button"),
			localization:getText("Plugin", "Description"), Constants.PLUGIN_BUTTON_IMAGE)
	end
end

function AnimationClipEditorPlugin:init(initialProps)
	assert(initialProps.plugin ~= nil, "AnimationClipEditorPlugin requires a Plugin.")

	local middlewares = {Rodux.thunkMiddleware}
	if DebugFlags.LogRoduxEvents() then
		table.insert(middlewares, Rodux.loggerMiddleware)
	end
	self.store = Rodux.Store.new(MainReducer, nil, middlewares)

	self.localization = Localization.new({
		pluginName = Constants.PLUGIN_NAME,
		stringResourceTable = DevelopmentReferenceTable,
		translationResourceTable = TranslationReferenceTable,
	})

	self.actions = ContextServices.PluginActions.new(initialProps.plugin, MakePluginActions(initialProps.plugin, self.localization))

	self.state = {
		enabled = not FFlagImprovePluginSpeed_AnimationClipEditor,
		pluginGui = nil,
	}

	self.signals = Signals.new(Constants.SIGNAL_KEYS)

	self.analytics = ContextServices.Analytics.new(AnalyticsHandlers)

	self.onDockWidgetLoaded = function(dockWidget)
		self.dockWidget = dockWidget
	end

	self:createPluginButton(initialProps.plugin, self.localization)

	self.mainButton:SetActive(self.state.enabled)

	if FFlagImprovePluginSpeed_AnimationClipEditor then
		initialProps.pluginLoaderContext.mainButtonClickedSignal:Connect(function()
			self:handleButtonClick(initialProps.plugin)
		end)
	else
		self.mainButton.Click:connect(function()
			if RunService:IsRunning() then
				showBlockingDialog(initialProps.plugin, Roact.createElement(ErrorDialogContents, {
					ErrorType = Constants.EDITOR_ERRORS.OpenedWhileRunning,
					ErrorKey = Constants.EDITOR_ERRORS_KEY,
					ErrorHeader = Constants.EDITOR_ERRORS_HEADER_KEY,
				}))
			else
				self:setState(function(state)
					return {
						enabled = not state.enabled,
					}
				end)
			end
		end)
	end

	self.onDockWidgetEnabledChanged = function(enabled)
		if self.state.enabled == enabled then
			return
		end

		self:setState({
			enabled = enabled,
		})
	end

	-- If we deactivated because the user selected a ribbon tool,
	-- it is likely they were trying to use move/rotate in the editor.
	-- Use it to switch the current tool.
	self.onToolSelected = function(tool)
		local plugin = initialProps.plugin
		if tool == Enum.RibbonTool.Select
			or tool == Enum.RibbonTool.Rotate
			or tool == Enum.RibbonTool.Move
			or tool == Enum.RibbonTool.Scale then

			if self.state.enabled then
				local heartbeat
				heartbeat = RunService.Heartbeat:Connect(function()
					heartbeat:Disconnect()
					self.mainButton:SetActive(true)
					plugin:Activate(true)
				end)

				tool = (tool == Enum.RibbonTool.Scale and Enum.RibbonTool.Select) or tool
				self.store:dispatch(SetTool(tool))
				self.analytics:report("onToolChanged", tool.Name)
				return true
			end
		end
	end
	self.deactivationListener = self.props.plugin.Deactivation:Connect(function()
		local plugin = initialProps.plugin
		local tool = plugin:GetSelectedRibbonTool()
		if tool ~= Enum.RibbonTool.None then
			if self.onToolSelected(tool) then
				return
			end
		end
		if self.state.enabled then
			self.store:dispatch(ReleaseEditor(self.analytics))
		end
	end)

	self.mouse = self.props.plugin:GetMouse()

	self.theme = Theme.new()
	self.closeWidget = function()
		if game:GetFastFlag("AnimationEditorDisableOnClosing") then
			self:setState({
				enabled = false,
			})
		else
			self:setState({
			})
		end
	end
end

function AnimationClipEditorPlugin:getPluginSettings()
	local plugin = self.props.plugin
	local snapMode = plugin:GetSetting("SnapMode")
	-- Legacy snap preference
	local snapToKeys = plugin:GetSetting("SnapToKeys")
	local showAsSeconds = plugin:GetSetting("ShowAsSeconds")

	if snapMode ~= nil then
		self.store:dispatch(SetSnapMode(snapMode))
	elseif snapToKeys ~= nil then
		self.store:dispatch(SetSnapMode(snapToKeys and Constants.SNAP_MODES.Keyframes or Constants.SNAP_MODES.Frames))
	else
		self.store:dispatch(SetSnapMode(Constants.SNAP_MODES.Keyframes))
	end

	if showAsSeconds ~= nil then
		self.store:dispatch(SetShowAsSeconds(showAsSeconds))
	end
end

function AnimationClipEditorPlugin:setPluginSettings()
	local plugin = self.props.plugin
	local status = self.store:getState().Status
	plugin:SetSetting("ShowAsSeconds", status.ShowAsSeconds)
	plugin:SetSetting("SnapMode", status.SnapMode)
end

function AnimationClipEditorPlugin:didMount()
	self:setState({
		pluginGui = self.dockWidget,
		enabled = self.dockWidget.Enabled,
	})
	self:getPluginSettings()
end

function AnimationClipEditorPlugin:willUnmount()
	if self.deactivationListener then
		self.deactivationListener:Disconnect()
	end
	self:setPluginSettings()
	self.theme:destroy()
end

function AnimationClipEditorPlugin:render()
	local props = self.props

	local store = self.store
	local localization = self.localization
	local plugin = props.plugin
	local actions = self.actions
	local analytics = self.analytics
	local mouse = self.mouse
	local theme = self.theme

	local pluginGui = self.state.pluginGui
	local pluginGuiLoaded = pluginGui ~= nil

	local enabled = self.state.enabled
	self.mainButton:SetActive(enabled)

	if FFlagImprovePluginSpeed_AnimationClipEditor then
		return Roact.createElement(DockWidget, {
			Title = localization:getText("Plugin", "Name"),
			Name = "AnimationClipEditor",
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Widget = props.pluginLoaderContext.mainDockWidget,
			Enabled = enabled,

			[Roact.Ref] = self.onDockWidgetLoaded,
			[Roact.Change.Enabled] = self.onDockWidgetEnabledChanged,
			OnClose = self.closeWidget,
		}, {
			MainProvider = pluginGuiLoaded and enabled and Roact.createElement(MainProvider, {
				theme = theme,
				focusGui = pluginGui,
				store = store,
				plugin = plugin,
				localization = localization,
				pluginActions = actions,
				mouse = mouse,
				analytics = analytics,
				signals = self.signals,
			}, {
				AnimationClipEditor = Roact.createElement(AnimationClipEditor),
				Dragger = Roact.createElement(DraggerWrapper),
			})
		})
	else
		return Roact.createElement(DockWidget, {
			Plugin = plugin,
			Title = localization:getText("Plugin", "Name"),
			Name = "AnimationClipEditor",
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,

			InitialDockState = Enum.InitialDockState.Bottom,
			InitialEnabled = false,
			InitialEnabledShouldOverrideRestore = true,
			Size = Constants.MAIN_FLOATING_SIZE,
			MinSize = Constants.MAIN_MINIMUM_SIZE,
			Enabled = enabled,

			[Roact.Ref] = self.onDockWidgetLoaded,
			[Roact.Change.Enabled] = self.onDockWidgetEnabledChanged,
			OnClose = self.closeWidget,
		}, {
			MainProvider = pluginGuiLoaded and enabled and Roact.createElement(MainProvider, {
				theme = theme,
				focusGui = pluginGui,
				store = store,
				plugin = plugin,
				localization = localization,
				pluginActions = actions,
				mouse = mouse,
				analytics = analytics,
				signals = self.signals,
			}, {
				AnimationClipEditor = Roact.createElement(AnimationClipEditor),
				Dragger = Roact.createElement(DraggerWrapper),
			})
		})
	end
end


return AnimationClipEditorPlugin
