local Workspace = script.Parent.Parent
local Layer = require(Workspace.Base.Layer)
local Types = require(Workspace.Base.types)

type TransitionEntry = {
    jointName: string,
    translationDir: Vector3,
    translationMag: number,
    translationSpeed: number,
    rotationAxis: Vector3,
    rotationAngle: number,
    rotationSpeed: number,
    At: number,
    Bt: number,
    Ct: number,
    Dt: number,
    Ar: number,
    Br: number,
    Cr: number,
    Dr: number,
}

type InertialBlendingInternal = Types.ExtendLayer<
    {
        __previousPose: AnimationPose?,
        __currentPose: AnimationPose?,
        __currentDeltaSeconds: number,
        __previousDeltaSeconds: number,
        __requestedBlendDurationSeconds: number?,
        __currentBlendDurationSeconds: number,
        __currentTimeSeconds: number,
        __transitionData: { TransitionEntry },
        __setupTransition: (
            self: InertialBlendingInternal,
            pose: AnimationPose,
            mask: AnimationMask
        ) -> (),
        __applyTransition: (
            self: InertialBlendingInternal,
            pose: AnimationPose,
            mask: AnimationMask
        ) -> (),
    }
    & Types.BlendHandlerT<InertialBlendingInternal>
>

local InertialBlendingLayer = Layer:extend("InertialBlendingLayer") :: InertialBlendingInternal

local INERTIAL_EPSILON = 0.00001

function InertialBlendingLayer:onInit()
    self.__previousPose = nil
    self.__currentPose = nil
    self.__currentDeltaSeconds = 0.0
    self.__previousDeltaSeconds = 0.0
    self.__requestedBlendDurationSeconds = nil
    self.__currentBlendDurationSeconds = 0.0
    self.__currentTimeSeconds = 0.0
    self.__transitionData = {}
end

function InertialBlendingLayer:onUpdate(deltaTimeSeconds: number, phaseState: Types.PhaseState?)
    assert(#self.children == 1)

    -- set self as the blender in the context
    local previousBlender = self.context.blendHandler
    self.context.blendHandler = self
    local updateResult = self.children[1]:update(deltaTimeSeconds, phaseState)
    self.context.blendHandler = previousBlender -- reset

    self.__previousDeltaSeconds = self.__currentDeltaSeconds
    self.__currentDeltaSeconds = deltaTimeSeconds
    self.__currentTimeSeconds += deltaTimeSeconds
    return updateResult
end

-- Original Inertialization GDC presentation to explain the math: https://www.youtube.com/watch?v=BYyv4KTegJI
-- This data captures the polynomial data that does not change over the duration of the blend. These can
-- be cached upfront per joint to speed up the per frame calculations.
local function calcStaticInertialFloats(x0: number, v0: number, duration: number)
    assert(v0 <= INERTIAL_EPSILON)
    local t = duration
    local t2 = t * t
    local t3 = t * t2
    local t4 = t * t3
    local t5 = t * t4

    local a0 = math.max(0.0, (-8.0 * t * v0 - 20.0 * x0) / t2)

    local A = -0.5 * (a0 * t2 + 6.0 * t * v0 + 12.0 * x0) / t5
    local B = 0.5 * (3.0 * a0 * t2 + 16.0 * t * v0 + 30.0 * x0) / t4
    local C = -0.5 * (3.0 * a0 * t2 + 12.0 * t * v0 + 20.0 * x0) / t3
    local D = 0.5 * a0

    return A, B, C, D
end

function InertialBlendingLayer:__setupTransition(pose: AnimationPose, mask: AnimationMask)
    assert(self.__currentPose ~= nil and self.__previousPose ~= nil)

    local jointNames = self.__currentPose:GetJointNames(mask)

    -- attempt to recycle old table, otherwise create a new one with the correct entries
    if self.__transitionData == nil or #self.__transitionData ~= #jointNames then
        self.__transitionData = table.create(#jointNames)
        for i = 1, #jointNames do
            local newEntry: TransitionEntry = {
                jointName = "",
                translationDir = Vector3.new(),
                translationMag = 0,
                translationSpeed = 0,
                rotationAxis = Vector3.new(),
                rotationAngle = 0,
                rotationSpeed = 0,
                At = 0,
                Bt = 0,
                Ct = 0,
                Dt = 0,
                Ar = 0,
                Br = 0,
                Cr = 0,
                Dr = 0,
            }
            self.__transitionData[i] = newEntry
        end
    end

    for i = 1, #jointNames do
        local newEntry = self.__transitionData[i]
        newEntry.jointName = jointNames[i]

        local prev1Joint: ArticulatedJoint? =
            self.__currentPose:GetArticulatedJoint(newEntry.jointName, mask)
        local prev2Joint: ArticulatedJoint? =
            self.__previousPose:GetArticulatedJoint(newEntry.jointName, mask)
        local targetJoint: ArticulatedJoint? = pose:GetArticulatedJoint(newEntry.jointName, mask)

        if prev1Joint == nil or prev2Joint == nil or targetJoint == nil then
            newEntry.jointName = ""
            continue
        end

        local c1 = prev1Joint.LocalCFrame
        local c2 = prev2Joint.LocalCFrame
        local target = targetJoint.LocalCFrame
        local invTarget = target:Inverse()

        newEntry.translationDir = (c1.Position - target.Position)
        newEntry.translationMag = newEntry.translationDir.Magnitude
        newEntry.translationSpeed = 0.0
        if newEntry.translationMag > INERTIAL_EPSILON then
            newEntry.translationDir /= newEntry.translationMag
            local prevDir = (c2.Position - target.Position)
            local prevMag = prevDir:Dot(newEntry.translationDir)
            newEntry.translationSpeed =
                math.min(0.0, (newEntry.translationMag - prevMag) / self.__previousDeltaSeconds)
        end

        newEntry.At, newEntry.Bt, newEntry.Ct, newEntry.Dt = calcStaticInertialFloats(
            newEntry.translationMag,
            newEntry.translationSpeed,
            self.__currentBlendDurationSeconds
        )

        local rotDiff = invTarget * c1
        newEntry.rotationAxis, newEntry.rotationAngle = rotDiff:ToAxisAngle()
        newEntry.rotationSpeed = 0.0
        if math.abs(newEntry.rotationAngle) > INERTIAL_EPSILON then
            local rotDiff2 = invTarget * c2
            local _, angle2 = rotDiff2:ToAxisAngle()
            newEntry.rotationSpeed =
                math.min(0.0, (newEntry.rotationAngle - angle2) / self.__previousDeltaSeconds)
        end

        newEntry.Ar, newEntry.Br, newEntry.Cr, newEntry.Dr = calcStaticInertialFloats(
            newEntry.rotationAngle,
            newEntry.rotationSpeed,
            self.__currentBlendDurationSeconds
        )
    end
end

-- Takes the cached polynomial variables and calculate the intertial value at the given time
local function calcInertialFloat(
    x0: number,
    v0: number,
    time: number,
    duration: number,
    A: number,
    B: number,
    C: number,
    D: number
)
    assert(v0 <= INERTIAL_EPSILON)
    assert(time < duration)
    return (((((A * time) + B) * time + C) * time + D) * time + v0) * time + x0
end

function InertialBlendingLayer:__applyTransition(pose: AnimationPose, mask: AnimationMask)
    for i = 1, #self.__transitionData do
        local entry = self.__transitionData[i]
        if entry.jointName == "" then
            continue
        end

        local mag = calcInertialFloat(
            entry.translationMag,
            entry.translationSpeed,
            self.__currentTimeSeconds,
            self.__currentBlendDurationSeconds,
            entry.At,
            entry.Bt,
            entry.Ct,
            entry.Dt
        )
        local angle = calcInertialFloat(
            entry.rotationAngle,
            entry.rotationSpeed,
            self.__currentTimeSeconds,
            self.__currentBlendDurationSeconds,
            entry.Ar,
            entry.Br,
            entry.Cr,
            entry.Dr
        )

        -- it is expensive to update joints from lua, skip if there is no change
        if math.abs(angle) < INERTIAL_EPSILON and math.abs(mag) < INERTIAL_EPSILON then
            continue
        end

        -- Inertial values are then turned back into translation/rotation values and added to the current pose.
        local joint = pose:GetArticulatedJoint(entry.jointName, mask)
        if joint ~= nil then
            local cFrame = CFrame.fromAxisAngle(entry.rotationAxis, angle)
            local translation = entry.translationDir * mag
            cFrame = cFrame + translation
            joint.LocalCFrame *= cFrame
        end
    end
end

function InertialBlendingLayer:onEvaluate(mask: AnimationMask)
    assert(#self.children == 1)

    -- get the child pose
    local pose = self.children[1]:evaluate(mask)

    -- if a blend request has come in setup the transition data we need
    if self.__requestedBlendDurationSeconds ~= nil then
        if
            self.__currentPose ~= nil
            and self.__previousPose ~= nil
            and self.__previousDeltaSeconds > INERTIAL_EPSILON
        then -- if there is no prev pose we don't need to blend
            self.__currentBlendDurationSeconds = self.__requestedBlendDurationSeconds
            self.__currentTimeSeconds = self.__currentDeltaSeconds

            self:__setupTransition(pose, mask)
        end

        self.__requestedBlendDurationSeconds = nil -- clear request
    end

    -- store the previous pose before we do any transitioning in case the operation modifies currentPose
    if self.__currentPose then
        self.__previousPose = self.__currentPose:Clone()
    end

    -- transition between poses
    if self.__currentTimeSeconds < self.__currentBlendDurationSeconds then
        self:__applyTransition(pose, mask)
    end

    -- cache the current pose
    -- TODO(nashkenazi): Consider ways to clone a pose without an extra allocation.
    self.__currentPose = pose:Clone()
    return pose
end

function InertialBlendingLayer:onReset()
    self.__previousPose = nil
    self.__currentPose = nil
    self.__currentDeltaSeconds = 0.0
    self.__previousDeltaSeconds = 0.0
    self.__requestedBlendDurationSeconds = nil
    self.__currentBlendDurationSeconds = 0.0
    self.__currentTimeSeconds = 0.0
end

function InertialBlendingLayer:requestBlend(durationSeconds: number)
    -- TODO: report metrics and maybe have an event to track blend requests

    -- handle multiple requests by keeping the smallest duration
    if
        self.__requestedBlendDurationSeconds == nil
        or self.__requestedBlendDurationSeconds > durationSeconds
    then
        self.__requestedBlendDurationSeconds = durationSeconds
    end
end

return InertialBlendingLayer
