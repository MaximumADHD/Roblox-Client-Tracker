local Control = script.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local LoadingSpinner = require(Control.LoadingSpinner)

local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe

local benchmarks = require(UIBlox.Utility.benchmarks)
local mountComponentTimes = benchmarks.mountComponentTimes
local scrollComponentTimes = benchmarks.scrollComponentTimes

local loadingSpinner = React.createElement(LoadingSpinner, {
	size = UDim2.fromOffset(48, 48),
})

describe("LoadingSpinner", function()
	mountComponentTimes(loadingSpinner, 1000, "LoadingSpinner")
	scrollComponentTimes(loadingSpinner, 1000, "LoadingSpinner")
end)
