local TenFootUiGlobalNav = script:FindFirstAncestor("TenFootUiGlobalNav")
local Packages = TenFootUiGlobalNav.Parent
local Roact = require(Packages.Dev.RoactCompat)
local React = require(Packages.React)
local UIBloxUniversalAppConfig = require(Packages.Dev.RobloxAppUIBloxConfig)
local UIBlox = require(Packages.UIBlox)

-- Make sure to initialize in story book in case this storybook is called first
UIBlox.init(UIBloxUniversalAppConfig)

local AppStyleProvider = UIBlox.App.Style.AppStyleProvider

Roact.setGlobalConfig({
	elementTracing = true,
})

local lightTheme = {
	themeName = "Light",
	fontName = "Gotham",
}

local darkTheme = {
	themeName = "Dark",
	fontName = "Gotham",
}

local styleTable = {
	Default = darkTheme,
	Light = lightTheme,
	Dark = darkTheme,
}

return {
	name = "TenFootUIGlobalNav",
	storyRoots = { TenFootUiGlobalNav.Stories },
	roact = Roact,
	mapStory = function(story)
		return function(props)
			return React.createElement(AppStyleProvider, {
				style = props and styleTable[props.theme] or styleTable.Default,
			}, {
				Child = React.createElement(story, props),
			})
		end
	end,
}
