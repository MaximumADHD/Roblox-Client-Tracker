local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local Rodux = require(CorePackages.Packages.Rodux)
local AddMessage = require(script.Parent.Parent.Actions.AddMessage)
local RemoveMessage = require(script.Parent.Parent.Actions.RemoveMessage)
local SetMessageText = require(script.Parent.Parent.Actions.SetMessageText)

local messages = Rodux.createReducer({
	-- [id] = { id, userId, name, text, timestamp }
}, {
	[AddMessage.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.message.id] = action.message
		})
	end,

	[RemoveMessage.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.message.id] = Cryo.None,
		})
	end,

	[SetMessageText.name] = function(state, action)
		local message = state[action.messageId]

		return Cryo.Dictionary.join(state, {
			[action.messageId] = Cryo.Dictionary.join(message, {
				text = action.newText
			})
		})
	end
})

return messages
