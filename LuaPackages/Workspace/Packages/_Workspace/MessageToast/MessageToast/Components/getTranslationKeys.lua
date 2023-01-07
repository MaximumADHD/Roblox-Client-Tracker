local MessageToast = script.Parent.Parent
local TextKeys = require(MessageToast.Common.TextKeys)
local Types = require(MessageToast.Common.Types)

local messageKeys: { [Types.MessageTypes]: { [string]: string } } = {
	[Types.DefaultError] = {
		toastTitle = TextKeys.DefaultErrorTitle,
		toastSubtitle = TextKeys.DefaultErrorSubtitle,
	},
}

return function(messageType: Types.MessageTypes, overrides: { [string]: string }?): { [string]: string }
	if messageType == Types.Custom and overrides then
		return overrides
	end

	return messageKeys[messageType]
end
