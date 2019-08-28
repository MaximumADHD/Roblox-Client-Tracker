local RunService = game:GetService("RunService")

local createSignal = require(script.Parent.createSignal)

local SingleMotor = {}
SingleMotor.prototype = {}
SingleMotor.__index = SingleMotor.prototype

local function createSingleMotor(initialValue)
	assert(typeof(initialValue) == "number")

	local self = {
		__goal = nil,
		__state = {
			value = initialValue,
			complete = true,
		},
		__onComplete = createSignal(),
		__onStep = createSignal(),
	}

	setmetatable(self, SingleMotor)

	return self
end

function SingleMotor.prototype:start()
	self.__connection = RunService.RenderStepped:Connect(function(dt)
		self:step(dt)
	end)
end

function SingleMotor.prototype:stop()
	if self.__connection ~= nil then
		self.__connection:Disconnect()
	end
end

function SingleMotor.prototype:step(dt)
	assert(typeof(dt) == "number")

	if self.__state.complete then
		return
	end

	if self.__goal == nil then
		return
	end

	local newState = self.__goal:step(self.__state, dt)

	if newState ~= nil then
		self.__state = newState
	end

	self.__onStep:fire(self.__state.value)

	if self.__state.complete then
		self.__onComplete:fire(self.__state.value)
	end
end

function SingleMotor.prototype:setGoal(goal)
	self.__goal = goal
	self.__state.complete = false
end

function SingleMotor.prototype:onStep(callback)
	assert(typeof(callback) == "function")

	return self.__onStep:subscribe(callback)
end

function SingleMotor.prototype:onComplete(callback)
	assert(typeof(callback) == "function")

	return self.__onComplete:subscribe(callback)
end

function SingleMotor.prototype:destroy()
	self:stop()
end

return createSingleMotor