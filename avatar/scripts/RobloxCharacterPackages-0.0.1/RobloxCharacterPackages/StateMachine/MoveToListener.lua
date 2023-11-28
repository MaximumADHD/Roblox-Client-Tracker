--! strict
local MoveToListener = {}
MoveToListener.__index = MoveToListener
MoveToListener.name = script.Name

function MoveToListener:getHumanoidPosition()
    local torso = self.humanoid.Parent:FindFirstChild("UpperTorso")
    local offset = self.humanoid.HipHeight + (0.5 * torso.Size.Y) --hip height + half of torso
    return torso.CFrame.Position - Vector3.new(0, offset, 0)
end

function MoveToListener:calcDesiredDirection()
    local moveToDirection = Vector3.zero
    -- If walkToTarget is set then calculate world position based on walkToPoint (objectspace).
    if self.humanoid.WalkToPart then
        local position =
            self.humanoid.WalkToPart.CFrame:pointToWorldSpace(self.humanoid.WalkToPoint)
        moveToDirection = (position - self:getHumanoidPosition()).Unit
    else
        moveToDirection = (self.humanoid.WalkToPoint - self:getHumanoidPosition()).Unit
    end
    return moveToDirection
end

function MoveToListener:getMoveDirection(allow3dMovement: boolean)
    local moveDirection = Vector3.zero
    if self.moveToActive then
        moveDirection = self:calcDesiredDirection()
    else
        if self.humanoid.WalkSpeed == 0 then
            return Vector3.zero
        end
        moveDirection = self.humanoid:GetMoveVelocity() * (1 / self.humanoid.WalkSpeed)
    end

    if not allow3dMovement then
        moveDirection *= Vector3.new(1, 0, 1)
    end

    return moveDirection
end

function MoveToListener:OnMoveDirectionChanged()
    -- reset or local state
    if self.reachedConnection then
        self.reachedConnection:Disconnect()
    end
    -- abort any other walk targets if active.
    -- Move takes precedence over MoveTo
    self.moveToActive = false
end

function MoveToListener:OnWalkToPointChanged()
    -- disconnect from older connection.
    if self.reachedConnection then
        self.reachedConnection:Disconnect()
    end

    self.moveToActive = true
    self.reachedConnection = self.humanoid.MoveToFinished:Connect(function(reached)
        self.moveToDirection = Vector3.zero
        self.reachedConnection:Disconnect()
        self.moveToActive = false
    end)
end

function MoveToListener.new(humanoidInstance: Humanoid)
    local self = {
        reachedConnection = nil,
        humanoid = humanoidInstance,
        moveToDirection = Vector3.zero,
        moveToPosition = Vector3.zero,
        moveToActive = false,
    }

    setmetatable(self, MoveToListener)
    humanoidInstance:GetPropertyChangedSignal("WalkToPoint"):Connect(function()
        self:OnWalkToPointChanged()
    end)
    humanoidInstance:GetPropertyChangedSignal("MoveDirection"):Connect(function()
        self:OnMoveDirectionChanged()
    end)

    return self
end

return MoveToListener
