--[[ CCSM Base State ]]
--
local baseState =
    require(script.Parent.Parent:WaitForChild("BaseStateMachine"):WaitForChild("BaseStateModule"))
local commonTypes = require(script.Parent.Parent:WaitForChild("CharacterStateMachineTypes"))
local BodyParts = require(script.Parent.Parent:WaitForChild("BodyParts"))

local CCSMBaseState = baseState:inherit()
CCSMBaseState.name = script.Name
CCSMBaseState.activeController = ""
CCSMBaseState.isEnabled = true

----------------------------------------------------------------------------------

function CCSMBaseState.WindingPart(rad)
    return math.floor((rad + math.pi) / (2 * math.pi))
end

function CCSMBaseState.RadWrap(rad)
    if rad >= -math.pi and rad < math.pi then
        return rad
    end

    local answer = rad - ((2 * math.pi) * CCSMBaseState.WindingPart(rad))
    return answer
end

function CCSMBaseState.GetHeading(direction: Vector3)
    return math.atan2(-direction.x, direction.z) -- might need to wrap this to -pi to pi
end

------------------------------------------------------------------------------------
function CCSMBaseState:SetPartsCollide(humanoid: Humanoid, collide: boolean, parts)
    local character = humanoid.Parent
    for _, partName in pairs(parts) do
        local part = character:FindFirstChild(partName)
        if part then
            part.CanCollide = collide
        end
    end
end

function CCSMBaseState:SetArmsCollide(humanoid: Humanoid, collide: boolean)
    local parts = BodyParts.ArmParts()
    self:SetPartsCollide(humanoid, collide, parts)
end

function CCSMBaseState:SetLegsCollide(humanoid: Humanoid, collide: boolean)
    local parts = BodyParts.LegParts()
    self:SetPartsCollide(humanoid, collide, parts)
end

function CCSMBaseState:SetTorsoCollide(humanoid: Humanoid, collide: boolean)
    local parts = BodyParts.TorsoParts()
    self:SetPartsCollide(humanoid, collide, parts)
end

function CCSMBaseState:SetHeadCollide(humanoid: Humanoid, collide: boolean)
    local parts = BodyParts.HeadParts()
    self:SetPartsCollide(humanoid, collide, parts)
end

------------------------------------------------------------------------------------

function CCSMBaseState:OnCreate(...)
    baseState.OnCreate(self, ...)

    self.timer = 0
    self.armsShouldCollide = false
    self.legsShouldCollide = false
    self.headShouldCollide = true
    self.torsoShouldCollide = true
end

function CCSMBaseState:OnEnter(stateMachine)
    baseState.OnEnter(self, stateMachine)

    local humanoid = stateMachine.context.humanoid
    if humanoid ~= nil then
        self:SetArmsCollide(humanoid, self.armsShouldCollide)
        self:SetLegsCollide(humanoid, self.legsShouldCollide)
        self:SetTorsoCollide(humanoid, self.torsoShouldCollide)
        self:SetHeadCollide(humanoid, self.headShouldCollide)

        local humanoid = stateMachine.context.humanoid
        if stateMachine.localEvent ~= nil then
            local collisionSettingRecord: ChangeCollisionSettingsRecord = {
                character = stateMachine.context.character,
                parts = BodyParts.GetCollidableParts(
                    self.armsShouldCollide,
                    self.legsShouldCollide,
                    self.torsoShouldCollide,
                    self.headShouldCollide
                ),
            }
            stateMachine.localEvent:Fire(
                stateMachine.context.character,
                humanoid,
                "ChangeCollisionSettings",
                collisionSettingRecord
            )
        end

        humanoid:ChangeState(self.humanoidState)
        humanoid:SetAttribute(commonTypes.StateAttribute, self.name)
        if stateMachine.localEvent ~= nil then
            local record: ChangeStateSMRecord = {
                character = stateMachine.context.character,
                newState = self.name,
                newHumanoidState = self.humanoidState.Name,
            }
            stateMachine.localEvent:Fire(
                stateMachine.context.character,
                humanoid,
                "ChangeStateSM",
                record
            )
        end
    end
    local controllerManager = stateMachine.context.controllerManager
    if controllerManager ~= nil then
        controllerManager.ActiveController = controllerManager:FindFirstChild(self.activeController)
    end
    self.timer = 0
end

function CCSMBaseState:OnStepped(stateMachine, dt)
    baseState.OnStepped(self, stateMachine, dt)
    self.timer = self.timer + dt
    stateMachine.context.noFloorTimer = stateMachine.context.noFloorTimer + dt
end

return CCSMBaseState
