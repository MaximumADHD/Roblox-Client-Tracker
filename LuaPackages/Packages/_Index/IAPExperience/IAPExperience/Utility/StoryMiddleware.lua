local Root = script.Parent.Parent

local Packages = Root.Parent
local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)

local LocaleProvider = require(Root.Locale.LocaleProvider)

-- Don't error if already initialized
local ok, err = pcall(function()
	UIBlox.init(require(Root.Parent.UIBloxResources.UIBloxStorybookConfig))
end)
if not ok then
	warn("Error initializing UIBlox", err)
end

local SelectionCursorProvider = UIBlox.App.SelectionImage.SelectionCursorProvider
local NewCursorProvider = UIBlox.App.SelectionCursor.CursorProvider
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
		return Roact.createElement(LocaleProvider, {
			locale = "en-us",
		}, {
			AppStyleProvider = Roact.createElement(AppStyleProvider, {
				style = themes[storyProps.theme],
			}, {
				CursorProvider = Roact.createElement(SelectionCursorProvider, {}, {
					NewCursorProvider = Roact.createElement(NewCursorProvider, {}, {
						Child = Roact.createElement(story, storyProps),
					}),
				}),
			}),
		})
	end
end

return StoryMiddleware
