local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local StudioUI = Framework.StudioUI

local isHighDpiEnabled = Framework.Util.isHighDpiEnabled
local FFlagHighDpiIcons = game:GetFastFlag("SVGLuaIcons") and isHighDpiEnabled()

local ContextServices = Framework.ContextServices
local Analytics = ContextServices.Analytics
local PluginActions = ContextServices.PluginActions
local AnalyticsEventNames = require(Plugin.Src.Resources.AnalyticsEventNames)

local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton

local Constants = require(Plugin.Src.Util.Constants)

local SetPausedState = require(Plugin.Src.Actions.Common.SetPausedState)

local FFlagStudioDebuggerFixStepButtonsOnError = require(Plugin.Src.Flags.GetFFlagStudioDebuggerFixStepButtonsOnError)

local DebuggerToolbarButtons = Roact.PureComponent:extend("DebuggerToolbarButtons")

local FFlagStudioClearThreadIdOnStepping = game:GetFastFlag("StudioClearThreadIdOnStepping")

-- these strings need to correspond to strings in StudioPluginHost.cpp
local RESUME_META_NAME = "Resume"
local PAUSE_META_NAME = "Pause"
local STEPOVER_META_NAME = "StepOver"
local STEPINTO_META_NAME = "StepInto"
local STEPOUT_META_NAME = "StepOut"

local TOOLBAR_NAME = "Debugger"

function DebuggerToolbarButtons:init(props)
	self.getThreadForStepping = function(connection)
		return connection:GetThreadById(self.props.CurrentThreadId)
	end

	self.onResume = function()
		props.onSetPausedState(false)
		local uiService = game:GetService("DebuggerUIService")
		uiService:Resume()
	end

	self.onPause = function()
		local uiService = game:GetService("DebuggerUIService")
		uiService:Pause()
	end

	self.onStepOver = function(actionSource)
		local debuggerConnectionManager = game:GetService("DebuggerConnectionManager")
		local connection = debuggerConnectionManager:GetConnectionById(self.props.CurrentConnectionId)
		if self.props.CurrentThreadId == nil or connection == nil then
			return
		end

		local thread = self.getThreadForStepping(connection)
		connection:Step(thread, function() end)

		if FFlagStudioClearThreadIdOnStepping then
			self.props.onSetPausedState(false)
		end

		self.props.Analytics:report(AnalyticsEventNames.CallstackStepOver, actionSource)
	end

	self.onStepInto = function(actionSource)
		local debuggerConnectionManager = game:GetService("DebuggerConnectionManager")
		local connection = debuggerConnectionManager:GetConnectionById(self.props.CurrentConnectionId)
		if self.props.CurrentThreadId == nil or connection == nil then
			return
		end

		local thread = self.getThreadForStepping(connection)
		connection:StepIn(thread, function() end)

		if FFlagStudioClearThreadIdOnStepping then
			self.props.onSetPausedState(false)
		end

		self.props.Analytics:report(AnalyticsEventNames.CallstackStepInto, actionSource)
	end

	self.onStepOut = function(actionSource)
		local debuggerConnectionManager = game:GetService("DebuggerConnectionManager")
		local connection = debuggerConnectionManager:GetConnectionById(self.props.CurrentConnectionId)
		if self.props.CurrentThreadId == nil or connection == nil then
			return
		end

		local thread = self.getThreadForStepping(connection)
		connection:StepOut(thread, function()	end)

		if FFlagStudioClearThreadIdOnStepping then
			self.props.onSetPausedState(false)
		end

		self.props.Analytics:report(AnalyticsEventNames.CallstackStepOut, actionSource)
	end
end

function DebuggerToolbarButtons:addAction(action, func)
	if action then
		action.Enabled = true
		table.insert(self.shortcuts, action)
		table.insert(self.connections, action.Triggered:Connect(func))
	end
end

function DebuggerToolbarButtons:didMount()
	local pluginActions = self.props.PluginActions
	self.connections = {}
	self.shortcuts = {}
	self:addAction(pluginActions:get(Constants.StepActionIds.stepOverActionV2), function()
		self.onStepOver("PluginAction")
	end)
	self:addAction(pluginActions:get(Constants.StepActionIds.stepIntoActionV2), function()
		self.onStepInto("PluginAction")
	end)
	self:addAction(pluginActions:get(Constants.StepActionIds.stepOutActionV2), function()
		self.onStepOut("PluginAction")
	end)
end

function DebuggerToolbarButtons:renderButtons(toolbar)
	local uiService = game:GetService("DebuggerUIService")
	local connectionForPlayDataModel = false
	if self.props.CurrentConnectionId ~= Constants.kInvalidDebuggerConnectionId then
		connectionForPlayDataModel = uiService:IsConnectionForPlayDataModel(self.props.CurrentConnectionId)
	end
	local isPaused = self.props.IsPaused
	local hitException = self.props.HitException

	return {
		ResumeButton = Roact.createElement(PluginButton, {
			Name = "simulationResumeActionV2",
			Toolbar = toolbar,
			Active = false,
			Enabled = isPaused,
			Title = RESUME_META_NAME,
			Tooltip = "", --todo we have this
			icon = if FFlagHighDpiIcons then "rbxlocaltheme://Resume" else "rbxasset://textures/Debugger/Resume.png",
			OnClick = self.onResume,
			ClickableWhenViewportHidden = true,
		}),
		PauseButton = Roact.createElement(PluginButton, {
			Name = "simulationPauseActionV2",
			Toolbar = toolbar,
			Active = false,
			Enabled = (not isPaused and connectionForPlayDataModel),
			Title = PAUSE_META_NAME,
			Tooltip = "",
			icon = if FFlagHighDpiIcons then "rbxlocaltheme://Pause" else "rbxasset://textures/Debugger/Pause.png",
			OnClick = self.onPause,
			ClickableWhenViewportHidden = true,
		}),
		StepOverButton = Roact.createElement(PluginButton, {
			Name = "stepOverActionV2",
			Toolbar = toolbar,
			Active = false,
			Enabled = self.props.CurrentThreadId ~= nil and not hitException,
			Title = STEPOVER_META_NAME,
			Tooltip = "",
			icon = if FFlagHighDpiIcons then "rbxlocaltheme://StepOver" else "rbxasset://textures/Debugger/Step-Over.png",
			OnClick = function()
				self.onStepOver("ToolbarButton")
			end,
			ClickableWhenViewportHidden = true,
		}),
		StepIntoButton = Roact.createElement(PluginButton, {
			Name = "stepIntoActionV2",
			Toolbar = toolbar,
			Active = false,
			Enabled = self.props.CurrentThreadId ~= nil and not hitException,
			Title = STEPINTO_META_NAME,
			Tooltip = "",
			icon = if FFlagHighDpiIcons then "rbxlocaltheme://StepInto" else "rbxasset://textures/Debugger/Step-In.png",
			OnClick = function()
				self.onStepInto("ToolbarButton")
			end,
			ClickableWhenViewportHidden = true,
		}),
		StepOutButton = Roact.createElement(PluginButton, {
			Name = "stepOutActionV2",
			Toolbar = toolbar,
			Active = false,
			Enabled = self.props.CurrentThreadId ~= nil and not hitException,
			Title = STEPOUT_META_NAME,
			Tooltip = "",
			icon = if FFlagHighDpiIcons then "rbxlocaltheme://StepOut" else "rbxasset://textures/Debugger/Step-Out.png",
			OnClick = function()
				self.onStepOut("ToolbarButton")
			end,
			ClickableWhenViewportHidden = true,
		}),
	}
end

function DebuggerToolbarButtons:render()
	if self.shortcuts then
		for _, action in pairs(self.shortcuts) do
			action.Enabled = self.props.IsPaused
		end
	end

	return Roact.createElement(PluginToolbar, {
		Title = TOOLBAR_NAME,
		RenderButtons = function(toolbar)
			return self:renderButtons(toolbar)
		end,
	})
end

DebuggerToolbarButtons = ContextServices.withContext({
	Analytics = Analytics,
	PluginActions = PluginActions,
})(DebuggerToolbarButtons)

DebuggerToolbarButtons = RoactRodux.connect(function(state, props)
	local common = state.Common
	local isPaused = common.isPaused
	local currentThreadId = common.debuggerConnectionIdToCurrentThreadId[common.currentDebuggerConnectionId]
	local currentConnectionId = common.currentDebuggerConnectionId

	return {
		IsPaused = isPaused,
		CurrentThreadId = currentThreadId,
		CurrentConnectionId = currentConnectionId,
		HitException = if FFlagStudioDebuggerFixStepButtonsOnError() and currentThreadId then common.hitException[currentThreadId] else false,
	}
end, function(dispatch)
	return {
		onSetPausedState = function(pause)
			return dispatch(SetPausedState(pause))
		end,
	}
end)(DebuggerToolbarButtons)

return DebuggerToolbarButtons
