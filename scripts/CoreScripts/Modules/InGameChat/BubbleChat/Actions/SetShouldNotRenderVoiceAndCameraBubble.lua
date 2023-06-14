local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(shouldNotRenderVoiceAndCameraBubble: boolean)
	
	return {
		shouldNotRenderVoiceAndCameraBubble = shouldNotRenderVoiceAndCameraBubble
	}
end)
