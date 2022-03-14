local CorePackages = game:GetService("CorePackages")
local Lumberyak = require(CorePackages.Lumberyak)

local logger = Lumberyak.Logger.new(nil, "CoreLogger")

local fastLevel = game:DefineFastString("DebugLuaLogLevel", "")
local level = logger.Levels.fromString(fastLevel)
local pattern = game:DefineFastString("DebugLuaLogPattern", "")

logger:setContext({prefix = "[{loggerName}] - "})
logger:addSink({
	maxLevel = level,
	log = function(_, message, context)
		if string.match(message, pattern) then
			print(message)
		end
	end,
})

return logger
