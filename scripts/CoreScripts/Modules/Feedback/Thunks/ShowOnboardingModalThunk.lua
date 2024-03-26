--[[
	Simple thunk that dispatches onboarding modal visibility
]]
local FeedbackModule = script.Parent.Parent
local ShowOnboardingModal = require(FeedbackModule.Actions.ShowOnboardingModal)

return function(isOnboardingModalVisible)
	return function(store)
		store:dispatch(ShowOnboardingModal(isOnboardingModalVisible))
	end
end
