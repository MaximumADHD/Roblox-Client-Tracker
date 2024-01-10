local CoreLogger = require(script.Parent.Parent.Logger)
local VoiceChatLogger = CoreLogger:new("VoiceChatLogger")

return function(name)
	return VoiceChatLogger:new(name)
end
