--!strict
local Packages = script.Parent.Parent

local Signal = require(Packages.Signal)
local createSignal = Signal.createSignal

local AnimationStepSignal = require(script.Parent.AnimationStepSignal)

local types = require(script.Parent.types)
type AnimationValue = types.AnimationValue
type Goal<T> = types.Goal<T>
type State = types.State
type Motor<T, U> = types.Motor<T, U>
type Unsubscribe = types.Unsubscribe
type MotorCallback<T> = types.MotorCallback<T>

type SingleMotorInternal = {
	__goal: Goal<any>,
	__state: State & any,
	__onComplete: Signal.Signal<AnimationValue>,
	__fireOnComplete: Signal.FireSignal<AnimationValue>,
	__onStep: Signal.Signal<AnimationValue>,
	__fireOnStep: Signal.FireSignal<AnimationValue>,
	__running: boolean,
	__connection: RBXScriptConnection?,

	start: (self: SingleMotorInternal) -> (),
	stop: (self: SingleMotorInternal) -> (),
	step: (self: SingleMotorInternal, dt: number) -> (),
	setGoal: (self: SingleMotorInternal, goal: Goal<any>) -> (),
	onStep: (self: SingleMotorInternal, callback: MotorCallback<AnimationValue>) -> Unsubscribe,
	onComplete: (self: SingleMotorInternal, callback: MotorCallback<AnimationValue>) -> Unsubscribe,
	destroy: (self: SingleMotorInternal) -> (),
}

local SingleMotor = {} :: SingleMotorInternal;
(SingleMotor :: any).__index = SingleMotor

export type SingleMotor = Motor<Goal<any>, AnimationValue>

local function createSingleMotor(initialValue: AnimationValue): SingleMotor
	local onComplete, fireOnComplete = createSignal()
	local onStep, fireOnStep = createSignal()

	local self = {
		__goal = nil,
		__state = {
			value = initialValue,
			complete = true,
		},
		__onComplete = onComplete,
		__fireOnComplete = fireOnComplete,
		__onStep = onStep,
		__fireOnStep = fireOnStep,
		__running = false,
	}

	setmetatable(self, SingleMotor)

	return self :: any
end

function SingleMotor:start()
	if self.__running then
		return
	end

	self.__connection = AnimationStepSignal:Connect(function(dt)
		self:step(dt)
	end)

	self.__running = true
end

function SingleMotor:stop()
	if self.__connection ~= nil then
		self.__connection:Disconnect()
	end

	self.__running = false
end

function SingleMotor:step(dt: number)
	if self.__state.complete then
		return
	end

	if self.__goal == nil then
		return
	end

	local newState = self.__goal.step(self.__state, dt)

	if newState ~= nil then
		self.__state = newState
	end

	self.__fireOnStep(self.__state.value)

	if self.__state.complete and self.__running then
		self:stop()
		self.__fireOnComplete(self.__state.value)
	end
end

function SingleMotor:setGoal(goal)
	self.__goal = goal
	self.__state.complete = false
	self:start()
end

function SingleMotor:onStep(callback: MotorCallback<AnimationValue>)
	local subscription = self.__onStep:subscribe(callback)

	return function()
		subscription:unsubscribe()
	end
end

function SingleMotor:onComplete(callback: MotorCallback<AnimationValue>)
	local subscription = self.__onComplete:subscribe(callback)

	return function()
		subscription:unsubscribe()
	end
end

function SingleMotor:destroy()
	self:stop()
end

return createSingleMotor
