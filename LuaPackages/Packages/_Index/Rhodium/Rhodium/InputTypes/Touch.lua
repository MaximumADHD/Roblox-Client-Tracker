--!strict
local VirtualInputManager = game:GetService("VirtualInputManager")

local Rhodium = script:FindFirstAncestor("Rhodium")
local VirtualInputUtils = require(Rhodium.VirtualInputUtils)

local Touch = {}
local defaultTouchId = 123456

function Touch.SendTouchEvent(touchId: number, state, x: number, y: number)
	x, y = VirtualInputUtils.__handleGuiInset(x, y)
	VirtualInputManager:SendTouchEvent(touchId, state, x, y)
end

function Touch.touchStart(vec2: Vector2, multitouchId: number?)
	local touchId = defaultTouchId + (multitouchId or 0)
	Touch.SendTouchEvent(touchId, 0, vec2.X, vec2.Y)
end

function Touch.touchMove(vec2: Vector2, multitouchId: number?)
	local touchId = defaultTouchId + (multitouchId or 0)
	Touch.SendTouchEvent(touchId, 1, vec2.X, vec2.Y)
end

function Touch.touchStop(vec2: Vector2, multitouchId: number?)
	local touchId = defaultTouchId + (multitouchId or 0)
	Touch.SendTouchEvent(touchId, 2, vec2.X, vec2.Y)
end

local function smoothSwipe(posFrom: Vector2, posTo: Vector2, duration: number, multitouchId: number?)
	local passed = 0
	local started = false
	local touchId = defaultTouchId + (multitouchId or 0)
	return function(dt)
		if not started then
			Touch.touchStart(posFrom, touchId)
			started = true
		else
			passed = passed + dt
			if duration and passed < duration then
				local percent = passed / duration
				local pos = (posTo - posFrom) * percent + posFrom
				Touch.touchMove(pos, touchId)
			else
				Touch.touchMove(posTo, touchId)
				Touch.touchStop(posTo, touchId)
				return true
			end
		end
		return false
	end
end

function Touch.swipe(posFrom: Vector2, posTo: Vector2, duration: number, async: boolean?, multitouchId: number?)
	local touchId = defaultTouchId + (multitouchId or 0)
	if async == true then
		VirtualInputUtils.__asyncRun(smoothSwipe(posFrom, posTo, duration, touchId))
	else
		VirtualInputUtils.__syncRun(smoothSwipe(posFrom, posTo, duration, touchId))
	end
end

function Touch.touchScroll(
	startPos: Vector2,
	xOffset: number,
	yOffset: number,
	duration: number,
	async: boolean?,
	multitouchId: number?
)
	local posTo = startPos + Vector2.new(xOffset, yOffset)
	Touch.swipe(startPos, posTo, duration, async, multitouchId)
end

function Touch.tap(vec2: Vector2)
	Touch.touchStart(vec2)
	Touch.touchStop(vec2)
	VirtualInputUtils.waitForInputEventsProcessed()
end

return Touch
