local PublishAssetPrompt = script.Parent.Parent
local CloseResultModal = require(PublishAssetPrompt.Actions.CloseResultModal)

return function(store)
	store:dispatch(CloseResultModal())
end
