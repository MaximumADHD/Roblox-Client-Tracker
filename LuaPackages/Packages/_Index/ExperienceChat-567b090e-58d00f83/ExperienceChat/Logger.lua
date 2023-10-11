local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Lumberyak = require(Packages.Lumberyak)

type LogMethod = (Logger, ...string) -> nil

type Sink = {
	maxLevel: number,
	log: (any, string, any) -> nil,
}

type Logger = {
	addSink: (any, Sink) -> nil,
	debug: LogMethod,
	error: LogMethod,
	info: LogMethod,
	setContext: (any, any) -> nil,
	trace: LogMethod,
	warning: LogMethod,
	new: (any, string) -> Logger,
	name: string,
	Levels: {
		fromString: (string) -> number,
	},
}

local logger: Logger = Lumberyak.Logger.new(nil, "ExpChat")

local flagSuccess, logConfig = pcall(function()
	return {
		level = game:DefineFastString("DebugLuaLogLevel", ""),
		pattern = game:DefineFastString("DebugLuaLogPattern", ""),
	}
end)

if not flagSuccess then
	logConfig = {
		level = "debug",
		pattern = "",
	}
end

logger:setContext({ prefix = "[{loggerName} ({level})] - " })
logger:addSink({
	maxLevel = logger.Levels.fromString(logConfig.level),
	log = function(_, message, _context)
		if string.match(message, logConfig.pattern) then
			print(message)
		end
	end,
})

return logger
