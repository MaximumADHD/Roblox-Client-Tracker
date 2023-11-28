--!strict
local CharacterStateMachineCommon = {}

local commonTypes = require(script.Parent:WaitForChild("CharacterStateMachineTypes"))
local CCSMDef = require(script.Parent:WaitForChild("CharacterControlStateMachine"))
local moveToListener = require(script.Parent:WaitForChild("MoveToListener"))
local CharacterSensors = require(script.Parent:WaitForChild("CharacterSensors"))
local RunService: RunService = game:FindService("RunService")

local DEBUG = false

--[[
	Event Types
		RegisterHumanoidSM (client->server): Client has started a new SM for a new character
		TransferHumanoidSM (server->client): Server is requesting shutdown of SM owned by client
		ContextDataHumanoidSM (client->server): Context data for SM previously running on client 
		StartHumanoidSM (server->client): Server is requesting startup of SM on client
		ConfirmStartHumanoidSM (client->server): Client confirming start of newly transfered SM

]]

function CharacterStateMachineCommon.StartStateMachine(
    character: Model,
    humanoid: Humanoid,
    ccsmDef: any,
    localEvent: BindableEvent,
    runStartUp: boolean
): commonTypes.RunningStateMachineRecord?
    if character == nil or humanoid == nil or humanoid.Parent == nil or ccsmDef == nil then
        return nil
    end

    local moveToListenerObject = moveToListener.new(humanoid)
    local newCharacterSensors = CharacterSensors.new()
    local record: commonTypes.RunningStateMachineRecord = {
        character = character,
        humanoid = humanoid,
        CCSM = ccsmDef.new(character),
        moveToListenerInstance = moveToListenerObject,
        heartbeatFunc = nil,
        characterSensors = newCharacterSensors,
    }

    local CCSM: any = record.CCSM
    local currentState: string = ""
    CCSM.localEvent = localEvent

    if DEBUG then
        print("CCSM Created", CCSM, CCSM.definition)
    end

    record.heartbeatFunc = RunService.PreAnimation:Connect(function(dt)
        record.characterSensors:OnStepped(CCSM, record.humanoid, dt)
        CCSM.context["MoveDirection"] =
            moveToListenerObject:getMoveDirection(CCSM:GetCurrentState().isAllowed3dMovemment)

        CCSM:OnStepped(dt)
    end)

    if runStartUp then
        record.CCSM:OnStartup()
    end

    return record
end

function CharacterStateMachineCommon.ContinueStateMachine(
    character: Model,
    humanoid: Humanoid,
    ccsmDef: any,
    localEvent: BindableEvent,
    stateName: string?,
    context: any
): commonTypes.RunningStateMachineRecord?
    if humanoid == nil or humanoid.Parent == nil or ccsmDef == nil then
        return
    end

    local record: commonTypes.RunningStateMachineRecord? =
        CharacterStateMachineCommon.StartStateMachine(
            character,
            humanoid,
            ccsmDef,
            localEvent,
            false
        )

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

function CharacterStateMachineCommon.StopStateMachine(record: commonTypes.RunningStateMachineRecord)
    if record.heartbeatFunc ~= nil then
        record.heartbeatFunc:Disconnect()
    end

    record.CCSM:OnShutdown()
end

local function stringToEum(enumName: string)
    for i, v in next, Enum.HumanoidStateType:GetEnumItems() do
        if v.Name == enumName then
            return v
        end
    end
    return Enum.HumanoidStateType.None
end

function CharacterStateMachineCommon.SetState(character: Model, newState: string)
    local humanoid: Humanoid? = character:FindFirstChildOfClass("Humanoid")
    if humanoid ~= nil then
        humanoid:SetAttribute(commonTypes.StateAttribute, newState)
        if humanoid:GetState().Name ~= newState then
            local enumState = stringToEum(newState)
            if Enum.HumanoidStateType.None ~= enumState then
                humanoid:ChangeState(enumState)
            end
        end
    end
end

return CharacterStateMachineCommon
