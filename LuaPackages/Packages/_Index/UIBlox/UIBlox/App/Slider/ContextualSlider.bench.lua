local Control = script.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local ContextualSlider = require(Control.ContextualSlider)
local SystemSlider = require(Control.SystemSlider)

local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe

local benchmarks = require(UIBlox.Utility.benchmarks)
local mountComponentTimes = benchmarks.mountComponentTimes
local scrollComponentTimes = benchmarks.scrollComponentTimes

local contextualSlider = React.createElement(ContextualSlider, {
	min = 0,
	max = 100,
	value = 0,
	onValueChanged = function() end,
})
local systemSlider = React.createElement(SystemSlider, {
	min = 0,
	max = 100,
	value = 0,
	onValueChanged = function() end,
})

describe("ContextualSlider", function()
	mountComponentTimes(contextualSlider, 100, "ContextualSlider")
	scrollComponentTimes(contextualSlider, 100, "ContextualSlider")
end)
describe("SystemSlider", function()
	mountComponentTimes(systemSlider, 100, "SystemSlider")
	scrollComponentTimes(systemSlider, 100, "SystemSlider")
end)
