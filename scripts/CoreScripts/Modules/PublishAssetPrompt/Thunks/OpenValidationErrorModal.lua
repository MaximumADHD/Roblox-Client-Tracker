-- Thunk to open the ValidationErrorModal that appears over a prompt if validation Error occurred
local PublishAssetPrompt = script.Parent.Parent
local OpenValidationErrorModal = require(PublishAssetPrompt.Actions.OpenValidationErrorModal)

return function(store)
	store:dispatch(OpenValidationErrorModal())
end
