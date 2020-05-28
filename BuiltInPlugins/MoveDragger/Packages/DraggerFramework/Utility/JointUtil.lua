
local Framework = script.Parent.Parent

local JointUtil = {}

function JointUtil.getConstraintCounterpart(constraint, part)
    if constraint.Attachment0 and constraint.Attachment0.Parent == part then
        return constraint.Attachment1 and constraint.Attachment1.Parent or nil
    else
        return constraint.Attachment0 and constraint.Attachment0.Parent or nil
    end
end

function JointUtil.getJointInstanceCounterpart(joint, part)
    if joint.Part0 == part then
        return joint.Part1
    else
        return joint.Part0
    end
end

function JointUtil.getWeldConstraintCounterpart(weldConstraint, part)
    if weldConstraint.Part0 == part then
        return weldConstraint.Part1
    else
        return weldConstraint.Part0
    end
end

return JointUtil