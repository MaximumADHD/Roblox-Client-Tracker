--[[
	The SocialTab storybook registers SocialTab stories with the Storybook plugin,
	ensuring the logger is set up to print any logs to the output window.
]]
local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local mockLocale = require(script.Parent.temp.mockLocale)
local styleWrapper = require(script.Parent.temp.styleWrapper)
local Logger = require(SocialTab.Logger)

-- Set up logger
local Lumberyak = dependencies.Lumberyak
local logger = Lumberyak.Logger.new()

local level = logger.Levels.fromString("info")

logger:addSink({
	maxLevel = level,
	log = function(_, message, _)
		print(message)
	end,
})

Logger:setParent(logger)

return {
	storyRoots = { SocialTab.SocialPanel },
	roact = Roact,
	mapStory = function(story)
		return function(storyProps)
			return mockLocale(styleWrapper(story, storyProps))
		end
	end,
}
