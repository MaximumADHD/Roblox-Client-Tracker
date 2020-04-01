local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local Actions = script.Parent.Parent.Actions
local UpdateChatMessages = require(Actions.UpdateChatMessages)
local UpdateChatVisible = require(Actions.UpdateChatVisible)
local SetCanChat = require(Actions.SetCanChat)

local initialChatState = {
	canChat = false,
	visible = true,
	lastReadMessages = 0,
	unreadMessages = 0,
}

local Chat = Rodux.createReducer(initialChatState, {
	[UpdateChatMessages.name] = function(state, action)
		if state.visible then
			return {
				canChat = state.canChat,
				visible = true,
				lastReadMessages = action.messages,
				unreadMessages = 0,
			}
		else
			return {
				canChat = state.canChat,
				visible = false,
				lastReadMessages = state.lastReadMessages,
				unreadMessages = action.messages - state.lastReadMessages,
			}
		end
	end,

	[UpdateChatVisible.name] = function(state, action)
		if action.visible then
			return {
				canChat = state.canChat,
				visible = true,
				lastReadMessages = state.lastReadMessages + state.unreadMessages,
				unreadMessages = 0,
			}
		else
			return {
				canChat = state.canChat,
				visible = false,
				lastReadMessages = state.lastReadMessages,
				unreadMessages = state.unreadMessages,
			}
		end
	end,

	[SetCanChat.name] = function(state, action)
		return {
			canChat = action.canChat,
			visible = state.visible,
			lastReadMessages = state.lastReadMessages,
			unreadMessages = state.unreadMessages,
		}
	end,
})

return Chat
