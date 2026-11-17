local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Foundation = require(CorePackages.Packages.Foundation)

local AppStyleProvider = UIBlox.App.Style.AppStyleProvider
local FoundationProvider = Foundation.FoundationProvider
local ColorMode = Foundation.Enums.ColorMode

local function mapStory(story)
	return function(storyProps)
		local settings = storyProps.settings
		return React.createElement(FoundationProvider, {
			colorMode = ColorMode.Dark,
			preferences = settings,
			scale = if settings then settings.scale else nil,
		}, {
			Style = React.createElement(AppStyleProvider, {
				style = {
					themeName = "Dark",
					fontName = "Gotham",
					settings = settings,
				},
			}, {
				Child = React.createElement(story, storyProps),
			}),
		})
	end
end

return {
	name = "PlayerList (legacy)",
	storyRoot = script.Parent,
	roact = React,
	reactRoblox = ReactRoblox,
	mapStory = mapStory,
}
