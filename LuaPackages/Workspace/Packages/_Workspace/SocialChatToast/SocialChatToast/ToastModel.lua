local ToastModel = {}

function ToastModel.new(id, messageKey, messageArguments: any?)
	local self = {}

	self.messageKey = messageKey
	self.messageArguments = messageArguments
	self.id = id

	return self
end

return ToastModel
