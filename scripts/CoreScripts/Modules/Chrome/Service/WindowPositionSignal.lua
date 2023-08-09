local CorePackages = game:GetService("CorePackages")
local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Signal = SignalLib.Signal

export type WindowPositionSignal = {
	new: (UDim2) -> WindowPositionSignal,
	connect: (WindowPositionSignal, SignalLib.SignalCallback) -> SignalLib.SignalHandle,
	requestPosition: (WindowPositionSignal, UDim2) -> (),
	get: (WindowPositionSignal) -> UDim2,
}

local WindowPositionSignal = {}
WindowPositionSignal.__index = WindowPositionSignal

function WindowPositionSignal.new(initialPosition: UDim2): WindowPositionSignal
	local self = {
		_state = initialPosition :: UDim2,
		_changeSignal = Signal.new(),
	}

	return (setmetatable(self, WindowPositionSignal) :: any) :: WindowPositionSignal
end

function WindowPositionSignal:connect(callback)
	return self._changeSignal:connect(callback)
end

-- Request placement of window by assigning position
function WindowPositionSignal:requestPosition(newPosition: UDim2)
	local newState: UDim2 = newPosition

	if self._state :: UDim2 ~= newState then
		self._state = newState
		self._changeSignal:fire(newState)
	end
end

function WindowPositionSignal:get(): UDim2
	return self._state
end

return WindowPositionSignal
