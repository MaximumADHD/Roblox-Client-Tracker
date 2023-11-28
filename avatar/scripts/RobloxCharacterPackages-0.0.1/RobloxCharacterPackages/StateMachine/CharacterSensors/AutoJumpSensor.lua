local BaseCharacterSensor = require(script.Parent:WaitForChild("BaseCharacterSensor"))

local AutoJumpSensor = BaseCharacterSensor:inherit()
AutoJumpSensor.name = script.Name

local UserInputService = game:GetService("UserInputService")

-- Those constants keep consistent with HumanoidState::doAutoJump in cpp
local RAY_LENGTH = 1.5
-- This is how high a ROBLOXian jumps from the mid point of his torso
local JUMP_HEIGHT = 7.0

function AutoJumpSensor:OnStepped(ccsm: any, humanoid: Humanoid, dt: number)
    humanoid:SetAttribute("AutoJump", false)
    -- only autojump in Runing state
    if ccsm:GetCurrentStateName() ~= "Running" then
        return
    end

    -- only mobile device can auto jump
    if not UserInputService.TouchEnabled then
        return
    end

    -- autoJumpEnabled
    if not humanoid.AutoJumpEnabled then
        return
    end

    local humanoidRootPart: BasePart = humanoid.RootPart
    if not humanoidRootPart then
        return
    end

    -- not facing ladder
    local climbSensor = humanoid.Parent.HumanoidRootPart.ClimbSensor
    if climbSensor.SensedPart ~= nil then
        return
    end

    -- velocity isn't zero
    if humanoidRootPart.AssemblyLinearVelocity:FuzzyEq(Vector3.zero) then
        return
    end

    local torsoCFrame = humanoidRootPart:GetPivot()
    local lookAtVector = torsoCFrame.LookVector
    local torsoPos = torsoCFrame.Position

    local torsoRayPos = torsoPos + Vector3.new(0, -humanoidRootPart.Size.Y / 2, 0)
    local jumpRayPos = torsoPos + Vector3.new(0, -humanoidRootPart.Size.Y / 2 + JUMP_HEIGHT, 0)
    local rayVector = lookAtVector * RAY_LENGTH

    local raycastParams = RaycastParams.new()
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
    raycastParams.FilterDescendantsInstances = { humanoid.Parent }
    raycastParams.RespectCanCollide = true
    local torsoRayResult: RaycastResult =
        game.Workspace:Raycast(torsoRayPos, rayVector, raycastParams)

    -- no obstacle in front
    if not torsoRayResult or not torsoRayResult.Instance then
        return
    end

    -- hitted part can't collide with humanoid
    if
        not game.PhysicsService:CollisionGroupsAreCollidable(
            torsoRayResult.Instance.CollisionGroup,
            humanoidRootPart.CollisionGroup
        )
    then
        return
    end

    local jumpRayResult: RaycastResult =
        game.Workspace:Raycast(jumpRayPos, rayVector, raycastParams)
    -- jump ray hit obstacle
    if jumpRayResult and jumpRayResult.Instance and jumpRayResult.Instance.CanCollide then
        return
    end

    humanoid:SetAttribute("AutoJump", true)
end

return AutoJumpSensor
