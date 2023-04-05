local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Rodux = require(CorePackages.Packages.Rodux)
local chatSettings = require(script.Parent.chatSettings)
local messages = require(script.Parent.messages)
local userMessages = require(script.Parent.userMessages)
local voiceState = require(RobloxGui.Modules.VoiceChat.Reducers.voiceState)
local components = require(script.Parent.components)
local playerBillboardSettings = require(script.Parent.playerBillboardSettings)
local GetFFlagPlayerBillboardReducerEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPlayerBillboardReducerEnabled

local chatReducer = Rodux.combineReducers({
	chatSettings = chatSettings,
	messages = messages,
	userMessages = userMessages,
	voiceState = voiceState,
	components = components,
	playerBillboardSettings = if GetFFlagPlayerBillboardReducerEnabled() then playerBillboardSettings else nil,
})

return chatReducer
