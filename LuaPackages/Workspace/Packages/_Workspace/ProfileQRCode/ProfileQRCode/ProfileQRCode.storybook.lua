local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local Roact = require(Packages.Dev.Roact)
local UIBlox = require(Packages.UIBlox)
local Dash = require(Packages.Dash)
local mockLocale = require(Packages.Dev.SocialTestHelpers).StoryHelpers.mockLocale
local UIBloxUniversalAppConfig = require(Packages.Dev.RobloxAppUIBloxConfig)
-- Make sure to initialize in story book in case this storybook is called first
UIBlox.init(UIBloxUniversalAppConfig)

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

-- this means we can test different translations with stories
local globalControls = {
	language = "en-us",
}

return {
	name = "ProfileQRCode",
	storyRoot = ProfileQRCode,
	roact = Roact,
	mapDefinition = function(story)
		local newControls = Dash.join(globalControls, story.controls)
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
