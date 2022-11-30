local SocialTab = script:FindFirstAncestor("SocialTab")
local Logger = require(SocialTab.Logger)
local StyleSwapper = require(script.temp.StyleSwapper)

--set up logger
local devDependencies = require(SocialTab.devDependencies)
local Lumberyak = devDependencies.Lumberyak
local logger = Lumberyak.Logger.new()

local level = logger.Levels.fromString("info")

logger:addSink({
	maxLevel = level,
	log = function(_, message, _)
		if not _G.__TESTEZ_RUNNING_TEST__ then
			print(message)
		end
	end,
})

Logger:setParent(logger)

return {
	name = "SocialTab",
	storyRoot = SocialTab.Components,
	middleware = StyleSwapper(),
}
