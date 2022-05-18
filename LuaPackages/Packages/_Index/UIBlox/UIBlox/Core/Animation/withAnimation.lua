local Animation = script.Parent
local Core = Animation.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Otter = require(Packages.Otter)
local t = require(Packages.t)

--[[
	A convenient animation wrapper
	provides more features than SpringAnimatedItem, with a simpler API
	animated bindings can update without requiring a re-render

	local binding, setBinding = Roact.createBinding()
	withAnimation({
		option1 = targetValue,
		option2 = target2,
		[setBinding] = target3,
	}, function(values)
		local currentOption = values.option1
		return Roact.createComponent(.....)
	end)
]]

local AnimatedComponent = Roact.PureComponent:extend("AnimatedComponent")

AnimatedComponent.validateProps = t.strictInterface({
	-- target values to animate to
	values = t.table,
	-- function(actualValues: table) called to render components at the current values
	render = t.callback,
	-- otter spring options
	options = t.optional(t.table),
})

function AnimatedComponent:update(newValues)
	local stateValues = {}
	for key, value in pairs(newValues) do
		if type(key) == "function" then
			key(value)
		else
			stateValues[key] = value
		end
	end
	for key, _ in pairs(self.state) do
		if not newValues[key] then
			stateValues[key] = Roact.None
		end
	end
	if next(stateValues) ~= nil then
		self:setState(stateValues)
	end
end

function AnimatedComponent:init()
	self:update(self.props.values)
	self.motor = Otter.createGroupMotor(self.props.values)
	self.motor:onStep(function(values)
		self:update(values)
	end)
end

function AnimatedComponent:didUpdate(prevProps)
	local values = self.props.values
	local options = self.props.options

	local valuesChanged = values ~= prevProps.values
	local optionsChanged = options ~= prevProps.options

	if valuesChanged or optionsChanged then
		local goals = {}
		for key, targetValue in pairs(values) do
			goals[key] = Otter.spring(targetValue, options)
		end
		self.motor:setGoal(goals)
	end
end

function AnimatedComponent:render()
	local values = self.state
	return self.props.render(values)
end

function AnimatedComponent:willUnmount()
	if self.motor then
		self.motor:destroy()
		self.motor = nil
	end
end

return function(goals, callback, options)
	return Roact.createElement(AnimatedComponent, {
		values = goals,
		options = options,
		render = callback,
	})
end
