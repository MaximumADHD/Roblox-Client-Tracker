local Locomotion = {}

local MovementStates = { "Climbing", "Freefall", "Running", "Swimming" }

function Locomotion:CalculateMovement(context)
    if context.rootMotion then
        return
    end

    local humanoid = context.humanoid

    local moveDir = context.MoveDirection
    local movementInput = moveDir.Magnitude > 0.1
    if movementInput then
        context.controllerManager.MovingDirection = moveDir
    else
        context.controllerManager.MovingDirection = Vector3.zero
    end

    if humanoid.AutoRotate then
        if movementInput then
            context.controllerManager.FacingDirection =
                context.controllerManager.MovingDirection.Unit
        else
            local rootPart = humanoid.Parent.PrimaryPart
            local ac = context.controllerManager.activeController
            if ac and ac:IsA("SwimController") then
                context.controllerManager.FacingDirection = Vector3.yAxis
            else
                context.controllerManager.FacingDirection = rootPart.CFrame.LookVector
            end
        end
    end
end

function Locomotion:AccountForMaxSlope(context)
    if
        not context.controllerManager
        or not context.controllerManager.ActiveController
        or context.controllerManager.ActiveController.ClassName ~= "GroundController"
        or not context.controllerManager.GroundSensor
        or not context.controllerManager.GroundSensor.SensedPart
    then
        return
    end

    local cm = context.controllerManager

    local dot = cm.GroundSensor.HitNormal:Dot(Vector3.yAxis)
    if dot < math.cos(context.humanoid.MaxSlopeAngle * math.pi / 180.0) then
        if not context.rootMotion then
            cm.MovingDirection = Vector3.zero
        end

        if not cm:GetAttribute("tooSteep") then
            cm:SetAttribute("storedFriction", cm.ActiveController.Friction)
            cm.ActiveController.Friction = 0.0
            cm:SetAttribute("tooSteep", true)
        end
    else
        if cm:GetAttribute("tooSteep") then
            local storedFriction = cm:GetAttribute("storedFriction")
            if storedFriction then
                cm.ActiveController.Friction = storedFriction
            end
            cm:SetAttribute("tooSteep", false)
        end
    end
end

function Locomotion:UpdateFloorDistance(context)
    if not context.controllerManager or not context.controllerManager.GroundSensor then
        return
    end
    local runningController = context.controllerManager:FindFirstChild('RunningController')
    if not runningController then
        return
    end
    local groundOffset = runningController.GroundOffset
    local groundSensor = context.controllerManager.GroundSensor
    local humanoid = context.humanoid
    local humanoidRootPartSize = Vector3.new(2, 2, 1)
    local character = humanoid.Parent
    local torso = nil

    torso = character:WaitForChild("HumanoidRootPart", 0.1)

    if not torso then
        return
    end
    local torsoSize = torso.Size

    -- these reinitialized depending on rig type below
    local characterScale = 1
    local maxDistance = torsoSize.y * 0.5

    -- If AutomaticScaling is enabled then the HumanoidRootPart will be moved to align with the leg length of the character.
    if humanoid.AutomaticScalingEnabled then
        -- Half size is 40% of the size, this is the remaining 10%
        maxDistance = 0.1 * torsoSize.y
    else
        -- This compensates for the lower HumanoidRootPart height
        local rigSet = -0.25 * torsoSize.y
        maxDistance -= rigSet
    end

    local currentHipHeight = groundOffset - torsoSize.y * 0.5
    characterScale = currentHipHeight / 2 -- 2 is the R15 hipHeight

    local oldFloor = groundSensor.SensedPart
    local hysteresis = oldFloor and 1.5 or 1.1
    local verticalVelocity = math.abs(torso.AssemblyLinearVelocity.y)
    verticalVelocity /= characterScale
    -- NOTE: the 100 comes from DFInt::FreeFallFloorSearchDistanceIncreaseVelocity
    if verticalVelocity > 100 then
        hysteresis += verticalVelocity / 100
    end

    maxDistance += hysteresis * groundOffset

    groundSensor.SearchDistance = maxDistance
end

function Locomotion:OnStepped(stateMachine)
    for _, statename in ipairs(MovementStates) do
        if stateMachine.currentState.name == statename then
            self:CalculateMovement(stateMachine.context)
            break
        end
    end
    self:UpdateFloorDistance(stateMachine.context)
    self:AccountForMaxSlope(stateMachine.context)
end

return Locomotion
