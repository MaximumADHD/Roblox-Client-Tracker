local MessageToast = script:FindFirstAncestor("MessageToast")
local Packages = MessageToast.Parent
local dependencies = require(MessageToast.dependencies)
local UIBloxUniversalAppConfig = require(Packages.Dev.RobloxAppUIBloxConfig)

local UIBlox = dependencies.UIBlox
-- Make sure to initialize in story book in case this storybook is called first
UIBlox.init(UIBloxUniversalAppConfig)

local Roact = dependencies.Roact
local Dash = dependencies.Dash
local AppStyleProvider = UIBlox.App.Style.AppStyleProvider
--- This has to be here to prevent tests from failing (if we put it in the devDependencies)
local mockLocale = require(Packages.Dev.SocialTestHelpers).StoryHelpers.mockLocale

Roact.setGlobalConfig({
	propValidation = true,
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

return {
	name = "MessageToast",
	storyRoot = script,
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
