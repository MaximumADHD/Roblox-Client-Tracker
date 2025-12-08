local Workspace = script.Parent.Parent
local Layer = require(Workspace.Base.Layer)
local Types = require(Workspace.Base.types)

export type MirrorLayer = Types.ExtendLayer<{}>

local MirrorLayer = Layer:extend("MirrorLayer")

function mirrorTransform(
    translation: Vector3,
    quaternion: { number },
    tMult: Vector3,
    qMult: { number }
): (Vector3, { number })
    local t = translation * tMult
    local q = quaternion
    assert(#q == 4, "Quaternion must contain 4 components")
    for i = 1, #q, 1 do
        q[i] = q[i] * qMult[i]
    end
    return t, q
end

local function mirrorAxisToMultipliers(mirrorAxis: Vector3): (Vector3, { number })
    if mirrorAxis == Vector3.xAxis then
        return Vector3.new(-1, 1, 1), { 1, -1, -1, 1 }
    elseif mirrorAxis == Vector3.yAxis then
        return Vector3.new(1, -1, 1), { -1, 1, -1, 1 }
    elseif mirrorAxis == Vector3.zAxis then
        return Vector3.new(1, 1, -1), { -1, -1, 1, 1 }
    end

    assert(false, "Mirror axis needs to be positive x, y or z axis")
    return Vector3.new(-1, 1, 1), { 1, -1, -1, 1 } -- return x
end

local function swapLeftRight(str: string): string
    str = string.lower(str)
    if string.sub(str, 1, 4) == "left" then
        return "right" .. string.sub(str, 5)
    elseif string.sub(str, 1, 5) == "right" then
        return "left" .. string.sub(str, 6)
    elseif string.sub(str, 1, 1) == "l" then
        return "r" .. string.sub(str, 2)
    elseif string.sub(str, 1, 1) == "r" then
        return "l" .. string.sub(str, 2)
    else
        return ""
    end
end

local function findMirrorJointName(jointName: string, jointNames: { string }): (string, number)
    jointName = string.lower(jointName)
    local mirrorName = swapLeftRight(jointName)
    if mirrorName ~= "" then
        -- see if the joint exists
        for i = 1, #jointNames do
            if string.lower(jointNames[i]) == mirrorName then
                return mirrorName, i
            end
        end
    end
    return "", -1
end

type MirrorEntry = {
    jointName: string,
    mirrorJointName: string,
    tMult: Vector3,
    qMult: { number },
}

local function buildMirrorTableForPose(
    pose: AnimationPose,
    mask: AnimationMask,
    mirrorAxis: Vector3
): { MirrorEntry }
    local mirrorTable: { MirrorEntry } = {}
    local jointNames = pose:GetJointNames(mask)
    local jointProcessed = { table.unpack({ false }, 1, #jointNames) } -- remember which joints have been found so we don't double up
    local tMult, qMult = mirrorAxisToMultipliers(mirrorAxis)

    for i = 1, #jointNames do
        local jointName = jointNames[i]
        if jointName ~= "" and jointProcessed[i] ~= true then
            jointProcessed[i] = true
            local mirrorName, mirrorIndex = findMirrorJointName(jointName, jointNames)
            if mirrorName == "" then -- no mirror found
                table.insert(
                    mirrorTable,
                    { jointName = jointName, mirrorJointName = "", tMult = tMult, qMult = qMult }
                )
            else
                jointProcessed[mirrorIndex] = true
                table.insert(mirrorTable, {
                    jointName = jointName,
                    mirrorJointName = mirrorName,
                    tMult = tMult,
                    qMult = qMult,
                })
            end
        end
    end
    return mirrorTable
end

MirrorLayer.defaultProps = {
    mirrorTable = {}, -- if empty we will try to populate it automatically based on naming convention
    mirrorAxis = Vector3.new(1, 0, 0), -- mirror on x by default
}

function MirrorLayer:onInit() end

function MirrorLayer:onUpdate(deltaTime: number)
    self.children[1]:update(deltaTime)
end

function MirrorLayer:onEvaluate(mask: AnimationMask)
    local pose = self.children[1]:evaluate(mask)

    -- build mirrorTable if it's empty, we do this here cause we need to have a pose. This also
    -- assumes the rig never changes between frames
    if #self.props.mirrorTable == 0 then
        self.props.mirrorTable = buildMirrorTableForPose(pose, mask, self.props.mirrorAxis)
    end

    for _, mirrorData in self.props.mirrorTable do
        local joint = pose:GetArticulatedJoint(mirrorData.jointName, mask)
        if joint == nil then
            continue
        end

        local t, q = mirrorTransform(
            joint.LocalTranslation,
            joint.LocalQuaternion,
            mirrorData.tMult,
            mirrorData.qMult
        )

        if mirrorData.mirrorJointName == "" then
            joint.LocalTranslation = t
            joint.LocalQuaternion = q
        else
            local mirrorJoint = pose:GetArticulatedJoint(mirrorData.mirrorJointName, mask)
            if mirrorJoint == nil then
                continue
            end
            local t2, q2 = mirrorTransform(
                mirrorJoint.LocalTranslation,
                mirrorJoint.LocalQuaternion,
                mirrorData.tMult,
                mirrorData.qMult
            )
            mirrorJoint.LocalTranslation = t
            mirrorJoint.LocalQuaternion = q
            joint.LocalTranslation = t2
            joint.LocalQuaternion = q2
        end
    end

    return pose
end

function MirrorLayer:onReset()
    self.props.mirrorTable = {}
end

return MirrorLayer
