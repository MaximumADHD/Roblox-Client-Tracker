local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
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

return {
	roact = Roact,
	mapStory = function(story)
		return function(storyProps)
			return Roact.createElement(AppStyleProvider, {
				style = storyProps and styleTable[storyProps.theme] or styleTable.Default,
			}, {
				Child = Roact.createElement(story, storyProps),
			})
		end
	end,
}
