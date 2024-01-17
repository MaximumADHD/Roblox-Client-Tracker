local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local UIBlox = require(CorePackages.UIBlox)
local Dash = require(CorePackages.Packages.Dash)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
UIBlox.init(require(CorePackages.Workspace.Packages.RobloxAppUIBloxConfig))

local AppStyleProvider = UIBlox.App.Style.AppStyleProvider

Roact.setGlobalConfig({
	elementTracing = true,
	propValidation = true,
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

local localization = Localization.new("en-us")

local createStore = function(state)
	return Rodux.Store.new(function()
		return state
	end, {}, { Rodux.thunkMiddleware })
end

return {
	roact = Roact,
	mapDefinition = function(story)
		local newControls = Dash.join(globalControls, story.controls or {})
		return Dash.join(story, { controls = newControls })
	end,
	mapStory = function(story)
		return function(storyProps)
			localization:SetLocale(storyProps.controls.language)

			local state = storyProps.definition.state or {}
			return Roact.createElement(RoactRodux.StoreProvider, {
				store = createStore(state),
			}, {
				Roact.createElement(AppStyleProvider, {
					style = storyProps and styleTable[storyProps.theme] or styleTable.Default,
				}, {
					Roact.createElement(LocalizationProvider, {
						localization = localization,
					}, {
						Child = Roact.createElement(story, storyProps),
					}),
				}),
			})
		end
	end,
}
