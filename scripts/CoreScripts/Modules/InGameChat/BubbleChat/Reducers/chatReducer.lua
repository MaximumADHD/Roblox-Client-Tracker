local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)
local chatSettings = require(script.Parent.chatSettings)
local messages = require(script.Parent.messages)
local userMessages = require(script.Parent.userMessages)

local chatReducer = Rodux.combineReducers({
	chatSettings = chatSettings,
	messages = messages,
	userMessages = userMessages,
})

return chatReducer
