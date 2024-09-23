local CorePackages = game:GetService("CorePackages")
local CoreLogger = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger
local VoiceChatLogger = CoreLogger:new("VoiceChatLogger")

return function(name)
	return VoiceChatLogger:new(name)
end
