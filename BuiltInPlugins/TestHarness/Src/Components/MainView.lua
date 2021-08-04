--[[
	Enforces a layout for the plugin, with Toolbar on top, Hierarchy on left,
	and Results on right.

	Props passed through ContextServices
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane

local Components = Plugin.Src.Components
local ProjectHierarchy = require(Components.ProjectHierarchy)
local Results = require(Components.Results)
local Toolbar = require(Components.Toolbar)

local MainView = Roact.PureComponent:extend("MainView")

function MainView:render()
	local toolbarHeight = 30

	return Roact.createElement(Pane, {
		Size = UDim2.fromScale(1, 1),
		Layout = Enum.FillDirection.Vertical,
		Style = "Box",
	}, {
		Toolbar = Roact.createElement(Toolbar, {
			Size = UDim2.new(1, 0, 0, toolbarHeight),
			LayoutOrder = 1,
		}),
		-- TODO: RIDE-3411 Use SplitPane component
		Contents = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 1, -toolbarHeight),
			LayoutOrder = 2,
		}, {
			ProjectHierarchy = Roact.createElement(ProjectHierarchy),
			Results = Roact.createElement(Results)
		})
	})
end

MainView = withContext({
	Stylizer = Stylizer,
})(MainView)

return MainView
