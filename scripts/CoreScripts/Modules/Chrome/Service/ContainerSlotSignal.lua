local CorePackages = game:GetService("CorePackages")
local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Signal = SignalLib.Signal

local ViewportUtil = require(script.Parent.ViewportUtil)
local Constants = require(script.Parent.Parent.Unibar.Constants)

local DEFAULT_SLOTS = 3

-- returned constrained container size depending on device type
local function getConstrainedSlotWidth(numSlotsRequested: number): number
	local viewport = ViewportUtil.viewport:get()
	local currentSlots
	if viewport.isMobileDevice then
		if viewport.tinyPortrait then
			currentSlots = Constants.MOBILE_TINY_PORTRAIT_SLOTS
		elseif viewport.portraitOrientation then
			currentSlots = Constants.MOBILE_PORTRAIT_SLOTS
		else
			currentSlots = Constants.MOBILE_LANDSCAPE_SLOTS
		end
	else
		currentSlots = Constants.NON_MOBILE_SLOTS
	end

	return math.min(currentSlots - Constants.TOGGLE_SLOTS, numSlotsRequested)
end

export type ContainerSlotSignal = {
	new: (number?) -> ContainerSlotSignal,
	connect: (ContainerSlotSignal, SignalLib.SignalCallback) -> SignalLib.SignalHandle,
	requestSlots: (ContainerSlotSignal, number) -> (),
	get: (ContainerSlotSignal) -> number,
	updateConstraints: (ContainerSlotSignal) -> (),
}

local ContainerSlotSignal = {}
ContainerSlotSignal.__index = ContainerSlotSignal

function ContainerSlotSignal.new(numSlotsRequested: number?): ContainerSlotSignal
	local self = {
		_state = (getConstrainedSlotWidth(numSlotsRequested or DEFAULT_SLOTS)) :: number, -- number of slots container takes up.
		_requestedSlots = numSlotsRequested, -- number of slots last requested. Could be larger than _state.
		_changeSignal = Signal.new(),
	}
	return (setmetatable(self, ContainerSlotSignal) :: any) :: ContainerSlotSignal
end

function ContainerSlotSignal:connect(callback)
	return self._changeSignal:connect(callback)
end

-- Request container to be numSlotsRequested wide, up to device max
function ContainerSlotSignal:requestSlots(numSlotsRequested: number)
	self._requestedSlots = numSlotsRequested
	local newState: number = getConstrainedSlotWidth(numSlotsRequested)

	if self._state :: number ~= newState then
		self._state = newState
		self._changeSignal:fire(newState)
	end
end

function ContainerSlotSignal:get(): number
	return self._state
end

-- Re-request slots when device constraints updated
function ContainerSlotSignal:updateConstraints()
	self:requestSlots(self._requestedSlots)
end

return ContainerSlotSignal
