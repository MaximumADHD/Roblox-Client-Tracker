--!strict
local Plugin = script.Parent.Parent
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local NavigationContainer = require(Plugin.Core.Components.Home.NavigationContainer)
local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)

return {
	name = "NavigationContainer",
	summary = "A container that hosts all of the navigation routes.",
	story = Roact.createElement(ToolboxStoryWrapper, {}, {
		Container = Roact.createElement(NavigationContainer)
	}),
}
