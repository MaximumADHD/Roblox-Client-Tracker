local Control = script.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Toggle = require(App.InputButton.Toggle)

local mockComponent = require(UIBlox.Utility.mockStyleComponent)
local benchmarks = require(UIBlox.Utility.benchmarks)
local measureFPS = benchmarks.measureFPS
local mountComponentTimes = benchmarks.mountComponentTimes
local scrollComponentTimes = benchmarks.scrollComponentTimes

local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local render = ReactTestingLibrary.render
local act = ReactTestingLibrary.act
local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe

local JestBenchmark = require(Packages.Dev.JestBenchmark)
local benchmark = JestBenchmark.benchmark

local toggle = React.createElement(Toggle, {
	isSelected = false,
	onActivated = function() end,
})

local unchecked = mockComponent(React.createElement(Toggle, {
	isSelected = false,
	onActivated = function() end,
}))

local checked = mockComponent(React.createElement(Toggle, {
	isSelected = true,
	onActivated = function() end,
}))

describe("Toggle", function()
	benchmark("Toggle animation", function(Profiler)
		local root = render(unchecked)
		task.wait() -- Wait for react render to finish
		act(function()
			root.rerender(checked) -- Render checked state to start animation
		end)
		measureFPS(Profiler)
		root:unmount()
	end)

	mountComponentTimes(toggle, 100, "Toggle")
	scrollComponentTimes(toggle, 100, "Toggle")
end)
