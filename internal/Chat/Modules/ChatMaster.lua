local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LuaChat = CoreGui.RobloxGui.Modules.LuaChat

local Config = require(LuaChat.Config)
local AppState = require(LuaChat.AppState)
local DebugManager = require(LuaChat.Debug.DebugManager)
local ActionType = require(LuaChat.ActionType)
local DialogInfo = require(LuaChat.DialogInfo)

local Intent = DialogInfo.Intent

local ChatMaster = {}
ChatMaster.__index = ChatMaster

ChatMaster.Type = {
	Default = "Default",
	GameShare = "GameShare",
}

function ChatMaster.new()
	local self = {}
	setmetatable(self, ChatMaster)

	if Players.NumPlayers == 0 then
		Players.PlayerAdded:Wait()
	end

	-- Get rid of this once we can detect if play solo or not
	if CoreGui:FindFirstChild("MobileChat") then
		CoreGui.MobileChat:Destroy()
	end

	-- In debug mode, load the DebugManager overlay and logging system
	if Config.Debug then
		warn("CHAT DEBUG MODE IS ENABLED")
		DebugManager:Initialize(CoreGui)
		DebugManager:Start()
	end

	-- Reduce render quality to optimize performance
	settings().Rendering.QualityLevel = 1

	self._appState = AppState.new(CoreGui)
	self._chatRunning = false
	self._gameShareRunning = false

	return self
end

function ChatMaster:Start(startType, parameters)
	if not startType then
		startType = ChatMaster.Type.Default
	end

	RunService:setThrottleFramerateEnabled(true)
	RunService:Set3dRenderingEnabled(false)
	self._appState.store:Dispatch({
		type = ActionType.ToggleChatPaused,
		screenManager = self._appState.screenManager,
		value = false,
	})

	if startType == ChatMaster.Type.Default then

		if not next(self._appState.store:GetState().Location.current) then
			self._appState.store:Dispatch({
				type = ActionType.SetRoute,
				intent = Intent.ConversationHub,
				parameters = {},
			})
		end
		self._chatRunning = true

	elseif startType == ChatMaster.Type.GameShare then

		self._appState.store:Dispatch({
			type = ActionType.SetRoute,
			intent = Intent.GameShare,
			parameters = parameters
		})

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

	self._chatRunning = false
	self._gameShareRunning = false

	RunService:setThrottleFramerateEnabled(false)
	RunService:Set3dRenderingEnabled(true)
	self._appState.store:Dispatch({
		type = ActionType.ToggleChatPaused,
		screenManager = self._appState.screenManager,
		value = true,
	})
end

return ChatMaster