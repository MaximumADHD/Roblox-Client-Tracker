local Root = script.Parent
local Packages = Root.Parent
local Lumberyak = require(Packages.Lumberyak)

local Logger = Lumberyak.Logger
local DEFAUTL_LOG_LEVEL = Logger.Levels.Info

-- Usage:
-- local Logger = require(UIBlox.Logger)
-- ....
-- Logger:info("log message")
-- See lumberyak for detailed interface.

-- To enable a more detailed log, please turn on UIBloxConfig.enableTraceLevelLog

local DefaultUIBloxSink = {
	maxLevel = DEFAUTL_LOG_LEVEL,
	log = function(self, message, context)
		if context.level == Logger.Levels.Error or context.level == Logger.Levels.Warning then
			warn(message) -- error() will terminate the script. We use warn() instead.
		else
			print(message)
		end
	end,
}

local createDefaultLogger = function(name)
	local logger = Lumberyak.Logger.new(nil, name)
	logger:setContext({ prefix = "[{loggerName} - {level}] - " })
	logger:addSink(DefaultUIBloxSink)
	return logger
end

local defaultLogger = createDefaultLogger("UIBlox")

local UIBloxLogger = {
	uibloxSink = DefaultUIBloxSink,
	setLogLevel = function(self: UIBloxLogger, maxLevel: string)
		self.uibloxSink.maxLevel = maxLevel
		self:addSink(self.uibloxSink) -- add the save sink to override the maxLevel
	end,
	enableTraceLog = function(self: UIBloxLogger)
		self:setLogLevel(Logger.Levels.Trace)
	end,
}

setmetatable(UIBloxLogger, {
	__index = defaultLogger,
})

export type UIBloxLogger = typeof(UIBloxLogger)

return UIBloxLogger
