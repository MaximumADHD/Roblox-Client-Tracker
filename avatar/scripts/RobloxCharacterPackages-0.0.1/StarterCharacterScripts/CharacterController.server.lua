local TextService = game:GetService("TextService")
-- Since this is a Script in Client RunContext, this script executes even from
-- the StarterCharacterScripts folder. We short circuit here to make sure we
-- don't get any errors.
if not script.Parent:IsA("Model") then
    return
end

local LOG_STATE_CHANGES = false
local DEBUG_DRAW_DIRS = false

-- Temp toggle for root motion
-- Things like swimming will work on top of existing controller logic
local ENABLE_ROOT_MOTION = false

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Compositor = require(ReplicatedStorage.RobloxCharacterPackages.MotionCompositor)
local CharacterController = ReplicatedStorage.RobloxCharacterPackages.CharacterController
local DebugDraw = require(CharacterController.Dev.DebugDraw)
local mu = require(CharacterController.Utils.MovementUtils)

local Players = game:GetService("Players")

local player: Player = Players.LocalPlayer
local character: Model = script.Parent
local hrp: Part = character:WaitForChild("HumanoidRootPart")
local humanoid: Humanoid = character:WaitForChild("Humanoid")
local animator: Animator = humanoid:WaitForChild("Animator")

local AnimationClipProvider = game:GetService("AnimationClipProvider")

local AbilityManager = require(CharacterController.AbilityManager)

local CompositorModule = CharacterController.DefaultCompositor
local compositor = Compositor.createCompositor(CompositorModule, animator, require(CharacterController.CompositorParams))
compositor:play()

-- XXX: Workaround for animation intersecting floor.
humanoid.AutomaticScalingEnabled = false

compositor:setParam("character", character)
compositor:setParam("characterConfig", require(character:WaitForChild("ConfigData")))

-- Use replicated params for non-local characters
local isLocalCharacter = Players:GetPlayerFromCharacter(character) == Players.LocalPlayer
if not isLocalCharacter then
    local animateServer = character:WaitForChild("CharacterControllerServer")
    animateServer.AttributeChanged:Connect(function(attribute: string)
        compositor:setParam(attribute, animateServer:GetAttribute(attribute))
    end)
    return
end

-- Only local characters will get controller
local controllers = {}
AbilityManager.forEachAbility(function (ability)
    local controller = ability.getController()
    if not controller then
        return
    end
    table.insert(controllers, controller.new(player))
end)


local lastState = "Running"

local TIC_INTERVAL_DURATION_SECONDS = 1 / 20
local lastReplicatedGameTime = 0
game:GetService("RunService").Stepped:Connect(function(gameTime, dt)
    -- Update state only when it has changed
    local state = humanoid:GetAttribute("Avatar_ControlState")
    if state ~= lastState then
        compositor:setParams({
            state = state,
            statePrevious = lastState,
        })

        if LOG_STATE_CHANGES then
            print("STATE:", state)
        end

        lastState = state
    end

    local sensor:ClimbSensor = hrp:WaitForChild('ClimbSensor')
    local sensorHitNormal:Vector3
    if sensor then
        sensorHitNormal = sensor.HitNormal
    end
    local CCSMData = character.CharacterController

    -- The desired vector input, in world space.
    local input: Vector3 = humanoid:GetMoveVelocity() / humanoid.WalkSpeed

    local speedFactor = mu.fetchDesiredSpeedFactor(CCSMData)
    if speedFactor then
        input  = input * speedFactor
    end
    local inputGround: Vector3 = input
    local inputGroundCharSpace: Vector3 = input
    if input.Magnitude > 0 then
        inputGround = vectorOnGround(input)
        inputGroundCharSpace = vectorOnGround(hrp.CFrame.Rotation:PointToObjectSpace(input))
    end

    -- Emote happens in idle (running no input) this brings it out in case of input
    if compositor:getParam("state") == "Emote" and inputGroundCharSpace.Magnitude > 0 then
        compositor:setParam("state", "Running")
    end

    -- This is the actual desired velocity
    local linearVelocity = input * humanoid.WalkSpeed

    -- Camera direction on ground
    local cameraGround: Vector3 = vectorOnGround(workspace.Camera.cFrame.LookVector)

    if DEBUG_DRAW_DIRS then
        DebugDraw.clear()

        local origin = hrp.CFrame.Position + Vector3.new(0, 4, 0)
        DebugDraw.drawRay(origin, cameraGround * 2, Color3.new(1, 0, 0))
        DebugDraw.drawRay(origin, input * 2, Color3.new(1, 1, 0))
        DebugDraw.drawRay(origin, inputGround * 2, Color3.new(0, 1, 0))
        DebugDraw.drawRay(hrp.CFrame.Position, hrp.CFrame.LookVector * 2, Color3.new(0, 0, 1))
        DebugDraw.drawRay(hrp.CFrame.Position, hrp.CFrame.Rotation:PointToObjectSpace(hrp.CFrame.LookVector) * 2, Color3.new(1, 0, 1))
    end

    -- Common params
    local params = {
        dt = dt,
        hrpCF = hrp.CFrame,
        hrpDir = vectorOnGround(hrp.CFrame.LookVector),
        desiredVelocity = linearVelocity,
        inputDir = inputGround,
        inputDirCharSpace = inputGroundCharSpace,
        cameraDir = cameraGround,
        sensorHitNormal = sensorHitNormal
    }
    compositor:setParams(params)

    -- Update controllers
    for _, controller in pairs(controllers) do
        local newParams = controller:Update({
            hrp = hrp,
            character = character,
            state = state,
            params = compositor:getAllParams(),
        })

        -- Set any new params returned by the controller
        if newParams then
            compositor:setParams(newParams)
        end
    end

    -- Replicate params
    if gameTime - lastReplicatedGameTime > TIC_INTERVAL_DURATION_SECONDS then
        lastReplicatedGameTime = gameTime
        character.CompositorReplicateEvent:FireServer(compositor:getAllParams())
    end
end)

-- Returns a the ground unit vector (3D unitized without y component)
function vectorOnGround(v:Vector3)
    local vu = v.Unit
    return Vector3.new(vu.X, 0, vu.Z).Unit
end

game:GetService("RunService").PreSimulation:Connect(function(deltaTimeSim)

    local cm: ControllerManager = character:WaitForChild('ControllerManager')
    local ac = cm.ActiveController

    if not ac then
        return
    end
    local CCSMData = character.CharacterController
    -- HumanoidRootPart-relative delta motion for this frame
    local rm = animator.RootMotion
    if ENABLE_ROOT_MOTION and animator.RootMotionWeight > 0.0 then
        local rootFrame:CFrame = hrp.CFrame

        if rootFrame then
            local COMPENSATED_TURN_TARGET = false

            local axis, angle = rm.Rotation:ToAxisAngle()
            local cmAngle = 0
            if COMPENSATED_TURN_TARGET then
                -- XXX: Unstable with camera control (sets the target beyond the actual target)
                cmAngle = angle / (cm.BaseTurnSpeed * deltaTimeSim)
            else
                -- XXX: Limits the rotation for stability (in exchange for convergence speed)
                cmAngle = math.min(math.abs(angle), cm.BaseTurnSpeed) * math.sign(angle)
            end

            -- Update CM
            cm.FacingDirection = rootFrame:VectorToWorldSpace(CFrame.fromAxisAngle(axis, cmAngle).LookVector)

            -- CM notes:
            -- There still seems to be a acceleration (may need api support on CM)
            -- The rotation sometimes takes the longer way around (seems to depend on world space rotation)

            -- WorldSpace velocity needed to get to target position in this time step.
            local worldVelocity = rootFrame:VectorToWorldSpace(rm.Position) / deltaTimeSim
            cm.MovingDirection = worldVelocity / cm.BaseMoveSpeed
            ac.MoveSpeedFactor = 1
        end
    else
        local moveDir = mu.fetchDesiredMovingDirection(CCSMData)
        if moveDir then
            cm.MovingDirection = moveDir
        end
        local facingDir = mu.fetchDesiredFacingDirection(CCSMData)
        if facingDir then
            cm.FacingDirection = facingDir
        end
        local speedFactor = mu.fetchDesiredSpeedFactor(CCSMData)
        if speedFactor then
            ac.MoveSpeedFactor = speedFactor
        end
    end
end)

script.Parent:WaitForChild("Animate"):WaitForChild("PlayEmote").OnInvoke = function(emote)
    if compositor:getParam("state") ~= "Running" then
        return false
    end

    if compositor:getParam("inputDir").Magnitude > 0 then
        return false
    end

    if typeof(emote) == "Instance" and emote:IsA("Animation") then
        task.spawn(function()
            AnimationClipProvider:GetAnimationClipAsync(emote.AnimationId)
            compositor:setParams({
                state = "Emote",
                EmoteId = emote.AnimationId,
            })
        end)

        return true
    end

    return false
end

compositor:getEvent("EmoteEnding"):Connect(function()
    compositor:setParam("state", "Running")
end)

character.ChildAdded:Connect(function(tool)
    if tool:IsA("Tool") then
        compositor:setParam("toolHeld", true)

        local activateConn
        activateConn = tool.Activated:Connect(function()
            compositor:setParam("toolActive", true)
        end)

        character.ChildRemoved:Connect(function(child)
            if child == tool then
                compositor:setParam("toolHeld", false)
                activateConn:Disconnect()
            end
        end)
    end
end)

-- TODO: check if deactivate is needed (the animation still finishes when deactivated)
compositor:getEvent("ToolEnding"):Connect(function()
    compositor:setParam("toolActive", false)
end)
