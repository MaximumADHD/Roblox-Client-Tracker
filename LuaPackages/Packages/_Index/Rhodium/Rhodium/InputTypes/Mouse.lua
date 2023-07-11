--!strict
local VirtualInputManager = game:GetService("VirtualInputManager")

local Rhodium = script:FindFirstAncestor("Rhodium")
local VirtualInputUtils = require(Rhodium.VirtualInputUtils)
local InputVisualizer = require(Rhodium.InputVisualizer)

local inputVisualizer = InputVisualizer.new()

local Mouse = {}

function Mouse.sendMouseButtonEvent(x: number, y: number, button: number, isDown: boolean, repeatCount: number?)
	local insetX, insetY = VirtualInputUtils.__handleGuiInset(x, y)
	local window = VirtualInputUtils.getCurrentWindow()
	-- VirtualInputManager is typed to disallow a nil window, but it does not
	-- throw errors and tests rely on it `nil` being allowed
	VirtualInputManager:SendMouseButtonEvent(insetX, insetY, button, isDown, window :: any, repeatCount or 0)
end

function Mouse.SendMouseMoveEvent(x: number, y: number)
	local insetX, insetY = VirtualInputUtils.__handleGuiInset(x, y)
	local window = VirtualInputUtils.getCurrentWindow()
	-- VirtualInputManager is typed to disallow a nil window, but it does not
	-- throw errors and tests rely on it `nil` being allowed
	VirtualInputManager:SendMouseMoveEvent(insetX, insetY, window :: any)
end

function Mouse.SendMouseWheelEvent(x: number, y: number, isForwardScroll: boolean)
	local insetX, insetY = VirtualInputUtils.__handleGuiInset(x, y)
	local window = VirtualInputUtils.getCurrentWindow()
	-- VirtualInputManager is typed to disallow a nil window, but it does not
	-- throw errors and tests rely on it `nil` being allowed
	VirtualInputManager:SendMouseWheelEvent(insetX, insetY, isForwardScroll, window :: any)
end

function Mouse.mouseWheel(vec2: Vector2, num: number)
	local forward = false
	if num < 0 then
		forward = true
		num = -num
	end
	for _ = 1, num do
		Mouse.SendMouseWheelEvent(vec2.X, vec2.Y, forward)
	end
end

local function click(vec2: Vector2, count: number, clickType: number)
	inputVisualizer:click(vec2, VirtualInputUtils.getCurrentWindow())
	Mouse.sendMouseButtonEvent(vec2.X, vec2.Y, clickType, true, count)
	Mouse.sendMouseButtonEvent(vec2.X, vec2.Y, clickType, false, count)
	VirtualInputUtils.waitForInputEventsProcessed()
end

local function multiClick(vec2: Vector2, count: number, clickType)
	local waiting = true
	local repeatCount = 0

	return function()
		if waiting then
			waiting = false
			return false
		elseif count >= 1 then
			click(vec2, repeatCount, clickType)
			count = count - 1
			repeatCount = repeatCount + 1
			waiting = true
			return false
		elseif count == 0 then
			return true
		end

		return false
	end
end

function Mouse.click(vec2: Vector2)
	VirtualInputUtils.__syncRun(multiClick(vec2, 1, 0))
end

function Mouse.multiClick(vec2: Vector2, count)
	VirtualInputUtils.__syncRun(multiClick(vec2, count, 0))
end

function Mouse.rightClick(vec2: Vector2)
	VirtualInputUtils.__syncRun(multiClick(vec2, 1, 1))
end

function Mouse.mouseLeftDown(vec2: Vector2)
	Mouse.sendMouseButtonEvent(vec2.X, vec2.Y, 0, true)
end

function Mouse.mouseLeftUp(vec2: Vector2)
	Mouse.sendMouseButtonEvent(vec2.X, vec2.Y, 0, false)
end

function Mouse.mouseRightDown(vec2: Vector2)
	Mouse.sendMouseButtonEvent(vec2.X, vec2.Y, 1, true)
end

function Mouse.mouseRightUp(vec2: Vector2)
	Mouse.sendMouseButtonEvent(vec2.X, vec2.Y, 1, false)
end

function Mouse.mouseMove(vec2: Vector2)
	Mouse.SendMouseMoveEvent(vec2.X, vec2.Y)
end

local function drag(posFrom: Vector2, posTo: Vector2, duration: number)
	local passed = 0
	local started = false
	return function(dt)
		if not started then
			Mouse.mouseLeftDown(posFrom)
			started = true
		else
			passed = passed + dt
			if duration and passed < duration then
				local percent = passed / duration
				local pos = (posTo - posFrom) * percent + posFrom
				Mouse.mouseMove(pos)
			else
				Mouse.mouseMove(posTo)
				Mouse.mouseLeftUp(posTo)
				return true
			end
		end
		return false
	end
end

function Mouse.mouseDrag(posFrom: Vector2, posTo: Vector2, duration: number)
	VirtualInputUtils.__syncRun(drag(posFrom, posTo, duration))
end

function Mouse.__setInputVisualizerEnabled(value: boolean)
	if value then
		inputVisualizer:enable()
	else
		inputVisualizer:disable()
	end
end

return Mouse
