local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Lumberyak = require(Packages.Lumberyak)

local Logger = Lumberyak.Logger
local DEFAUTL_LOG_LEVEL = Logger.Levels.Info

-- Usage:
-- local Logger = require(Foundation.Logger)
-- ....
-- Logger:info("log message")
-- See lumberyak for detailed interface.

-- To enable a more detailed log, please turn on _G_.__FOUNDATION_TRACE_LOG__

local DefaultFoundationSink = {
	maxLevel = DEFAUTL_LOG_LEVEL,
	log = function(_self, message, context)
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
	logger:addSink(DefaultFoundationSink)
	return logger
end

local defaultLogger = createDefaultLogger("Foundation")

local FoundationLogger = {
	foundationSink = DefaultFoundationSink,
	setLogLevel = function(self: FoundationLogger, maxLevel: string)
		self.foundationSink.maxLevel = maxLevel
		self:addSink(self.foundationSink) -- add the save sink to override the maxLevel
	end,
	enableTraceLog = function(self: FoundationLogger)
		self:setLogLevel(Logger.Levels.Trace)
	end,
}

setmetatable(FoundationLogger, {
	__index = defaultLogger,
})

export type FoundationLogger = typeof(FoundationLogger)

return FoundationLogger
