local Root = script.Parent.Parent
local UserInputService = game:GetService("UserInputService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Cryo = PurchasePromptDeps.Cryo

--[[
	CLILUACORE-318: Revisit this approach and evaluate if it adequately
	addresses existing or future scams
]]
local ClickScamDetector = {}
ClickScamDetector.__index = ClickScamDetector

--[[
	Create a new scam detector with the specified options

	This object will track any clicks or confirm button presses that occur
	during its lifetime and attempt to determine whether the player is
	being asked to spam clicks or button presses. When processing an action,
	users of this object can abort their behavior if calling isClickValid
	returns false.
]]
function ClickScamDetector.new(options)
	--[[
		Overwrite default values with provided options
	]]
	options = Cryo.Dictionary.join({
		-- The number of clicks within the window that is interpreted as a scam
		clickSpeedThreshold = 3,
		-- The window in which to measure clicks
		clickTimeWindow = 1,
		-- A delay to allow clicks to stack up and prevent immediate clicks
		initialDelay = 1,
		-- Allow a button input to be associated with this click detection
		buttonInput = nil,
	}, options or {})

	local self = {
		_inputConnection = nil,

		_clickCount = 0,
		_startTime = tick(),
		_options = options,
	}

	setmetatable(self, ClickScamDetector)

	self._inputConnection = UserInputService.InputBegan:Connect(function(input)
		self:_onInput(input)
	end)

	return self
end

--[[
	Track mouse inputs, counting the number that occurred in the last
	CLICK_TIME_WINDOW duration

	Includes touch inputs and pressing the A button on a gamepad
]]
function ClickScamDetector:_onInput(input)
	local inputType = input.UserInputType

	local isGamepad = self._options.buttonInput ~= nil and input.KeyCode == self._options.buttonInput

	local isMouseOrTouch = inputType == Enum.UserInputType.MouseButton1
		or inputType == Enum.UserInputType.Touch

	if isGamepad or isMouseOrTouch then
		self._clickCount = self._clickCount + 1

		delay(self._options.clickTimeWindow, function()
			self._clickCount = self._clickCount - 1
		end)
	end
end

--[[
	Determine whether or not there's a possibility of a scam occurring
	and return whether or not we believe the click to be valid
]]
function ClickScamDetector:isClickValid()
	--[[
		If the mouse behavior is locked by dev-facing APIs, clicks are not valid
	]]
	if UserInputService.MouseBehavior == Enum.MouseBehavior.LockCurrentPosition then
		return false
	end

	--[[
		Don't allow any clicks until the initial delay has passed;
	]]
	if tick() - self._startTime < self._options.initialDelay then
		return false
	end

	return self._clickCount / self._options.clickTimeWindow < self._options.clickSpeedThreshold
end

--[[
	Cleanup connection to InputService; should be called when
	the UI element using this object is destroyed
]]
function ClickScamDetector:destroy()
	self._inputConnection:Disconnect()
end

return ClickScamDetector
