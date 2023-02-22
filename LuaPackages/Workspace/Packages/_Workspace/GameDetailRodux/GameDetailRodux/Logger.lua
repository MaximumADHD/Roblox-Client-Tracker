local GameDetailRodux = script:FindFirstAncestor("GameDetailRodux")
local Packages = GameDetailRodux.Parent

local Lumberyak = require(Packages.Lumberyak)

local logger = Lumberyak.Logger.new(nil, "GameDetailRodux")

logger:addSink({
	maxLevel = logger.Levels.Warning,
	log = function(_, message, _)
		print(message)
	end,
})

return logger
