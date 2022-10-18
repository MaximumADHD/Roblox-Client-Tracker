local BaseState = {}
BaseState.__index = BaseState

BaseState.name = script.Name

function BaseState.new(...)
	local self = {
		class = BaseState,	 -- may not be needed anymore
		transitions = {}
	}
	setmetatable(self, BaseState)
	self:OnCreate(...)
	return self
end

function BaseState:extend()	
	local derivedState = setmetatable({
		baseClass = self 
	}, self)
	derivedState.__index = derivedState

	function derivedState.new(...)
		local self = setmetatable(self.new(...), derivedState)		
		self:OnCreate(...)
		return self
	end
	
	return derivedState	
end

function BaseState:OnCreate(...)
	
end

function BaseState:OnStepped(stateMachine, dt)
	
end

function BaseState:OnEnter(stateMachine)

end

function BaseState:OnExit(stateMachine)

end

function BaseState:CheckTransitions(stateMachine)

	for _, transition in pairs(self.transitions) do
		local results = transition:Test(stateMachine)
		if results then
			return transition.destination
		end
	end
	return self
end

function BaseState:AddTransition(transition)
	-- check for duplicate names	
	for _, t in pairs(self.transitions) do
		if t.name == transition.name then
			return
		end
	end
	
	for idx, t in pairs(self.transitions) do
		if transition.priority < t.priority then
			table.insert(self.transitions, idx, transition)
			return
		end
	end
	table.insert(self.transitions, transition)
end

function BaseState:RemoveTransition(TransitionName)
	for i, transition in pairs(self.transitions) do
		if transition and transition.name == TransitionName then
			table.remove(self.transitions, i)
			break
		end
	end
end

return BaseState


