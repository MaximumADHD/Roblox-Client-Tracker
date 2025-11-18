local Control = script.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Checkbox = require(Control.Checkbox)

local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe

local benchmarks = require(UIBlox.Utility.benchmarks)
local mountComponentTimes = benchmarks.mountComponentTimes
local scrollComponentTimes = benchmarks.scrollComponentTimes

local checkbox = React.createElement(Checkbox, {
	onActivated = function() end,
	text = "Checkbox",
})

describe("Checkbox", function()
	mountComponentTimes(checkbox, 200, "Checkbox")
	scrollComponentTimes(checkbox, 200, "Checkbox")
end)
