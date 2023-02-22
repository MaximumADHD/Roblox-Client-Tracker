local Root = script.Parent
local Packages = Root.Parent

local Lumberyak = require(Packages.Lumberyak)

local logger = Lumberyak.Logger.new(nil, "PlayabilityRodux")

logger:addSink({
	maxLevel = logger.Levels.Warning,
	log = function(_, message, _)
		print(message)
	end,
})

return logger
