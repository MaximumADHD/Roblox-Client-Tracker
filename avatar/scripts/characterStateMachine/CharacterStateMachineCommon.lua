--!strict
local CharacterStateMachineCommon = {}

local replicatedStorage : ReplicatedStorage = game:GetService("ReplicatedStorage")
local characterStateMachineFolder = replicatedStorage:WaitForChild("CharacterStateMachine")
local commonTypes = require(replicatedStorage:WaitForChild("CharacterStateMachine"):WaitForChild("CharacterStateMachineTypes"))
local CCSMDef = require(characterStateMachineFolder:WaitForChild("CharacterControlStateMachine"))
local moveToListener = require(characterStateMachineFolder:WaitForChild("MoveToListener"))
local RunService : RunService = game:FindService("RunService")

local debug = false


--[[
	Event Types
		RegisterHumanoidSM (client->server): Client has started a new SM for a new character
		TransferHumanoidSM (server->client): Server is requesting shutdown of SM owned by client
		ContextDataHumanoidSM (client->server): Context data for SM previously running on client 
		StartHumanoidSM (server->client): Server is requesting startup of SM on client
		ConfirmStartHumanoidSM (client->server): Client confirming start of newly transfered SM

]]

function CharacterStateMachineCommon.StartStateMachine(character : Model, humanoid : Humanoid, ccsmDef : any, localEvent : BindableEvent,
	runStartUp : boolean): commonTypes.RunningStateMachineRecord? 

	if character == nil or humanoid == nil or humanoid.Parent == nil or ccsmDef == nil then
		return nil
	end
	
	
	local moveToListenerObject = moveToListener.new(humanoid) 
	local record : commonTypes.RunningStateMachineRecord = {
		character = character,
		humanoid = humanoid,
		CCSM = ccsmDef.new(character),
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

function CharacterStateMachineCommon.ContinueStateMachine(character : Model, humanoid : Humanoid, ccsmDef : any, localEvent : BindableEvent, 
	stateName : string?, context : any): commonTypes.RunningStateMachineRecord? 
	
	if humanoid == nil or humanoid.Parent == nil or ccsmDef == nil then
		return
	end
	
	local record : commonTypes.RunningStateMachineRecord? = 
		CharacterStateMachineCommon.StartStateMachine(character, humanoid, ccsmDef, localEvent, false)
	
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
