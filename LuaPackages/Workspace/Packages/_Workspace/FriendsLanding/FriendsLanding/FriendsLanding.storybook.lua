--[[
	The FriendsLanding storybook registers RoactChat stories with the Storybook plugin,
	ensuring the logger is set up to print any logs to the output window.
]]
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Logger = require(FriendsLanding.Logger)
local dependencies = require(FriendsLanding.dependencies)
local UIBlox = dependencies.UIBlox
local AppStyleProvider = UIBlox.App.Style.AppStyleProvider
local Roact = dependencies.Roact
local UniversalAppPolicy = dependencies.UniversalAppPolicy
local llama = dependencies.llama

--- This has to be here to prevent tests from failing (if we put it in the devDependencies)
local Packages = FriendsLanding.Parent
local mockLocale = require(Packages.Dev.SocialTestHelpers).StoryHelpers.mockLocale

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

local styleTable = {
	Default = {
		themeName = "Light",
		fontName = "Gotham",
	},
	Light = {
		themeName = "Light",
		fontName = "Gotham",
	},
	Dark = {
		themeName = "Dark",
		fontName = "Gotham",
	},
}

local globalControls = {
	language = "en-us",
}

return {
	mapDefinition = function(story)
		local newControls = llama.Dictionary.join(globalControls, story.controls or {})
		return llama.Dictionary.join(story, { controls = newControls })
	end,
	roact = Roact,
	mapStory = function(story)
		return function(storyProps)
			return Roact.createElement(AppStyleProvider, {
				style = storyProps and styleTable[storyProps.theme] or styleTable.Default,
			}, {
				Roact.createElement(UniversalAppPolicy.Provider, {
					policy = {
						function()
							return {
								getShowDisplayName = function()
									return storyProps.controls.getShowDisplayName
								end,
							}
						end,
					},
				}, {
					Child = mockLocale(story, storyProps),
				}),
			})
		end
	end,
}
