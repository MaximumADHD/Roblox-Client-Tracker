local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Types = require(Foundation.Components.Types)
type MeasurableObject = Types.MeasurableObject
type MeasurableObjectSignal<T> = Types.MeasurableObjectSignal<T>

local React = require(Packages.React)
local Signal = require(Packages.Signal)
type Signal<T> = Signal.Signal<T>
type FireSignal<T> = Signal.FireSignal<T>

type SignalWrapper<T> = { signal: MeasurableObjectSignal<T>, fire: FireSignal<T> }

type BaseMeasurableObjectImpl = {
	__index: BaseMeasurableObjectImpl,
	new: (position: Vector2, size: Vector2) -> BaseMeasurableObject,
	SetPosition: (self: BaseMeasurableObject, position: Vector2) -> (),
	SetSize: (self: BaseMeasurableObject, size: Vector2) -> (),
	GetPropertyChangedSignal: (self: BaseMeasurableObject, propertyName: string) -> Signal<unknown>,
}

type BaseMeasurableObject = typeof(setmetatable(
	{} :: {
		_signals: {
			AbsolutePosition: SignalWrapper<Vector2>,
			AbsoluteSize: SignalWrapper<Vector2>,
		},
		AbsolutePosition: Vector2,
		AbsoluteSize: Vector2,
	},
	{} :: BaseMeasurableObjectImpl
))

local function createSignal<T>(): SignalWrapper<T>
	local signal, fire = Signal.createSignal()

	local self = {} :: MeasurableObjectSignal<T>

	function self.Connect(_, callback: (value: T) -> ())
		local subscription = signal:subscribe(callback)

		local connection = {
			Disconnect = function()
				subscription:unsubscribe()
			end,
		}

		return connection
	end

	return { signal = self, fire = fire }
end

local MeasurableObject = {} :: BaseMeasurableObjectImpl
MeasurableObject.__index = MeasurableObject

function MeasurableObject.new(position: Vector2, size: Vector2)
	local self = setmetatable({
		AbsolutePosition = position,
		AbsoluteSize = size,
		_signals = {},
	}, MeasurableObject)

	self._signals.AbsolutePosition = createSignal()
	self._signals.AbsoluteSize = createSignal()

	return self
end

function MeasurableObject:GetPropertyChangedSignal(propertyName: string): Signal<any>
	if self._signals[propertyName] then
		return self._signals[propertyName].signal
	end
	error(`{propertyName} is not a valid property name.`)
end

function MeasurableObject:SetPosition(newPosition: Vector2)
	if self.AbsolutePosition ~= newPosition then
		self.AbsolutePosition = newPosition
		self._signals.AbsolutePosition.fire(newPosition)
	end
end

function MeasurableObject:SetSize(newSize: Vector2)
	if self.AbsoluteSize ~= newSize then
		self.AbsoluteSize = newSize
		self._signals.AbsoluteSize.fire(newSize)
	end
end

function useMeasurableRef(position: Vector2, size: Vector2?): React.RefObject<MeasurableObject>
	local ref = React.useRef(nil :: MeasurableObject?)
	if ref.current == nil then
		ref.current = (MeasurableObject.new(position, size or Vector2.one) :: any) :: MeasurableObject
	end

	React.useEffect(function()
		(ref.current :: MeasurableObject):SetPosition(position)
	end, { position })

	React.useEffect(function()
		(ref.current :: MeasurableObject):SetSize(size or Vector2.one)
	end, { size })

	return ref :: React.RefObject<MeasurableObject>
end

return useMeasurableRef
