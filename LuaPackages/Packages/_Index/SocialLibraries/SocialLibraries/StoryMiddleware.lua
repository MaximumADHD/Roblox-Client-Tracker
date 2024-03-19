local dependencies = require(script.Parent.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox

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

local function StoryMiddleware(story)
	return function(storyProps)
		return Roact.createElement(AppStyleProvider, {
			style = storyProps and styleTable[storyProps.theme] or styleTable.Default,
		}, {
			Child = Roact.createElement(story, storyProps),
		})
	end
end

return StoryMiddleware
