local Plugin = script.Parent.Parent.Parent
local Orientation = require(Plugin.Src.Util.Orientation)

local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)
local Cryo = require(Plugin.Packages.Cryo)

local RunService = game:GetService("RunService")

local containerName = "9SliceEditorMockGui"
local TestHelper = {}

-- Pass in a component and testFunction to be called with testFunction(container), where
-- container is the mounted component's parent instance. The Roact component is automatically unmounted.
function TestHelper.withTestComponent(component, props, testFunction)
	local prevContainer = game.CoreGui:FindFirstChild(containerName)
	if prevContainer then
		prevContainer:Destroy()
	end

	local container = Instance.new("ScreenGui")
	container.Name = containerName
	container.Parent = game.CoreGui -- Needed because Rhodium wants to find the game root
	local roactElement = mockContext(Roact.createElement(component, props))
	local roactTree = Roact.mount(roactElement, container)
	local updatePropsFunc = function(newProps)
		Roact.update(roactTree, mockContext(Roact.createElement(component, Cryo.Dictionary.join(props, newProps))))
	end
	testFunction(container, updatePropsFunc)
	Roact.unmount(roactTree)
	container.Parent = nil
	container:Destroy()
end

-- Returns true if the two numerical arrays are equal to within the threshold
function TestHelper.numericalArrayFuzzyEquality(arr1, arr2, threshold)
	if #arr1 ~= #arr2 then
		return false
	end

	threshold = threshold or 1e-4

	for i = 1, #arr1 do
		if type(arr1[i]) ~= "number" or type(arr2[i]) ~= "number" then
			return false
		end
		if math.abs(arr1[i] - arr2[i]) > threshold then
			return false
		end
	end

	return true
end

-- When running Rhodium tests in Studio, Rhodium depends on frequent heartbeat signals, which may take
-- some time to start if the main thread was blocked by loading/reloading the plugin.
function TestHelper.waitForHeartbeat(timeout)
	timeout = timeout or 10

	local count = 0
	local con = RunService.Heartbeat:Connect(function()
		count += 1
	end)
	local startt = tick()

	while tick() < startt + timeout and count < 10 do
		wait()
	end

	con:Disconnect()
end

function TestHelper.findFirstDescendantWhichIsA(parent, className)
	local descendants = parent:GetDescendants()
	for _, instance in ipairs(descendants) do
		if instance.ClassName == className then
			return instance
		end
	end
	return nil
end

local LEFT = Orientation.Left.rawValue()
local RIGHT = Orientation.Right.rawValue()
local TOP = Orientation.Top.rawValue()
local BOTTOM = Orientation.Bottom.rawValue()

function TestHelper.getOffsetsFromSliceRect(sliceRect, pixelDimensions)
	return {
		sliceRect[LEFT],
		pixelDimensions.x - sliceRect[RIGHT],
		sliceRect[TOP],
		pixelDimensions.y - sliceRect[BOTTOM],
	}
end

function TestHelper.getSliceRectFromOffsets(offsets, pixelDimensions)
	return { offsets[LEFT], pixelDimensions.x - offsets[RIGHT], offsets[TOP], pixelDimensions.y - offsets[BOTTOM] }
end

function TestHelper.getSliceRectFromSliceCenterRect(sliceCenter)
	return { sliceCenter.Min.X, sliceCenter.Max.X, sliceCenter.Min.Y, sliceCenter.Max.Y }
end

function TestHelper.getSliceCenterRectFromSliceRect(sliceRect)
	return Rect.new(sliceRect[LEFT], sliceRect[TOP], sliceRect[RIGHT], sliceRect[BOTTOM])
end

return TestHelper
