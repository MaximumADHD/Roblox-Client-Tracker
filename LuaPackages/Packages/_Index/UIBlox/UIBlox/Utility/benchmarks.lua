local UtilityRoot = script.Parent
local UIBlox = UtilityRoot.Parent
local Packages = UIBlox.Parent
local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)

local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local render = ReactTestingLibrary.render

local JestBenchmark = require(Packages.Dev.JestBenchmark)
local benchmark = JestBenchmark.benchmark

function measureFPS(Profiler: any, seconds: number?)
	task.wait()
	task.wait()
	Profiler.start("fps")
	task.wait(seconds or 0.5)
	Profiler.stop()
end

function mountComponentTimes(component: React.ReactNode, n: number, name: string)
	local children = {}
	for i = 1, n do
		children[i] = component
	end
	local tree = mockStyleComponent(children)

	benchmark(`Mount {name} {n} times`, function()
		local root = render(tree)
		root:unmount()
	end)
end

function AutoScrollingFrame(props)
	local clock = ReactUtils.useClock()

	return React.createElement("ScrollingFrame", {
		Size = UDim2.fromOffset(100, 100),
		CanvasSize = UDim2.fromOffset(100, 0),
		CanvasPosition = clock:map(function(time: number)
			return Vector2.new(0, time * 10000)
		end),
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
	}, props.children)
end

function scrollComponentTimes(component: React.ReactNode, n: number, name: string)
	local children = {}
	for i = 1, n do
		children[i] = component
	end

	children[n + 1] = React.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		FillDirection = Enum.FillDirection.Vertical,
	})

	local tree = mockStyleComponent(React.createElement(AutoScrollingFrame, {}, children))

	benchmark(`Scroll {name} {n} times`, function(Profiler)
		local root = render(tree)
		measureFPS(Profiler)
		root:unmount()
	end)
end

return {
	mountComponentTimes = mountComponentTimes,
	scrollComponentTimes = scrollComponentTimes,
	measureFPS = measureFPS,
}
