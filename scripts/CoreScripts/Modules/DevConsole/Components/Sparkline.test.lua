local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local expect = JestGlobals.expect
local Roact = require(CorePackages.Packages.Roact)

local Sparkline = require(script.Parent.Sparkline)
local CircularBuffer = require(script.Parent.Parent.CircularBuffer)

local function makeDataSet(values: { number })
	local buffer = CircularBuffer.new(#values)
	for _, value in values do
		buffer:push_back(value)
	end
	return buffer
end

local function getY(value: number): number
	return value
end

local function countFrames(instance): number
	local count = 0
	for _, descendant in instance:GetDescendants() do
		if descendant:IsA("Frame") then
			count += 1
		end
	end
	return count
end

it("should create and destroy without errors", function()
	local element = Roact.createElement(Sparkline, {
		dataSet = makeDataSet({ 1, 2, 3 }),
		getY = getY,
		minY = 1,
		maxY = 3,
	})
	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)

it("should draw exactly one segment for a 2-point dataset", function()
	local container = Instance.new("Frame")
	container.Size = UDim2.fromOffset(200, 100)

	local instance = Roact.mount(
		Roact.createElement(Sparkline, {
			dataSet = makeDataSet({ 1, 5 }),
			getY = getY,
			minY = 1,
			maxY = 5,
			size = UDim2.fromOffset(52, 13),
		}),
		container
	)

	expect(countFrames(container)).toBe(2)
	Roact.unmount(instance)
end)

it("should draw one segment fewer than the number of data points", function()
	local container = Instance.new("Frame")
	container.Size = UDim2.fromOffset(200, 100)

	local instance = Roact.mount(
		Roact.createElement(Sparkline, {
			dataSet = makeDataSet({ 1, 2, 3, 4, 5 }),
			getY = getY,
			minY = 1,
			maxY = 5,
			size = UDim2.fromOffset(52, 13),
		}),
		container
	)

	expect(countFrames(container)).toBe(5)
	Roact.unmount(instance)
end)

it("should accept a custom color", function()
	local container = Instance.new("Frame")
	container.Size = UDim2.fromOffset(200, 100)
	local customColor = Color3.fromRGB(255, 0, 0)

	local instance = Roact.mount(
		Roact.createElement(Sparkline, {
			dataSet = makeDataSet({ 1, 2 }),
			getY = getY,
			minY = 1,
			maxY = 2,
			color = customColor,
			size = UDim2.fromOffset(52, 13),
		}),
		container
	)

	local foundCustomColor = false
	for _, descendant in container:GetDescendants() do
		if descendant:IsA("Frame") and descendant.BackgroundColor3 == customColor then
			foundCustomColor = true
		end
	end
	expect(foundCustomColor).toBe(true)
	Roact.unmount(instance)
end)
