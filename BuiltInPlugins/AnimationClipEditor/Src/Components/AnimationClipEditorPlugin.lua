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
local SourceStrings = Plugin.Src.Resources.SourceStrings
local LocalizedStrings = Plugin.Src.Resources.LocalizedStrings

local Constants = require(Plugin.Src.Util.Constants)
local DebugFlags = require(Plugin.Src.Util.DebugFlags)
local MakePluginActions = require(Plugin.Src.Util.MakePluginActions)
local showBlockingDialog = require(Plugin.Src.Util.showBlockingDialog)

local ReleaseEditor = require(Plugin.Src.Thunks.ReleaseEditor)
local SetDefaultEulerAnglesOrder = require(Plugin.Src.Actions.SetDefaultEulerAnglesOrder)
local SetDefaultRotationType = require(Plugin.Src.Actions.SetDefaultRotationType)
local SetShowAsSeconds = require(Plugin.Src.Actions.SetShowAsSeconds)
local SetSnapMode = require(Plugin.Src.Actions.SetSnapMode)
local SetTool = require(Plugin.Src.Actions.SetTool)

local DraggerWrapper = require(Plugin.Src.Components.Draggers.DraggerWrapper)

local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)
local GetFFlagFaceControlsEditorShowCallout = require(Plugin.LuaFlags.GetFFlagFaceControlsEditorShowCallout)

-- analytics
local AnalyticsHandlers = require(Plugin.Src.Resources.AnalyticsHandlers)

local AnimationClipEditorPlugin = Roact.PureComponent:extend("AnimationClipEditorPlugin")

local calloutController = nil

local FStringFaceControlsEditorLink = game:GetFastString("FaceControlsEditorLink")
local GetFFlagFaceControlsEditorBugBash3Update = require(Plugin.LuaFlags.GetFFlagFaceControlsEditorBugBash3Update)

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
	self.toolbar = self.props.pluginLoaderContext.toolbar
	self.mainButton = self.props.pluginLoaderContext.mainButton
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
		stringResourceTable = SourceStrings,
		translationResourceTable = LocalizedStrings,
	})

	if GetFFlagFaceControlsEditorShowCallout() then
		local CalloutController = require(Plugin.Src.Util.CalloutController)
		calloutController = CalloutController.new()
		do
			local definitionId = "FaceControlsEditorCallout"

			local title = self.localization:getText("FaceControlsEditorButtonCallout", "Title")
			local description = self.localization:getText("FaceControlsEditorButtonCallout", "Description")
			local learnMoreUrl = "https://create.roblox.com/docs/avatar/dynamic-heads/animating-dynamic-heads"
			if GetFFlagFaceControlsEditorBugBash3Update() then
				learnMoreUrl = FStringFaceControlsEditorLink
			end

			calloutController:defineCallout(definitionId, title, description, learnMoreUrl)
		end
	end

	self.actions = ContextServices.PluginActions.new(initialProps.plugin, MakePluginActions(initialProps.plugin, self.localization))

	self.state = {
		enabled = false,
		pluginGui = nil,
	}

	self.signals = Signals.new(Constants.SIGNAL_KEYS)

	self.analytics = ContextServices.Analytics.new(AnalyticsHandlers)

	self.onDockWidgetLoaded = function(dockWidget)
		self.dockWidget = dockWidget
	end

	self:createPluginButton(initialProps.plugin, self.localization)

	self.mainButton:SetActive(self.state.enabled)

	initialProps.pluginLoaderContext.mainButtonClickedSignal:Connect(function()
		self:handleButtonClick(initialProps.plugin)
	end)

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

	self.theme = Theme()
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

	if not GetFFlagCurveEditor() then
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
	else
		local snapMode = plugin:GetSetting(Constants.SETTINGS.SnapMode)
		local showAsSeconds = plugin:GetSetting(Constants.SETTINGS.ShowAsSeconds)

		-- TODO: This will progressively (and silently) convert old user preferences to their new names (prefixed with ACE_)
		-- We can freely remove the deprecated code after a few months. Only inactive users (who haven't opened the ACE once)
		-- will lose their settings. Chances are they won't remember those settings anyway :-]
		if snapMode ~= nil then
			self.store:dispatch(SetSnapMode(snapMode))
		else
			snapMode = plugin:GetSetting("SnapMode")
			if snapMode ~= nil then
				self.store:dispatch(SetSnapMode(snapMode))
			else
				self.store:dispatch(SetSnapMode(Constants.SNAP_MODES.Keyframes))
			end
		end

		if showAsSeconds ~= nil then
			self.store:dispatch(SetShowAsSeconds(showAsSeconds))
		else
			showAsSeconds = plugin:GetSetting("ShowAsSeconds")
			if showAsSeconds ~= nil then
				self.store:dispatch(SetShowAsSeconds(showAsSeconds))
			end
		end

		local rotationType = plugin:GetSetting(Constants.SETTINGS.RotationType)
		if rotationType then
			self.store:dispatch(SetDefaultRotationType(rotationType))
		else
			rotationType = plugin:GetSetting("RotationType")
			if rotationType then
				self.store:dispatch(SetDefaultRotationType(rotationType))
			else
				self.store:dispatch(SetDefaultRotationType(Constants.TRACK_TYPES.EulerAngles))
			end
		end

		local eulerAnglesOrder = plugin:GetSetting(Constants.SETTINGS.EulerAnglesOrder)
		self.store:dispatch(SetDefaultEulerAnglesOrder(if eulerAnglesOrder
			then Enum.RotationOrder[eulerAnglesOrder]
			else Enum.RotationOrder.XYZ)
		)
	end
end

function AnimationClipEditorPlugin:setPluginSettings()
	local plugin = self.props.plugin
	local status = self.store:getState().Status
	if not GetFFlagCurveEditor() then
		plugin:SetSetting("ShowAsSeconds", status.ShowAsSeconds)
		plugin:SetSetting("SnapMode", status.SnapMode)
	else
		plugin:SetSetting(Constants.SETTINGS.ShowAsSeconds, status.ShowAsSeconds)
		plugin:SetSetting(Constants.SETTINGS.SnapMode, status.SnapMode)
		plugin:SetSetting(Constants.SETTINGS.RotationType, status.DefaultRotationType)
		plugin:SetSetting(Constants.SETTINGS.EulerAnglesOrder, status.DefaultEulerAnglesOrder)
	end
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
			calloutController = calloutController,
		}, {
			AnimationClipEditor = Roact.createElement(AnimationClipEditor),
			Dragger = Roact.createElement(DraggerWrapper),
		})
	})
end

return AnimationClipEditorPlugin
