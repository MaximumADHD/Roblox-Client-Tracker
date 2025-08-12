local Control = script.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local ShimmerPanel = require(Control.ShimmerPanel)

local benchmarks = require(UIBlox.Utility.benchmarks)
local mountComponentTimes = benchmarks.mountComponentTimes
local scrollComponentTimes = benchmarks.scrollComponentTimes

local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe

local skeleton = React.createElement(ShimmerPanel, {
	Size = UDim2.new(0, 100, 0, 100),
})

describe("ShimmerPanel", function()
	mountComponentTimes(skeleton, 100, "ShimmerPanel")
	scrollComponentTimes(skeleton, 100, "ShimmerPanel")
end)
