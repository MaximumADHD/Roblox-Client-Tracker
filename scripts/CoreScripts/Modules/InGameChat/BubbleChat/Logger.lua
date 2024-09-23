local CorePackages = game:GetService("CorePackages")
local CoreLogger = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger
local BubbleLogger = CoreLogger:new("BubbleChatLogger")

return function(name)
	return BubbleLogger:new(name)
end
