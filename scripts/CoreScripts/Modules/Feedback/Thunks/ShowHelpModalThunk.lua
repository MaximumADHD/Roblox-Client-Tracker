--[[
	Simple thunk that dispatches help modal visibility
]]
local FeedbackModule = script.Parent.Parent
local ShowHelpModal = require(FeedbackModule.Actions.ShowHelpModal)

return function(isHelpModalVisible)
	return function(store)
		store:dispatch(ShowHelpModal(isHelpModalVisible))
	end
end
