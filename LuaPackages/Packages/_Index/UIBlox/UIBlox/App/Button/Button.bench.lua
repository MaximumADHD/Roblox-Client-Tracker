local Control = script.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Button = require(Control.Button)

local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe

local benchmarks = require(UIBlox.Utility.benchmarks)
local mountComponentTimes = benchmarks.mountComponentTimes
local scrollComponentTimes = benchmarks.scrollComponentTimes

local button = React.createElement(Button, {
	onActivated = function() end,
	text = "Button",
})

describe("Button", function()
	mountComponentTimes(button, 100, "Button")
	scrollComponentTimes(button, 100, "Button")
end)
