local DiscoverabilityModal = script:FindFirstAncestor("DiscoverabilityModal")
local dependencies = require(DiscoverabilityModal.dependencies)
local devDependencies = require(DiscoverabilityModal.devDependencies)
local Roact = dependencies.Roact
local Dash = dependencies.Dash
local UIBlox = dependencies.UIBlox
local UIBloxUniversalAppConfig = devDependencies.UIBloxUniversalAppConfig

local Packages = DiscoverabilityModal.Parent
local mockLocale = require(Packages.Dev.SocialTestHelpers).StoryHelpers.mockLocale

-- Make sure to initialize in story book in case this storybook is called first
UIBlox.init(UIBloxUniversalAppConfig)

local AppStyleProvider = UIBlox.App.Style.AppStyleProvider

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
	name = "DiscoverabilityModal",
	storyRoot = DiscoverabilityModal,
	roact = Roact,
	mapDefinition = function(story)
		local newControls = Dash.join(globalControls, story.controls or {})
		return Dash.join(story, { controls = newControls })
	end,
	mapStory = function(story)
		return function(storyProps)
			return Roact.createElement(AppStyleProvider, {
				style = storyProps and styleTable[storyProps.theme] or styleTable.Default,
			}, {
				Child = mockLocale(story, storyProps),
			})
		end
	end,
}
