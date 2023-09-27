local CoreLogger = require(script.Parent.Parent.Parent.Logger)
local BubbleLogger = CoreLogger:new("BubbleChatLogger")

return function(name)
	return BubbleLogger:new(name)
end
