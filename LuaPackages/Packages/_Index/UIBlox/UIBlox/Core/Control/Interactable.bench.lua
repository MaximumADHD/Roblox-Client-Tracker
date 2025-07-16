local Control = script.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.Roact)
local Interactable = require(Control.Interactable)

local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe

local benchmarks = require(UIBlox.Utility.benchmarks)
local mountComponentTimes = benchmarks.mountComponentTimes
local scrollComponentTimes = benchmarks.scrollComponentTimes

local interactable = React.createElement(Interactable, {
	onStateChanged = function() end,
})

describe("Interactable", function()
	mountComponentTimes(interactable, 100, "Interactable")
	scrollComponentTimes(interactable, 100, "Interactable")
end)
