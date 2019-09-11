local VirtualInputManager = game:GetService("VirtualInputManager")
local InputVisualizer = require(script.Parent.InputVisualizer):new()
local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")
local guiOffset, _ = GuiService:GetGuiInset()

local defaultTouchId = 123456

local runSet = {}
local signals = {}

RunService.Heartbeat:Connect(function(dt)
	local finishedList = {}
	for runable, _ in pairs(runSet) do
		local finished = runable(dt)
		if finished then
			table.insert(finishedList, runable)
		end
	end

	for _, toDelete in ipairs(finishedList) do
		runSet[toDelete] = nil
	end

	for signal, _ in pairs(signals) do
		if signal == false then
			signals[signal] = nil
		else
			signal:Fire(dt)
		end
	end
end)

local function asyncRun(runable)
	runSet[runable] = true
end

local function syncRun(runable)
	local signal = Instance.new("BindableEvent")
	signals[signal] = true
	local dt = 0
	while true do
		local finished = runable(dt)
		if finished then break end
		dt = signal.Event:Wait()
	end
	signals[signal] = false
end

local VirtualInput = {}
local currentWindow = nil

function VirtualInput.setCurrentWindow(window)
	local old = currentWindow
	currentWindow = window
	return old
end

function VirtualInput.sendMouseButtonEvent(x, y, button, isDown)
	VirtualInputManager:SendMouseButtonEvent(x, y, button, isDown, currentWindow)
end

function VirtualInput.SendKeyEvent(isPressed, keyCode, isRepeated)
	VirtualInputManager:SendKeyEvent(isPressed, keyCode, isRepeated, currentWindow)
end

function VirtualInput.SendMouseMoveEvent(x, y)
	VirtualInputManager:SendMouseMoveEvent(x, y, currentWindow)
end

function VirtualInput.sendTextInputCharacterEvent(str)
	VirtualInputManager:sendTextInputCharacterEvent(str, currentWindow)
end

function VirtualInput.SendMouseWheelEvent(x, y, isForwardScroll)
	VirtualInputManager:SendMouseWheelEvent(x, y, isForwardScroll, currentWindow)
end

function VirtualInput.SendTouchEvent(touchId, state, x, y)
	VirtualInputManager:SendTouchEvent(touchId, state, x, y)
end

function VirtualInput.mouseWheel(vec2, num)
	local forward = false
	if num < 0 then
		forward = true
		num = -num
	end
	for _ = 1, num do
		VirtualInput.SendMouseWheelEvent(vec2.x, vec2.y, forward)
	end
end

function VirtualInput.touchStart(vec2)
	VirtualInput.SendTouchEvent(defaultTouchId, 0, vec2.x, vec2.y)
end

function VirtualInput.touchMove(vec2)
	VirtualInput.SendTouchEvent(defaultTouchId, 1, vec2.x, vec2.y)
end

function VirtualInput.touchStop(vec2)
	VirtualInput.SendTouchEvent(defaultTouchId, 2, vec2.x, vec2.y)
end

local function smoothSwipe(posFrom, posTo, duration)
	local passed = 0
	local started = false
	return function(dt)
		if not started then
			VirtualInput.touchStart(posFrom)
			started = true
		else
			passed = passed + dt
			if duration and passed < duration then
				local percent = passed / duration
				local pos = (posTo - posFrom) * percent + posFrom
				VirtualInput.touchMove(pos)
			else
				VirtualInput.touchMove(posTo)
				VirtualInput.touchStop(posTo)
				return true
			end
		end
		return false
	end
end

function VirtualInput.swipe(posFrom, posTo, duration, async)
	if async == true then
		asyncRun(smoothSwipe(posFrom, posTo, duration))
	else
		syncRun(smoothSwipe(posFrom, posTo, duration))
	end
end

function VirtualInput.tap(vec2)
	VirtualInput.touchStart(vec2)
	VirtualInput.touchStop(vec2)
end

function VirtualInput.click(vec2)
	InputVisualizer:click(vec2 - guiOffset, currentWindow)
	VirtualInput.sendMouseButtonEvent(vec2.x, vec2.y, 0, true)
	VirtualInput.sendMouseButtonEvent(vec2.x, vec2.y, 0, false)
end

function VirtualInput.rightClick(vec2)
	VirtualInput.sendMouseButtonEvent(vec2.x, vec2.y, 1, true)
	VirtualInput.sendMouseButtonEvent(vec2.x, vec2.y, 1, false)
end

function VirtualInput.mouseLeftDown(vec2)
	InputVisualizer:click(vec2 - guiOffset, currentWindow)
	VirtualInput.sendMouseButtonEvent(vec2.x, vec2.y, 0, true)
end

function VirtualInput.mouseLeftUp(vec2)
	InputVisualizer:click(vec2 - guiOffset, currentWindow)
	VirtualInput.sendMouseButtonEvent(vec2.x, vec2.y, 0, false)
end

function VirtualInput.mouseRightDown(vec2)
	VirtualInput.sendMouseButtonEvent(vec2.x, vec2.y, 1, true)
end

function VirtualInput.mouseRightUp(vec2)
	VirtualInput.sendMouseButtonEvent(vec2.x, vec2.y, 1, false)
end

function VirtualInput.pressKey(keyCode)
	VirtualInput.SendKeyEvent(true, keyCode, false)
end

function VirtualInput.releaseKey(keyCode)
	VirtualInput.SendKeyEvent(false, keyCode, false)
end

function VirtualInput.hitKey(keyCode)
	VirtualInput.pressKey(keyCode)
	VirtualInput.releaseKey(keyCode)
end

function VirtualInput.mouseMove(vec2)
	VirtualInput.SendMouseMoveEvent(vec2.X, vec2.Y)
end

function VirtualInput.sendText(str)
	VirtualInput.sendTextInputCharacterEvent(str)
end

local GamePad = {}
GamePad.__index = GamePad
local gamePadDeviceId = 123

GamePad.KeyCode = {
	ButtonX = Enum.KeyCode.ButtonX,
	ButtonY = Enum.KeyCode.ButtonY,
	ButtonA = Enum.KeyCode.ButtonA,
	ButtonB = Enum.KeyCode.ButtonB,
	ButtonR1 = Enum.KeyCode.ButtonR1,
	ButtonL1 = Enum.KeyCode.ButtonL1,
	ButtonR2 = Enum.KeyCode.ButtonR2,
	ButtonL2 = Enum.KeyCode.ButtonL2,
	ButtonR3 = Enum.KeyCode.ButtonR3,
	ButtonL3 = Enum.KeyCode.ButtonL3,
	ButtonStart = Enum.KeyCode.ButtonStart,
	ButtonSelect = Enum.KeyCode.ButtonSelect,
	DPadLeft = Enum.KeyCode.DPadLeft,
	DPadRight = Enum.KeyCode.DPadRight,
	DPadUp = Enum.KeyCode.DPadUp,
	DPadDown = Enum.KeyCode.DPadDown,
	Thumbstick1 = Enum.KeyCode.Thumbstick1,
	Thumbstick2 = Enum.KeyCode.Thumbstick2,
}

function GamePad.new()
	local self = {deviceId = gamePadDeviceId}
	gamePadDeviceId = gamePadDeviceId + 1
	setmetatable(self, GamePad)
	VirtualInputManager:HandleGamepadConnect(self.deviceId)
	return self
end

function GamePad:disconnect()
	VirtualInputManager:HandleGamepadDisconnect(self.deviceId)
end

function GamePad:pressButton(button)
	VirtualInputManager:HandleGamepadButtonInput(self.deviceId, button, 1);
end

function GamePad:releaseButton(button)
	VirtualInputManager:HandleGamepadButtonInput(self.deviceId, button, 0);
end

function GamePad:hitButton(button)
	self:pressButton(button)
	self:releaseButton(button)
end

function GamePad:moveStickTo(stick, vec2)
	VirtualInputManager:HandleGamepadAxisInput(self.deviceId, stick, vec2.x, vec2.y, 0)
end

function GamePad:smoothMoveStickTo(stick, from, to, duration)
	duration = duration or 0
	if duration == 0 then
		self:moveStickTo(stick, to)
		return
	end
	local passed = 0
	local function run(dt)
		local ratio = passed / duration
		passed = passed + dt
		if ratio < 1 then
			local pos = from + (to - from) * ratio
			self:moveStickTo(stick, pos)
			return false
		else
			self:moveStickTo(stick, to)
			return true
		end
	end
	syncRun(run)
end

function GamePad:swingStick(stick, pos, duration)
	duration = duration or 0
	local origin = Vector2.new(0, 0)
	self:moveStickTo(stick, origin)
	self:smoothMoveStickTo(stick, origin, pos, duration / 2)
	self:smoothMoveStickTo(stick, pos, origin, duration / 2)
end

function GamePad:swingLeft(stick, duration)
	self:swingStick(stick, Vector2.new(-1, 0), duration)
end

function GamePad:swingRight(stick, duration)
	self:swingStick(stick, Vector2.new(1, 0), duration)
end

function GamePad:swingTop(stick, duration)
	self:swingStick(stick, Vector2.new(0, 1), duration)
end

function GamePad:swingDown(stick, duration)
	self:swingStick(stick, Vector2.new(0, -1), duration)
end

VirtualInput.GamePad = GamePad
return VirtualInput
