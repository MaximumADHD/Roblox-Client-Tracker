--!strict
local Packages = script.Parent.Parent

local Object = require(Packages.Collections).Object
local Signal = require(Packages.Signal)
local createSignal = Signal.createSignal

local AnimationStepSignal = require(script.Parent.AnimationStepSignal)

local types = require(script.Parent.types)
type AnimationValue = types.AnimationValue
type Goal<T> = types.Goal<T>
type State = types.State & types.EaseState & types.SpringState
type Motor<T, U> = types.Motor<T, U>

type Unsubscribe = types.Unsubscribe
type MotorCallback<T> = types.MotorCallback<T>

type ValueGroup = {
	[string]: AnimationValue,
}
type GoalGroup = {
	[string]: Goal<any>,
}

type GroupMotorInternal = {
	__goals: GoalGroup,
	__states: {
		[string]: State,
	},
	__allComplete: boolean,
	__onComplete: Signal.Signal<ValueGroup>,
	__fireOnComplete: Signal.FireSignal<ValueGroup>,
	__onStep: Signal.Signal<ValueGroup>,
	__fireOnStep: Signal.FireSignal<ValueGroup>,
	__running: boolean,
	__connection: RBXScriptConnection?,

	start: (self: GroupMotorInternal, hasStartingValue: boolean) -> (),
	stop: (self: GroupMotorInternal) -> (),
	step: (self: GroupMotorInternal, dt: number) -> (),
	setGoal: (self: GroupMotorInternal, goal: GoalGroup) -> (),
	onStep: (self: GroupMotorInternal, callback: MotorCallback<ValueGroup>) -> Unsubscribe,
	onComplete: (self: GroupMotorInternal, callback: MotorCallback<ValueGroup>) -> Unsubscribe,
	destroy: (self: GroupMotorInternal) -> (),
}

local GroupMotor = {} :: GroupMotorInternal;
(GroupMotor :: any).__index = GroupMotor

export type GroupMotor = Motor<GoalGroup, ValueGroup>

local function createGroupMotor(initialValues: ValueGroup): GroupMotor
	local states = {}

	for key, value in pairs(initialValues) do
		states[key] = {
			value = value,
			complete = true,
		}
	end

	local onComplete, fireOnComplete = createSignal()
	local onStep, fireOnStep = createSignal()

	local self = {
		__goals = {},
		__states = states,
		__allComplete = true,
		__onComplete = onComplete,
		__fireOnComplete = fireOnComplete,
		__onStep = onStep,
		__fireOnStep = fireOnStep,
		__running = false,
	}

	setmetatable(self, GroupMotor)

	return self :: any
end

function GroupMotor:start(hasStartingValue: boolean)
	if self.__running then
		return
	end

	self.__connection = AnimationStepSignal:Connect(function(dt)
		self:step(dt)
	end)

	self.__running = true

	if hasStartingValue then
		self:step(0)
	end
end

function GroupMotor:stop()
	if self.__connection ~= nil then
		self.__connection:Disconnect()
		self.__running = false
	end
end

function GroupMotor:step(dt: number)
	if self.__allComplete then
		return
	end

	local allComplete = true
	local values = {}

	for key, state in pairs(self.__states) do
		if not state.complete then
			local goal = self.__goals[key]

			if goal ~= nil then
				local maybeNewState = goal.step(state, dt)

				if maybeNewState ~= nil then
					state = maybeNewState
					self.__states[key] = maybeNewState
				end
			else
				state.complete = true
			end

			if not state.complete then
				allComplete = false
			end
		end

		values[key] = state.value
	end

	local wasAllComplete = self.__allComplete
	self.__allComplete = allComplete

	self.__fireOnStep(values)

	-- Check self.__allComplete as the motor may have been restarted in the onStep callback
	-- even if allComplete is true.
	-- Check self.__running in case the motor was stopped by onStep
	if self.__allComplete and not wasAllComplete and self.__running then
		self:stop()
		self.__fireOnComplete(values)
	end
end

function GroupMotor:setGoal(goals: GoalGroup)
	self.__goals = Object.assign({}, self.__goals, goals)

	local hasStartingValue = false
	local values = {}
	for key, goal in pairs(goals) do
		local state = self.__states[key]
		if goal.startingValue then
			hasStartingValue = true
			state.value = goal.startingValue
			if state.initialValue then
				state.initialValue = goal.startingValue
			end
		end
		values[key] = state.value

		if state == nil then
			error(("Cannot set goal for the value %s because it doesn't exist"):format(tostring(key)), 2)
		end

		state.complete = false
	end

	self.__allComplete = false
	self:start(hasStartingValue)
end

function GroupMotor:onStep(callback: MotorCallback<ValueGroup>)
	local subscription = self.__onStep:subscribe(callback)

	return function()
		subscription:unsubscribe()
	end
end

function GroupMotor:onComplete(callback: MotorCallback<ValueGroup>)
	local subscription = self.__onComplete:subscribe(callback)

	return function()
		subscription:unsubscribe()
	end
end

function GroupMotor:destroy()
	self:stop()
end

return createGroupMotor
