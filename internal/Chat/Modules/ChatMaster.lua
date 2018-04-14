local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LuaChat = CoreGui.RobloxGui.Modules.LuaChat

local Config = require(LuaChat.Config)
local AppState = require(LuaChat.AppState)
local DebugManager = require(LuaChat.Debug.DebugManager)
local DialogInfo = require(LuaChat.DialogInfo)

local LuaApp = CoreGui.RobloxGui.Modules.LuaApp

local PerformanceTesting = require(LuaApp.PerformanceTesting)

local Intent = DialogInfo.Intent

local SetRoute = require(LuaChat.Actions.SetRoute)
local ToggleChatPaused = require(LuaChat.Actions.ToggleChatPaused)

local ChatMaster = {}
ChatMaster.__index = ChatMaster

ChatMaster.Type = {
	Default = "Default",
	GameShare = "GameShare",
}

function ChatMaster.new(roduxStore)
	local self = {}
	setmetatable(self, ChatMaster)

	if Players.NumPlayers == 0 then
		Players.PlayerAdded:Wait()
	end

	-- In debug mode, load the DebugManager overlay and logging system
	if Config.Debug then
		warn("CHAT DEBUG MODE IS ENABLED")
		DebugManager:Initialize(CoreGui)
		DebugManager:Start()
	end

	-- Reduce render quality to optimize performance
	if settings():GetFFlag("AppShellManagementRefactor2") then
		local renderSteppedConnection = nil
		renderSteppedConnection = game:GetService("RunService").RenderStepped:connect(function()
			if renderSteppedConnection then
				renderSteppedConnection:Disconnect()
			end
			settings().Rendering.QualityLevel = 1
		end)
	else
		settings().Rendering.QualityLevel = 1
	end

	self._appState = AppState.new(CoreGui, roduxStore)
	self._chatRunning = false
	self._gameShareRunning = false

	PerformanceTesting:Initialize(self._appState)

	return self
end

function ChatMaster:Start(startType, parameters)
	if not startType then
		startType = ChatMaster.Type.Default
	end

	RunService:setThrottleFramerateEnabled(Config.PerformanceTestingMode == Enum.VirtualInputMode.None)

	RunService:Set3dRenderingEnabled(false)
	self._appState.store:Dispatch(ToggleChatPaused(false))

	if startType == ChatMaster.Type.Default then

		if not next(self._appState.store:GetState().ChatAppReducer.Location.current) then
			self._appState.store:Dispatch(SetRoute(Intent.ConversationHub, {}))
		end
		self._chatRunning = true

	elseif startType == ChatMaster.Type.GameShare then

		self._appState.store:Dispatch(SetRoute(Intent.GameShare, parameters))
		self._gameShareRunning = true
	end
end

function ChatMaster:Stop(stopType)
	if not stopType then
		stopType = ChatMaster.Type.Default
	end

	if stopType == ChatMaster.Type.Default and self._gameShareRunning then
		warn('cannot stop chat while share game to chat is running')
		return
	end

	if stopType == ChatMaster.Type.GameShare and self._chatRunning then
		warn('cannot stop share game to chat while chat is running')
		return
	end

	PerformanceTesting:Stop()

	self._chatRunning = false
	self._gameShareRunning = false

	RunService:setThrottleFramerateEnabled(false)
	RunService:Set3dRenderingEnabled(true)
	self._appState.store:Dispatch(ToggleChatPaused(true))
end

return ChatMaster
