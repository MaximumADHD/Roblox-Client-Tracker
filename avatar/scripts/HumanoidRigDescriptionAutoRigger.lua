local mixamoMapping = {
    Root          = 'mixamorig:Hips',
    Pelvis        = 'mixamorig:Spine',
    Waist         = 'mixamorig:Spine1',
    Chest         = 'mixamorig:Spine2',
    Neck          = 'mixamorig:Neck',
    HeadBase      = 'mixamorig:Head',
    LeftClavicle  = 'mixamorig:LeftShoulder',
    LeftShoulder  = 'mixamorig:LeftArm',
    LeftElbow     = 'mixamorig:LeftForeArm',
    LeftWrist     = 'mixamorig:LeftHand',
    RightClavicle = 'mixamorig:RightShoulder',
    RightShoulder = 'mixamorig:RightArm',
    RightElbow    = 'mixamorig:RightForeArm',
    RightWrist    = 'mixamorig:RightHand',
    LeftHip       = 'mixamorig:LeftUpLeg',
    LeftKnee      = 'mixamorig:LeftLeg',
    LeftAnkle     = 'mixamorig:LeftFoot',
    LeftToeBase   = 'mixamorig:LeftToeBase',
    RightHip      = 'mixamorig:RightUpLeg',
    RightKnee     = 'mixamorig:RightLeg',
    RightAnkle    = 'mixamorig:RightFoot',
    RightToeBase  = 'mixamorig:RightToeBase',
}

local function AutoMap(hrd: HumanoidRigDescription, char: Model)
    if hrd == nil or char == nil then
        warn('HumanoidRigDescription or character model are nil, exiting')
        return
    end

    for _, rl in ipairs(hrd:GetJointNames()) do
        hrd[rl] = nil

        local inst = char:FindFirstChild(rl, true)
        if inst ~= nil and inst:IsA('Motor6D') then
            hrd[rl] = inst
        else
            inst = char:FindFirstChild(mixamoMapping[rl], true)
            if inst ~= nil and inst:IsA('Bone') then
                hrd[rl] = inst
            end
        end
    end
end

local function AutoRig(hrd: HumanoidRigDescription, char: Model)
    AutoMap(hrd, char) -- currently only do AutoMap
end

local hrd, char = ... -- provided arguments
AutoRig(hrd, char)
