--! strict
local bodyParts = require(script.Parent:WaitForChild("BodyParts"))

local CharacterPhysicsControllerLoader = {}
local JumpPowerInstantControllerMultiplierPercent = 106 -- taken from C++ DFFlag::JumpPowerInstantControllerMultiplierPercent

function CharacterPhysicsControllerLoader.ClampJumpPower(jumpPower)
    local MinJumpPower = 0.0
    local MaxJumpPower = 1000.0
    return math.clamp(jumpPower, MinJumpPower, MaxJumpPower)
end

function CharacterPhysicsControllerLoader.OldCalculateJumpPower(gravity, jumpHeight)
    return math.sqrt(2.0 * gravity * jumpHeight)
        / (JumpPowerInstantControllerMultiplierPercent * 0.01)
end

function CharacterPhysicsControllerLoader.CalculateJumpPower(humanoid: Instance)
    if humanoid.UseJumpPower then
        return humanoid.JumpPower
    else
        return CharacterPhysicsControllerLoader.ClampJumpPower(
            CharacterPhysicsControllerLoader.OldCalculateJumpPower(
                workspace.Gravity,
                humanoid.JumpHeight
            )
        )
    end
end

function CharacterPhysicsControllerLoader.ComputeLinearImpulseFromJumpPower(h)
    local jumpVel = CharacterPhysicsControllerLoader.CalculateJumpPower(h)
    jumpVel *= (JumpPowerInstantControllerMultiplierPercent * 0.01)
    local characterMass = 0
    for _, p in pairs(h.Parent:GetDescendants()) do
        if p:IsA("BasePart") and bodyParts.isBodyPart(p) then
            characterMass += p.Mass
        end
    end
    return Vector3.new(0, jumpVel * characterMass, 0)
end

function CharacterPhysicsControllerLoader.CreateGroundControllerController(
    character: Instance,
    name: string
)
    local humanoid = character:FindFirstChild("Humanoid")
    local controllerManager = character:FindFirstChild("ControllerManager")
    if controllerManager == nil or humanoid == nil then
        return nil
    end

    local groundController = Instance.new("GroundController", controllerManager)
    groundController.Name = name
    groundController.GroundOffset = humanoid.HipHeight
    return groundController
end

function CharacterPhysicsControllerLoader.CreateAirControllerController(
    character: Instance,
    name: string
)
    local controllerManager = character:FindFirstChild("ControllerManager")
    if controllerManager == nil then
        return nil
    end

    local airController = Instance.new("AirController", controllerManager)
    airController.Name = name
    airController.LinearImpulse = Vector3.zero

    return airController
end

function CharacterPhysicsControllerLoader.CreateSwimControllerController(
    character: Instance,
    name: string
)
    local controllerManager = character:FindFirstChild("ControllerManager")
    if controllerManager == nil then
        return nil
    end

    local swimController = Instance.new("SwimController", controllerManager)
    return swimController
end

function CharacterPhysicsControllerLoader.CreateClimbControllerController(
    character: Instance,
    name: string
)
    local controllerManager = character:FindFirstChild("ControllerManager")
    if controllerManager == nil then
        return nil
    end

    local climbController = Instance.new("ClimbController", controllerManager)
    return climbController
end

function CharacterPhysicsControllerLoader.GetControllerByName(character: Instance, name: string)
    local controllerManager = character:FindFirstChild("ControllerManager")
    if controllerManager == nil then
        return nil
    end
    return controllerManager:FindFirstChild(name)
end

function CharacterPhysicsControllerLoader.AddDefaultControllers(character: Instance)
    local controllerManager = character:FindFirstChild("ControllerManager")
    if controllerManager == nil then
        return nil
    end

    local runningController = controllerManager:FindFirstChild("RunningController")
    if runningController == nil then
        CharacterPhysicsControllerLoader.CreateGroundControllerController(
            character,
            "RunningController"
        )
    end

    local gettingUpController = controllerManager:FindFirstChild("GettingUpController")
    if gettingUpController == nil then
        CharacterPhysicsControllerLoader.CreateGroundControllerController(
            character,
            "GettingUpController"
        )
    end

    local airController = controllerManager:FindFirstChild("AirController")
    if airController == nil then
        airController = CharacterPhysicsControllerLoader.CreateAirControllerController(
            character,
            "AirController"
        )
    end

    local swimController = controllerManager:FindFirstChild("SwimController")
    if swimController == nil then
        swimController = CharacterPhysicsControllerLoader.CreateSwimControllerController(
            character,
            "SwimController"
        )
    end

    local climbController = controllerManager:FindFirstChild("ClimbController")
    if climbController == nil then
        climbController = CharacterPhysicsControllerLoader.CreateClimbControllerController(
            character,
            "ClimbController"
        )
    end
end

function CharacterPhysicsControllerLoader.CreateAndAddGroundSensor(
    character: Instance,
    humanoidRootPart: Part
)
    local controllerManager = character:FindFirstChild("ControllerManager")
    if controllerManager == nil or humanoidRootPart == nil then
        return nil
    end
    local groundSensor = Instance.new("ControllerPartSensor", humanoidRootPart)
    groundSensor.Name = "GroundSensor"
    groundSensor.SensorMode = Enum.SensorMode.Floor
    controllerManager.GroundSensor = groundSensor

    return groundSensor
end

function CharacterPhysicsControllerLoader.CreateAndAddClimbSensor(
    character: Instance,
    humanoidRootPart: Part
)
    local controllerManager = character:FindFirstChild("ControllerManager")
    if controllerManager == nil or humanoidRootPart == nil then
        return nil
    end
    local climbSensor = Instance.new("ControllerPartSensor", humanoidRootPart)
    climbSensor.Name = "ClimbSensor"
    climbSensor.SensorMode = Enum.SensorMode.Ladder
    climbSensor.SearchDistance = 1.2
    controllerManager.ClimbSensor = climbSensor

    return climbSensor
end

function CharacterPhysicsControllerLoader.CreateAndAddBuoyancySensor(torsoattach)
    local buoyancySensor = Instance.new("BuoyancySensor", torsoattach)
    return buoyancySensor
end

function CharacterPhysicsControllerLoader.AddSensorsUnderTorso(character: Model)
    local torsoattach = character:WaitForChild("UpperTorso")
    local buoyancySensor = torsoattach:FindFirstChild("BuoyancySensor")
    if buoyancySensor == nil then
        buoyancySensor = CharacterPhysicsControllerLoader.CreateAndAddBuoyancySensor(torsoattach)
    end
end

function CharacterPhysicsControllerLoader.AddSensorsUnderRootPart(character: Model)
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart == nil then
        return
    end
    local groundSensor = humanoidRootPart:FindFirstChild("GroundSensor")
    if groundSensor == nil then
        groundSensor =
            CharacterPhysicsControllerLoader.CreateAndAddGroundSensor(character, humanoidRootPart)
    end
    local climbSensor = humanoidRootPart:FindFirstChild("ClimbSensor")
    if climbSensor == nil then
        climbSensor =
            CharacterPhysicsControllerLoader.CreateAndAddClimbSensor(character, humanoidRootPart)
    end
end

function CharacterPhysicsControllerLoader.AddDefaultSensors(character: Model)
    CharacterPhysicsControllerLoader.AddSensorsUnderRootPart(character)
    CharacterPhysicsControllerLoader.AddSensorsUnderTorso(character)
end

function CharacterPhysicsControllerLoader.LoadSensorsAndPhysicsController(character: Model)
    local humanoid = character:FindFirstChild("Humanoid")
    if humanoid.EvaluateStateMachine == true then
        error("Error !! Please set EvaluateStateMachine property on Humanoid to false")
        return
    end
    local hrp = character:FindFirstChild("HumanoidRootPart")
    local controllerManager = character:FindFirstChild("ControllerManager")
    if controllerManager == nil then
        controllerManager = Instance.new("ControllerManager", character)
        controllerManager.Name = "ControllerManager"
        controllerManager.RootPart = hrp
    end
    CharacterPhysicsControllerLoader.AddDefaultControllers(character)
    CharacterPhysicsControllerLoader.AddDefaultSensors(character)
end

return CharacterPhysicsControllerLoader
