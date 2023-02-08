local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local Packages = FriendsCarousel.Parent
local UIBlox = require(Packages.UIBlox)
local RobloxAppUIBloxConfig = require(Packages.Dev.RobloxAppUIBloxConfig)
-- Make sure to initialize in story book in case this storybook is called first
UIBlox.init(RobloxAppUIBloxConfig)

local llama = require(Packages.LuaSocialLibrariesDeps).llama
local Roact = require(Packages.Roact)

local mockLocale = require(Packages.Dev.SocialTestHelpers).StoryHelpers.mockLocale

local mockAnalytics = require(FriendsCarousel.TestHelpers.mockAnalytics)
local Analytics = require(FriendsCarousel.Analytics)
local AppStyleProvider = UIBlox.App.Style.AppStyleProvider

Roact.setGlobalConfig({
	elementTracing = true,
})

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

local initializedMockAnalytics = mockAnalytics({}, { fn = function() end })

return {
	name = "FriendsCarousel",
	storyRoot = FriendsCarousel,
	roact = Roact,
	mapDefinition = function(story)
		local newControls = llama.Dictionary.join(globalControls, story.controls or {})
		return llama.Dictionary.join(story, { controls = newControls })
	end,
	mapStory = function(story)
		return function(storyProps)
			return Roact.createElement(AppStyleProvider, {
				style = storyProps and styleTable[storyProps.theme] or styleTable.Default,
			}, {
				Roact.createElement(Analytics.Context.Provider, { value = initializedMockAnalytics.value }, {
					Child = mockLocale(story, storyProps),
				}),
			})
		end
	end,
}
