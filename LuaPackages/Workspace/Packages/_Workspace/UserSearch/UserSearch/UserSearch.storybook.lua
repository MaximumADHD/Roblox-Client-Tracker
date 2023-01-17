local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent

local Roact = require(Packages.Roact)
local Dash = require(Packages.Dash)
local UIBlox = require(Packages.UIBlox)
local RoactRodux = require(Packages.RoactRodux)
local Rodux = require(Packages.Rodux)

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

local globalControls = {
	language = "en-us",
}

local createStore = function(state)
	return Rodux.Store.new(function()
		return state
	end, {}, { Rodux.thunkMiddleware })
end

return {
	name = "UserSearch",
	storyRoot = UserSearch,
	roact = Roact,
	mapDefinition = function(story)
		local newControls = Dash.join(globalControls, story.controls or {})
		return Dash.join(story, {
			controls = newControls,
			state = story.state or {},
		})
	end,
	mapStory = function(story)
		return function(storyProps)
			local state = storyProps.definition.state or {}
			return Roact.createElement(AppStyleProvider, {
				style = storyProps and styleTable[storyProps.theme] or styleTable.Default,
			}, {
				storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
					store = createStore(state),
				}, {
					Child = mockLocale(story, storyProps),
				}),
			})
		end
	end,
}
