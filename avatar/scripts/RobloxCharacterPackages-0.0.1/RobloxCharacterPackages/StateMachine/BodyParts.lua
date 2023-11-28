local BodyParts = {}
BodyParts.__index = BodyParts
BodyParts.name = script.Name

local bodyParts = {
    "HumanoidRootPart",
    "Head",
    "LeftFoot",
    "LeftLowerLeg",
    "LeftUpperLeg",
    "LeftHand",
    "LeftLowerArm",
    "LeftUpperArm",
    "RightFoot",
    "RightLowerLeg",
    "RightUpperLeg",
    "RightHand",
    "RightLowerArm",
    "RightUpperArm",
    "LowerTorso",
    "UpperTorso",
}

function BodyParts.isBodyPart(p: Part)
    for index, value in ipairs(bodyParts) do
        if value == p.Name then
            return true
        end
    end
end

function BodyParts.ArmParts()
    local parts = {
        "LeftUpperArm",
        "RightUpperArm",
        "LeftLowerArm",
        "RightLowerArm",
        "LeftHand",
        "RightHand",
    }
    return parts
end

function BodyParts.LegParts()
    local parts = {
        "LeftUpperLeg",
        "RightUpperLeg",
        "LeftLowerLeg",
        "RightLowerLeg",
        "LeftFoot",
        "RightFoot",
    }
    return parts
end

function BodyParts.TorsoParts()
    local parts = { "UpperTorso", "LowerTorso" }
    return parts
end

function BodyParts.HeadParts()
    local parts = { "Head" }
    return parts
end

function BodyParts.GetCollidableParts(arms: boolean, legs: boolean, torso: boolean, head: boolean)
    local parts = {
        HumanoidRootPart = false,
        Head = false,
        LeftFoot = false,
        LeftLowerLeg = false,
        LeftUpperLeg = false,
        LeftHand = false,
        LeftLowerArm = false,
        LeftUpperArm = false,
        RightFoot = false,
        RightLowerLeg = false,
        RightUpperLeg = false,
        RightHand = false,
        RightLowerArm = false,
        RightUpperArm = false,
        LowerTorso = false,
        UpperTorso = false,
    }

    if arms then
        for i, v in ipairs(BodyParts.ArmParts()) do
            parts[v] = true
        end
    end

    if legs then
        for i, v in ipairs(BodyParts.LegParts()) do
            parts[v] = true
        end
    end

    if torso then
        for i, v in ipairs(BodyParts.TorsoParts()) do
            parts[v] = true
        end
    end

    if head then
        for i, v in ipairs(BodyParts.HeadParts()) do
            parts[v] = true
        end
    end
    return parts
end

function BodyParts.SteepSlopeAngle(humanoid: Humanoid)
    if humanoid then
        return math.cos(humanoid.MaxSlopeAngle * math.pi / 180.0)
    else
        return 0.5
    end
end

function BodyParts.SetFriction(part: Part, friction: number, frictionWeight: number)
    if not part then
        return
    end

    local physProperties = PhysicalProperties.new(
        part.CurrentPhysicalProperties.Density,
        friction,
        part.CurrentPhysicalProperties.Elasticity,
        frictionWeight,
        part.CurrentPhysicalProperties.ElasticityWeight
    )
    part.CustomPhysicalProperties = physProperties
end

function BodyParts.GetFriction(part)
    if not part then
        return 0
    end
    return part.CurrentPhysicalProperties.Friction
end

function BodyParts.GetFrictionWeight(part)
    if not part then
        return 0
    end
    return part.CurrentPhysicalProperties.FrictionWeight
end

return BodyParts
