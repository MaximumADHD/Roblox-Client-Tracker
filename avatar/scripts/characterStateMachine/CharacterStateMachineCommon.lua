--!strict
local CharacterStateMachineCommon = {}

local replicatedStorage : ReplicatedStorage = game:GetService("ReplicatedStorage")
local CSM = replicatedStorage:WaitForChild("CharacterStateMachine")
local CCSMDef = require(CSM:WaitForChild("CharacterControlStateMachine"))
local moveToListener = require(CSM:WaitForChild("MoveToListener"))
local RunService : RunService = game:FindService("RunService")
local commonTypes = require(replicatedStorage:WaitForChild("CharacterStateMachine"):WaitForChild("CharacterStateMachineTypes"))
local debug = false

function CharacterStateMachineCommon.StartStateMachine(character : Model, humanoid : Humanoid, localEvent : BindableEvent, 
	runStartUp : boolean): commonTypes.RunningStateMachineRecord? 

	if character == nil or humanoid == nil then
		return nil
	end

	local moveToListenerObject = moveToListener.new(humanoid) 
	local record : commonTypes.RunningStateMachineRecord = {
		character = character,
		humanoid = humanoid,
		CCSM = CCSMDef.new(character),
		moveToListenerInstance = moveToListenerObject,
		heartbeatFunc = nil
	}

	local CCSM : any = record.CCSM
	local currentState :string = ""
	CCSM.localEvent = localEvent

	if debug then
		print("CCSM Created", CCSM, CCSM.definition)
	end

	record.heartbeatFunc = RunService.PreAnimation:Connect(function(dt)
		CCSM.context["MoveDirection"] = moveToListenerObject:getMoveDirection()
		CCSM:OnStepped(dt)
 
		if debug then
			local newCurrentState = CCSM:GetCurrentStateName() 
			if (newCurrentState ~= currentState) then
				currentState = newCurrentState
				print(currentState)
			end
		end
	end)

	if runStartUp then
		record.CCSM:OnStartup()
	end
	
	return record
end

function CharacterStateMachineCommon.ContinueStateMachine(character : Model, humanoid : Humanoid, localEvent : BindableEvent, 
	stateName : string?, context : any): commonTypes.RunningStateMachineRecord? 
	local record : commonTypes.RunningStateMachineRecord? = 
		CharacterStateMachineCommon.StartStateMachine(character, humanoid, localEvent, false)

	if record == nil then
		warn("Unable to start state machine for", character)
		return nil
	else
		if stateName ~= nil then
			local state = record.CCSM:GetStateByName(stateName)
			if state ~= nil then
				record.CCSM:SetState(stateName)
			end
		end
		if context ~= nil then
			record.CCSM.context = context
			record.CCSM.localEvent = localEvent
		end
		record.CCSM:OnStartup()

		return record
	end
end

function CharacterStateMachineCommon.StopStateMachine(record : commonTypes.RunningStateMachineRecord)
	if record.heartbeatFunc ~= nil then
		record.heartbeatFunc:Disconnect()
	end

	record.CCSM:OnShutdown()
end

function CharacterStateMachineCommon.SetState(character : Model, newState : string)
	local humanoid : Humanoid? = character:FindFirstChildOfClass("Humanoid")
	if humanoid ~= nil then
		humanoid:SetAttribute(commonTypes.StateAttribute, newState)
	end
end


return CharacterStateMachineCommon
