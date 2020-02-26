local Root = script.Parent.Parent
local Cryo = require(Root.Cryo)

local Logger = {}
Logger.__index = Logger

Logger.Levels = {
	Error = "Error",
	Warning = "Warning",
	Info = "Info",
	Debug = "Debug",
	Trace = "Trace",
}

local levelOrder = {
	Logger.Levels.Error,
	Logger.Levels.Warning,
	Logger.Levels.Info,
	Logger.Levels.Debug,
	Logger.Levels.Trace,
}

local levelRank = {
	[Logger.Levels.Error] = 1,
	[Logger.Levels.Warning] = 2,
	[Logger.Levels.Info] = 3,
	[Logger.Levels.Debug] = 4,
	[Logger.Levels.Trace] = 5,
}

function Logger.new(parent, name)
	local logger = {
		name = name,
		sinks = {},
		children = {},
		parent = parent,
		context = {},
		dirty = true,
		active = {},
		cache = {
			sinks = {},
			context = {},
		}
	}

	for k, _ in pairs(Logger.Levels) do
		if parent then
			logger.active[k] = parent.active[k]
		else
			logger.active[k] = false
		end
	end

	if parent then
		parent.children[logger] = true
	end

	setmetatable(logger, Logger)
	return logger
end

-- Activate `level` and above logging levels.
local function setActive(level, node)
	for _, k in ipairs(levelOrder) do
		node.active[k] = true
		if k == level then
			break
		end
	end
	for k, _ in pairs(node.children) do
		setActive(level, k)
	end
end

-- Set the dirty flag for `node` and all its children.
local function setDirty(node)
	node.dirty = true
	for k, _ in pairs(node.children) do
		setDirty(k)
	end
end

-- Update the context and sinks cache for `node` and its ancestors.
local function updateCache(node)
	if not node.dirty then
		return
	end

	if not node.parent then
		node.cache.context = node.context
		node.cache.sinks = node.sinks
		node.dirty = false
		return
	end

	updateCache(node.parent)

	-- Dictionary join the context. List join the sinks. Concatenate the prefixes.
	node.cache.context = Cryo.Dictionary.join(node.parent.cache.context, node.context)
	if node.parent.cache.context.prefix and node.context.prefix then
		node.cache.context.prefix = node.parent.cache.context.prefix .. node.context.prefix
	end
	node.cache.sinks = Cryo.List.join(node.parent.cache.sinks, node.sinks)
	node.dirty = false
end

-- Set the parent of this Logger and update its cache, active bits and dirty bit.
function Logger:setParent(parent)
	if self.parent then
		self.parent.children[self] = nil
	end

	updateCache(parent)
	local maxLevel = levelRank[Logger.Levels.Error]
	for _, sink in pairs(parent.cache.sinks) do
		maxLevel = math.max(maxLevel, levelRank[sink.maxLevel])
	end

	self.parent = parent
	self.parent.children[self] = true

	setActive(levelOrder[maxLevel], self)
	setDirty(self)
end

function Logger:addSink(sink)
	setActive(sink.maxLevel, self)
	table.insert(self.sinks, sink)
	setDirty(self)
end

function Logger:setContext(context)
	self.context = context
	setDirty(self)
end

local function log(level, node, args)
	if args.n == 0 then
		error("No log message given")
	end

	if node.dirty then
		updateCache(node)
	end

	-- Collect per-log context.
	local fullContext = {
		level = level,
		rawMessage = args,
		loggerName = node.name,
	}

	-- Call any functions in the context.
	for k, v in pairs(node.cache.context) do
		if type(v) == "function" then
			fullContext[k] = v()
		else
			fullContext[k] = v
		end
	end

	-- Interpolate the log message.
	local interpMsg = args[1]
	if fullContext.prefix then
		interpMsg = fullContext.prefix .. interpMsg
	end
	if interpMsg:find("{") then
		local i = 1
		interpMsg = (interpMsg:gsub("{(.-)}", function(w)
			-- Treat {} as a positional arg.
			if w == "" then
				i = i + 1
				return args[i]
			end
			return fullContext[w] or w
		end))
		if i < args.n then
			error("Too many arguments given for format string", 4)
		elseif i > args.n then
			error("Too few arguments given for format string", 4)
		end
	elseif args.n > 1 then
		error("Too many arguments given for format string", 4)
	end

	-- Send the message to any sinks that are listening to the right level.
	local rank = levelRank[level]
	for _, k in pairs(node.cache.sinks) do
		if levelRank[k.maxLevel] >= rank then
			k:log(interpMsg, fullContext)
		end
	end
end

function Logger:error(...)
	if not self.active[Logger.Levels.Error] then
		return
	end
	log(Logger.Levels.Error, self, table.pack(...))
end

function Logger:warning(...)
	if not self.active[Logger.Levels.Warning] then
		return
	end
	log(Logger.Levels.Warning, self, table.pack(...))
end

function Logger:info(...)
	if not self.active[Logger.Levels.Info] then
		return
	end
	log(Logger.Levels.Info, self, table.pack(...))
end

function Logger:debug(...)
	if not self.active[Logger.Levels.Debug] then
		return
	end
	log(Logger.Levels.Debug, self, table.pack(...))
end

function Logger:trace(...)
	if not self.active[Logger.Levels.Trace] then
		return
	end
	log(Logger.Levels.Trace, self, table.pack(...))
end

return Logger
