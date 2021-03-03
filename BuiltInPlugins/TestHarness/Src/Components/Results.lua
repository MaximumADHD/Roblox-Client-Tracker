--[[
	Show test results

	-- TODO: RIDE-3507 TestRunner should display results
	-- when a test is selected from the hierarchy
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane

local Results = Roact.PureComponent:extend("Results")

function Results:render()
	return Roact.createElement(Pane, {
		Style = "Box",
	}, {
		OutputPane = Roact.createElement(Pane, {

		}),
		Details = Roact.createElement(Pane, {

		}, {
			Title = Roact.createElement(Pane),
			Result = Roact.createElement(Pane),
			Time = Roact.createElement(Pane),
			ShowDetails = Roact.createElement(Pane),
		}),
	})
end

ContextServices.mapToProps(Results, {
	Stylizer = Stylizer,
})

return Results
