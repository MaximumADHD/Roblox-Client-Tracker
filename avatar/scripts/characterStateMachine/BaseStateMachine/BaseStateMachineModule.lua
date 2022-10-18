--!strict
local baseState = require(script.Parent:WaitForChild("BaseStateModule"))
local baseTransition = require(script.Parent:WaitForChild("BaseTransitionModule"))


local BaseStateMachine = {}
BaseStateMachine.__index = BaseStateMachine
BaseStateMachine.name = script.Name 

------------------- DEFINITION  ------------------------------------

BaseStateMachine.definition = {
	startingStateName = "",
	stateDefs = {},
	transitionDefs = {}
}	

------------------- LOCAL FUNCTIONS ------------------------------------
local function SplitStringByCharacter(list, character : string)
	local out = {}
	local gmatachString : string = "[^".. character .. "]+"
	for entry in string.gmatch(list, gmatachString) do
		entry = string.gsub(entry, '^%s*(.-)%s*$', '%1')
		table.insert(out, entry)
	end
	return out
end

local RunService = game:GetService("RunService") 
function BaseStateMachine:CountChildren()
	if RunService:IsServer() then
		local childCount = 0
		for _,c in pairs(script:GetChildren()) do
			childCount = childCount + 1 
		end
		script:SetAttribute("ChildCount", childCount)
	end
end

function BaseStateMachine:SetupStates()
	local Definition = BaseStateMachine.definition
	for stateName, stateDef in pairs(Definition.stateDefs) do
		local stateInstance = stateDef.new()
		self.states[stateName] = stateInstance
	end
end

function BaseStateMachine:SetupTranstions()
	local Definition = BaseStateMachine.definition
	for _, transitionDef in pairs(Definition.transitionDefs) do
		local transitionInstance = transitionDef.new()
		-- local transitionSourceAttrib = transitionModule:GetAttribute("Source")
		local transitionSourceAttrib = transitionInstance.sourceName
		if transitionSourceAttrib ~= nil and transitionSourceAttrib ~= "None" then
			local transitionSourceList = SplitStringByCharacter(transitionSourceAttrib, ",")
			for _, sourceString in pairs(transitionSourceList) do
				local sourceState = self:GetStateByName(sourceString)
				if sourceState ~= nil then
					sourceState:AddTransition(transitionInstance)
				else
					print("Undefined state", sourceString, "in source for transition", transitionDef.name)
				end						
			end
		end		
		transitionInstance.destination = self:GetStateByName(transitionInstance.destinationName)
	end
end

----------------------- PUBLIC FUNCTIONS -----------------------
function BaseStateMachine:CreateTransition()
	return baseTransition:extend()
	-- may need to add this transition to the state machine transition definition list
end

function BaseStateMachine:CreateState()
	return baseState:extend()
	-- may need to add this state to the state machine state definition list
end

function BaseStateMachine:GetStateByName(stateName)
	for name, state in pairs(self.states) do
		if name == stateName then
			return state
		end
	end
	return nil
end

function BaseStateMachine:InitializeFromDefinition()
	self.currentState = nil
	self.context = { }
	self.states = { }
		
	self:SetupStates()
	self:SetupTranstions()
	if BaseStateMachine.definition.startingStateName == nil then
		warn("No Starting State Specified.")
	else
		self:SetState(self:GetStateByName(BaseStateMachine.definition.startingStateName))
	end
end

function BaseStateMachine:SetState(newState)
	if newState ~= self.currentState then
		local oldState = self.currentState
		local oldStateName, newStateName
		if self.currentState ~= nil then
			oldStateName = self.currentState.name
			self.currentState:OnExit(self, newStateName)
		end
		self.currentState = newState
		if self.currentState ~= nil then
			newStateName = self.currentState.name
			self.currentState:OnEnter(self, oldStateName)
		end
		if self.OnStateChanged then
			self.OnStateChanged:Fire(newStateName, oldStateName)
		end
	end
end

function BaseStateMachine:GetCurrentStateName() : string
	if self.currentState ~= nil then
		return self.currentState.name
	else
		return "nil"
	end
end

function BaseStateMachine:OnStepped(dt)	
	-- check for state transitions
	if self.currentState ~= nil then
		self:SetState(self.currentState:CheckTransitions(self))

		-- run current state, need to check for nil again since it could have changed in transitions above
		if self.currentState ~= nil then
			self.currentState:OnStepped(self, dt)
		end
	end
end

function BaseStateMachine:OnCreate(...)
end

-- need to plumb extend as the basic mechanism for inheritence through the entire model
-- child classes should 'extend' from base classes at all levels to ensure the functions correctly has the base classes set
function BaseStateMachine:extend()	
	local derivedSM = setmetatable({
		baseStateMachine = self,
		definition = BaseStateMachine.definition 
	}, self)
	derivedSM.__index = derivedSM
	
	function derivedSM.new(...)
		local self = setmetatable(self.new(...), derivedSM)		
		self:OnCreate(...)
		return self
	end
	
	return derivedSM	
end

function BaseStateMachine.new(...)
	local self = {
		Name = BaseStateMachine.name,
		OnStateChanged = Instance.new("BindableEvent"),
		currentState = nil,
		context = { },
		states = { }	
	}
	setmetatable(self, BaseStateMachine)
	
	self:CountChildren()
	self:InitializeFromDefinition()

	return self
end

function BaseStateMachine:delete()	
end

return BaseStateMachine

