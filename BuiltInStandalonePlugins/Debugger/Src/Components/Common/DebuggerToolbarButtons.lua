local main = script.Parent.Parent.Parent.Parent
local Roact = require(main.Packages.Roact)
local RoactRodux = require(main.Packages.RoactRodux)

local Framework = require(main.Packages.Framework)
local StudioUI = Framework.StudioUI

local ContextServices = Framework.ContextServices
local PluginActions = ContextServices.PluginActions

local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton

local Constants = require(main.Src.Util.Constants)

local SetPausedState = require(main.Src.Actions.Common.SetPausedState)

local DebuggerToolbarButtons = Roact.PureComponent:extend("DebuggerToolbarButtons")

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

	self.onStepOver = function()
		local debuggerConnectionManager = game:GetService("DebuggerConnectionManager")
		local connection = debuggerConnectionManager:GetConnectionById(self.props.CurrentConnectionId)
		connection:Step(self.getThreadForStepping(connection), function() end)
	end

	self.onStepInto = function()
		local debuggerConnectionManager = game:GetService("DebuggerConnectionManager")
		local connection = debuggerConnectionManager:GetConnectionById(self.props.CurrentConnectionId)
		connection:StepIn(self.getThreadForStepping(connection), function() end)
	end

	self.onStepOut = function()
		local debuggerConnectionManager = game:GetService("DebuggerConnectionManager")
		local connection = debuggerConnectionManager:GetConnectionById(self.props.CurrentConnectionId)
		connection:StepOut(self.getThreadForStepping(connection), function() end)
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
	self.connections  = {}
	self.shortcuts = {}
	self:addAction(pluginActions:get(Constants.StepActionIds.stepOverActionV2), self.onStepOver)
	self:addAction(pluginActions:get(Constants.StepActionIds.stepIntoActionV2), self.onStepInto)
	self:addAction(pluginActions:get(Constants.StepActionIds.stepOutActionV2), self.onStepOut)
end

function DebuggerToolbarButtons:renderButtons(toolbar)
	local uiService = game:GetService("DebuggerUIService")
	local connectionForPlayDataModel = false
	if self.props.CurrentConnectionId ~= -1 then
		connectionForPlayDataModel = uiService:IsConnectionForPlayDataModel(self.props.CurrentConnectionId)
	end
	local isPaused = self.props.IsPaused
	
	return {
		ResumeButton = Roact.createElement(PluginButton, {
			Name = "simulationResumeActionV2",
			Toolbar = toolbar,
			Active = false,
			Enabled = isPaused,
			Title = RESUME_META_NAME,
			Tooltip = "", --todo we have this
			Icon = "rbxasset://textures/Debugger/Resume.png",
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
			Icon = "rbxasset://textures/Debugger/Pause.png",
			OnClick = self.onPause,
			ClickableWhenViewportHidden = true,
		}),
		StepOverButton = Roact.createElement(PluginButton, {
			Name = "stepOverActionV2",
			Toolbar = toolbar,
			Active = false,
			Enabled = self.props.CurrentThreadId ~= nil,
			Title = STEPOVER_META_NAME,
			Tooltip = "",
			Icon = "rbxasset://textures/Debugger/Step-Over.png",
			OnClick = self.onStepOver,
			ClickableWhenViewportHidden = true,
		}),
		StepIntoButton = Roact.createElement(PluginButton, {
			Name = "stepIntoActionV2",
			Toolbar = toolbar,
			Active = false,
			Enabled = self.props.CurrentThreadId ~= nil,
			Title = STEPINTO_META_NAME,
			Tooltip = "",
			Icon = "rbxasset://textures/Debugger/Step-In.png",
			OnClick = self.onStepInto,
			ClickableWhenViewportHidden = true,
		}),
		StepOutButton = Roact.createElement(PluginButton, {
			Name = "stepOutActionV2",
			Toolbar = toolbar,
			Active = false,
			Enabled = self.props.CurrentThreadId ~= nil,
			Title = STEPOUT_META_NAME,
			Tooltip = "",
			Icon = "rbxasset://textures/Debugger/Step-Out.png",
			OnClick = self.onStepOut,
			ClickableWhenViewportHidden = true,
		}),
	}
end

function DebuggerToolbarButtons:render()
	if self.shortcuts then
		for _,action in pairs(self.shortcuts) do
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
	PluginActions = PluginActions,
})(DebuggerToolbarButtons)

DebuggerToolbarButtons = RoactRodux.connect(
	function(state, props)
		local common = state.Common
		local isPaused = common.isPaused
		local currentThreadId = common.debuggerConnectionIdToCurrentThreadId[common.currentDebuggerConnectionId]
		local currentConnectionId = common.currentDebuggerConnectionId
		
		return {
			IsPaused = isPaused,
			CurrentThreadId = currentThreadId,
			CurrentConnectionId = currentConnectionId,
		}
	end,

	function(dispatch)
		return {
			onSetPausedState = function(pause)
				return dispatch(SetPausedState(pause))
			end,
		}
	end
)(DebuggerToolbarButtons)

return DebuggerToolbarButtons
