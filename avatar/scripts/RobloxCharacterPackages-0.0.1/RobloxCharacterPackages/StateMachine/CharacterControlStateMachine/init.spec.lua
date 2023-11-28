local Packages = game.ReplicatedStorage.Packages
local replicatedStorage: ReplicatedStorage = game:GetService("ReplicatedStorage")

local JestGlobals = require(Packages.Dev.JestGlobals)
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local humanoidRemoteEvent: RemoteEvent = Instance.new("RemoteEvent")
humanoidRemoteEvent.Name = "HumanoidStateMachineUpdate"
humanoidRemoteEvent.Parent = replicatedStorage

local CCSM = script.Parent
local CCSMDef = require(CCSM)
local sensorAndControllerLoader =
    require(script.Parent.Parent:WaitForChild("CharacterPhysicsControllerLoader"))
local common = require(CCSM.Parent.CharacterStateMachineCommon)

local character = nil
local hrp = nil
local torso = nil
local humanoid = nil
local controllerManager = nil
local bindableEvent = nil
local record = nil

function tableLength(T)
    local count = 0
    for _ in pairs(T) do
        count = count + 1
    end
    print(count)
    return count
end

local function heartbeatFake()
    local dt = 0.017
    record.characterSensors:OnStepped(record.CCSM, record.humanoid, dt)
    record.CCSM.context["MoveDirection"] = record.moveToListenerInstance:getMoveDirection(
        record.CCSM:GetCurrentState().isAllowed3dMovemment
    )

    record.CCSM:OnStepped(dt)
end

beforeEach(function()
    character = Instance.new("Model")
    character.Name = "Character"
    hrp = Instance.new("Part")
    hrp.Name = "HumanoidRootPart"
    hrp.Parent = character
    torso = Instance.new("MeshPart")
    torso.Name = "UpperTorso"
    torso.Parent = character
    humanoid = Instance.new("Humanoid")
    humanoid.Name = "Humanoid"
    humanoid.Parent = character
    humanoid.EvaluateStateMachine = false
    controllerManager = Instance.new("ControllerManager")
    controllerManager.Name = "ControllerManager"
    controllerManager.Parent = character

    bindableEvent = Instance.new("BindableEvent")

    sensorAndControllerLoader.LoadSensorsAndPhysicsController(character)
    record = common.StartStateMachine(character, humanoid, CCSMDef, bindableEvent, true)
end)

describe("Character Setup", function()
    it("should have HumanoidRootPart sensors", function()
        expect(character.HumanoidRootPart.GroundSensor).toBeTruthy()
        expect(character.HumanoidRootPart.ClimbSensor).toBeTruthy()
    end)

    it("should have UpperTorso sensors", function()
        expect(character.UpperTorso.BuoyancySensor).toBeTruthy()
    end)

    it("should have ControllerManager and Controllers", function()
        expect(character.ControllerManager).toBeTruthy()
        expect(character.ControllerManager.RunningController).toBeTruthy()
        expect(character.ControllerManager.GettingUpController).toBeTruthy()
        expect(character.ControllerManager.AirController).toBeTruthy()
        expect(character.ControllerManager.SwimController).toBeTruthy()
        expect(character.ControllerManager.ClimbController).toBeTruthy()
    end)

    it("should be in startingState", function()
        expect(record.CCSM.currentState.name).toBe(CCSMDef.definition.startingStateName)
    end)
end)

describe("State Machine tour", function()
    it("fall->land->run->jump->fall->climb->run->fall", function()
        heartbeatFake()
        expect(record.CCSM.currentState.name).toBe("Freefall")
        character.HumanoidRootPart.GroundSensor.SensedPart = Instance.new("Part")
        heartbeatFake()
        expect(record.CCSM.currentState.name).toBe("Landed")
        for _ = 1, 5 do
            heartbeatFake()
        end
        expect(record.CCSM.currentState.name).toBe("Running")
        humanoid.Jump = true
        heartbeatFake()
        expect(record.CCSM.currentState.name).toBe("Jumping")
        humanoid.Jump = false
        character.HumanoidRootPart.GroundSensor.SensedPart = nil
        heartbeatFake()
        expect(record.CCSM.currentState.name).toBe("Freefall")
        character.HumanoidRootPart.ClimbSensor.SensedPart = Instance.new("Part")
        heartbeatFake()
        expect(record.CCSM.currentState.name).toBe("Climbing")
        character.HumanoidRootPart.ClimbSensor.SensedPart = nil
        heartbeatFake()
        expect(record.CCSM.currentState.name).toBe("Running")
        for _ = 1, 10 do
            heartbeatFake()
        end
        expect(record.CCSM.currentState.name).toBe("Freefall")
    end)
end)
