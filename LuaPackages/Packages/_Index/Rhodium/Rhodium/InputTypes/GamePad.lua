--!strict
local VirtualInputManager = game:GetService("VirtualInputManager")

local Rhodium = script:FindFirstAncestor("Rhodium")
local VirtualInputUtils = require(Rhodium.VirtualInputUtils)

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
	local self = {
		deviceId = gamePadDeviceId,
	}
	gamePadDeviceId = gamePadDeviceId + 1
	setmetatable(self, GamePad)

	VirtualInputManager:HandleGamepadConnect(self.deviceId)

	return self
end

function GamePad:disconnect()
	VirtualInputManager:HandleGamepadDisconnect(self.deviceId)
end

function GamePad:pressButton(button: Enum.KeyCode)
	VirtualInputManager:HandleGamepadButtonInput(self.deviceId, button, 1)
end

function GamePad:releaseButton(button: Enum.KeyCode)
	VirtualInputManager:HandleGamepadButtonInput(self.deviceId, button, 0)
end

function GamePad:hitButton(button: Enum.KeyCode)
	self:pressButton(button)
	self:releaseButton(button)
	VirtualInputUtils.waitForInputEventsProcessed()
end

function GamePad:moveStickTo(stick: Enum.KeyCode, vec2: Vector2)
	VirtualInputManager:HandleGamepadAxisInput(self.deviceId, stick, vec2.X, vec2.Y, 0)
end

function GamePad:smoothMoveStickTo(stick: Enum.KeyCode, from: Vector2, to: Vector2, duration: number)
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
	VirtualInputUtils.__syncRun(run)
end

function GamePad:swingStick(stick: Enum.KeyCode, pos: Vector2, duration: number?)
	duration = duration or 0

	-- selene: allow(incorrect_standard_library_use)
	assert(duration)

	local origin = Vector2.new(0, 0)
	self:moveStickTo(stick, origin)
	self:smoothMoveStickTo(stick, origin, pos, duration / 2)
	self:smoothMoveStickTo(stick, pos, origin, duration / 2)
end

function GamePad:swingLeft(stick: Enum.KeyCode, duration: number?)
	self:swingStick(stick, Vector2.new(-1, 0), duration)
end

function GamePad:swingRight(stick: Enum.KeyCode, duration: number?)
	self:swingStick(stick, Vector2.new(1, 0), duration)
end

function GamePad:swingTop(stick: Enum.KeyCode, duration: number?)
	self:swingStick(stick, Vector2.new(0, 1), duration)
end

function GamePad:swingDown(stick: Enum.KeyCode, duration: number?)
	self:swingStick(stick, Vector2.new(0, -1), duration)
end

return GamePad
