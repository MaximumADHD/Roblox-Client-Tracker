-- Module Autopole - V0.9

--------------------------------------------------------------------------------

-- This module contains logic for automatically positioning the pole for R15 limbs.
-- The coefficients have been extracted from a large mocap database and represent a vector field
-- encoding the most natural direction of bend for a given limb and a given endeffector position
-- relative to the chainroot in (normalized) character space.
-- In the future, we'll provide a way to automatically compute custom coefficients for any character
-- to make them look realistic without the need of any code, by just providing some animations.

local autopole = {}

--------------------------------------------------------------------------------


local coeff_legR_deg1_x = { -0.1874807345, -0.06207166053, -0.1192063376, 0.2290710966 }
local coeff_legR_deg1_y = { 0.242135385, 0.1350793546, 1.0956741, 0.1117602164 }
local coeff_legR_deg1_z = { 0.01422319325, -0.8755434004, -0.2329404428, 0.2883698382 }

local coeff_armR_deg2_x = { -0.07007368612, 0.10251069, 0.5993962769, -0.6037409627, 0.347519482,
    -0.2288832603, 0.4331624892, -0.06287933873, 0.1910576068, 0.4596370633 }
local coeff_armR_deg2_y = { 0.01460383007, -0.04426703292, -0.6042593545, -0.05349798679, 0.3976546735,
    0.5385596121, -0.6917595805, 0.4404424392, 0.1839667596, -0.3555677377 }
local coeff_armR_deg2_z = { -1.037156244, 0.5401683242, 0.01587856731, 0.1434278639, -0.2458717123,
    0.1214061645, -0.3021139957, -0.0108483032, 0.01034929284, -0.09609450883 }


local function getCoefficientsDeg1(v : Vector3)
    return {v.x, v.y, v.z, 1}
end

local function getCoefficientsDeg2(v : Vector3)
    return {v.x, v.y, v.z, v.x*v.x, v.y*v.y, v.z*v.z, v.x*v.y, v.y*v.z, v.z*v.x, 1}
end

local function flipX(v : Vector3) : Vector3
    return Vector3.new(-v.x, v.y, v.z)
end

local function flipZ(v : Vector3) : Vector3
    return Vector3.new(v.x, v.y, -v.z)
end

local function sumProduct(a, b) : number
    assert(#a == #b)
    local ans = 0
    for i = 1,#a do
        ans += a[i] * b[i]
    end
    return ans
end

local function sampleArmR(input : Vector3) : Vector3
    local i = getCoefficientsDeg2(flipZ(input))
    return flipZ(Vector3.new(
        sumProduct(coeff_armR_deg2_x, i),
        sumProduct(coeff_armR_deg2_y, i),
        sumProduct(coeff_armR_deg2_z, i)).Unit)
end

local function sampleLegR(input : Vector3) : Vector3
    local i = getCoefficientsDeg1(flipZ(input))
    return flipZ(Vector3.new(
        sumProduct(coeff_legR_deg1_x, i),
        sumProduct(coeff_legR_deg1_y, i),
        sumProduct(coeff_legR_deg1_z, i)).Unit)
end

local function sampleLimb(limbType : string, input : Vector3) : Vector3
    if     limbType == "ArmR" or limbType == "armR" then return sampleArmR(input)
    elseif limbType == "ArmL" or limbType == "armL" then return flipX(sampleArmR(flipX(input)))
    elseif limbType == "LegR" or limbType == "legR" then return sampleLegR(input)
    elseif limbType == "LegL" or limbType == "legL" then return flipX(sampleLegR(flipX(input)))
    else
        assert(false, "Invalid limb type: "..limbType)
        return nil
    end
end

--------------------------------------------------------------------------------

local function getCf(instance : Instance)
    if (instance:IsA("Attachment")) then
        return instance.WorldCFrame
    else
        return instance.CFrame
    end
end

--------------------------------------------------------------------------------

local function isLimbSupported(limbType)
    return limbType == "ArmL" or limbType == "ArmR" or limbType == "LegL" or limbType == "LegR"
        or limbType == "armL" or limbType == "armR" or limbType == "legL" or limbType == "legR"
end

local function getLimbType(ik : IKControl)
    local limbType = ik:GetAttribute("limbType")
    if limbType and isLimbSupported(limbType) then
        return limbType
    end

    if ik.Pole then
        if ik.Pole.Name:find("^autopole_") then -- starts with
            limbType = string.sub(ik.Pole.Name, 9)
            if isLimbSupported(limbType) then
                return limbType
            end
        end
    end
    -- TODO: use an attribute

    if ik.EndEffector == nil or ik.ChainRoot == nil then
        return nil
    end

    local eeffLabel = ik.EndEffector.Name
    local rootLabel = ik.ChainRoot.Name

    if     eeffLabel == "LeftHand"  and rootLabel == "LeftUpperArm"  then return "ArmL"
    elseif eeffLabel == "RightHand" and rootLabel == "RightUpperArm" then return "ArmR"
    elseif eeffLabel == "LeftFoot"  and rootLabel == "LeftUpperLeg"  then return "LegL"
    elseif eeffLabel == "RightFoot" and rootLabel == "RightUpperLeg" then return "LegR"
    else return nil end
end

local function isLimb(ik : IKControl)
    return getLimbType(ik) ~= nil
end

local function usesAutopole(ik : IKControl)
    return ik.Pole and isLimb(ik)
end

--------------------------------------------------------------------------------

local function getInferredPolePosition(ik : IKControl) : Vector3
    if not ik then return end
    assert(isLimb(ik), "getInferredPolePosition() should only be called on IKControls that represent limbs")
    local character = ik:FindFirstAncestorOfClass("Model")
    if not character then return end
    local hrp = character:WaitForChild("HumanoidRootPart")
    local baseCf : CFrame = hrp.CFrame
    
    local eeffWPos = getCf(ik.EndEffector).Position -- TODO: for better results, we need to get the nodes from the solver
    --local rootWPos = getCf(ik.ChainRoot).Position
    local rootWPos = getCf(ik.ChainRoot:FindFirstChildWhichIsA("Attachment")).Position -- HACKY: we know the configuration so we can do this, but should use the node
    
    local reach : Vector3 = eeffWPos - rootWPos
    local chainLength : number = ik:GetChainLength()
    local reachNormLength : number = math.clamp(reach.Magnitude / chainLength, 0, 1)
    --assert(reachNormLength <= 1.01)
    local reachNormalized : Vector3 = baseCf:VectorToObjectSpace(reach.Unit * reachNormLength)
    local poleDirNorm : Vector3 = sampleLimb(getLimbType(ik), reachNormalized)
    local poledir : Vector3 = baseCf:VectorToWorldSpace(poleDirNorm)
    local midpoint : Vector3 = (eeffWPos + rootWPos)/2

    return midpoint + poledir
end

local function initAutopole(ik : IKControl)
    if ik.Pole == nil and isLimb(ik) then
        local limbType = getLimbType(ik)
        local pole : Attachment = Instance.new("Attachment")
        local character = ik:FindFirstAncestorOfClass("Model")
        local hrp = character:WaitForChild("HumanoidRootPart")
        pole.Parent = hrp
        pole.Name = "autopole_"..limbType
        ik.Pole = pole
    end
end

local function updateAutopole(ik : IKControl)
    initAutopole(ik)
    if usesAutopole(ik) then
        ik.Pole.WorldPosition = getInferredPolePosition(ik)
    end
end


--------------------------------------------------------------------------------

local iks = {}

local function Update(dt)
    for _, ik in pairs(iks) do
        updateAutopole(ik)
    end
end

local function TryAddingIKInstance(inst)
    if inst:isA("IKControl") then
        table.insert(iks, inst)
    end
end

local function TryRemovingIKInstance(inst)
    if inst:isA("IKControl") then
        table.remove(iks, inst)
    end
end

function autopole:Init(character : Model)
    if character == nil then return end
    for _, descendant in pairs(character:GetDescendants()) do
        TryAddingIKInstance(descendant)
    end
    character.DescendantAdded:Connect(TryAddingIKInstance)
    character.DescendantRemoving:Connect(TryRemovingIKInstance)
    game:GetService("RunService").Stepped:Connect(Update)
end

return autopole