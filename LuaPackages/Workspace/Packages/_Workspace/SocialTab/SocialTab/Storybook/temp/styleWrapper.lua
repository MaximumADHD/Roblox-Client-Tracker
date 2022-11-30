local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
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

return function(story, props)
	return Roact.createElement(AppStyleProvider, {
		style = props and styleTable[props.theme] or styleTable.Default,
	}, {
		Child = Roact.createElement(story, props),
	})
end
