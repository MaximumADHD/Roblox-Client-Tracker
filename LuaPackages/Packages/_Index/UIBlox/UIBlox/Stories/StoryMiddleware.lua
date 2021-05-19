local Root = script.Parent.Parent
local Packages = Root.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Root)

-- Don't error if already initialized
local ok, err = pcall(function()
	UIBlox.init(require(script.Parent.UIBloxStorybookConfig))
end)
if not ok then
	warn("Error initializing UIBlox", err)
end

local AppStyleProvider = UIBlox.App.Style.AppStyleProvider
local StyleConstants = UIBlox.App.Style.Constants
local LightTheme = StyleConstants.ThemeName.Light
local DarkTheme = StyleConstants.ThemeName.Dark
local Gotham = StyleConstants.FontName.Gotham

local themes = {
	Light = {
		themeName = LightTheme,
		fontName = Gotham,
	},
	Dark = {
		themeName = DarkTheme,
		fontName = Gotham,
	},
}

local function StoryMiddleware(story)
	-- A component wrapping each story in the StyleProvider
	return function(storyProps)
		return Roact.createElement(AppStyleProvider, {
			style = themes[storyProps.theme],
		}, {
			Child = Roact.createElement(story, storyProps),
		})
	end
end

return StoryMiddleware
