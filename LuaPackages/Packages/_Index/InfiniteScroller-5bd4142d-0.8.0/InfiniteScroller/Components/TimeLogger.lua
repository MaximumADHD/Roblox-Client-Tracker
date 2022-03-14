local Root = script:FindFirstAncestor("InfiniteScroller").Parent
local Lumberyak = require(Root.Lumberyak)

local TimeLogger = Lumberyak.Logger.new(nil, script:GetFullName())
TimeLogger:setContext({
	tick = tick,
	prefix = "{tick}: ",
})

return TimeLogger
