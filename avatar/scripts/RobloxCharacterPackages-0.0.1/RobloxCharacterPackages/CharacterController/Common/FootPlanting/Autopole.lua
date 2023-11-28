-- Autopole - V0.9

-- This module contains logic for automatically positioning the pole for R15 limbs.
-- The coefficients have been extracted from a large mocap database and represent a vector field
-- encoding the most natural direction of bend for a given limb and a given endeffector position
-- relative to the chainroot in (normalized) character space.

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

local function strcmp(str1, str2)
    return string.lower(str1) == string.lower(str2)
end

local function sampleLimb(limbType : string, input : Vector3) : Vector3
    if     strcmp(limbType, "armR") then return sampleArmR(input)
    elseif strcmp(limbType, "armL") then return flipX(sampleArmR(flipX(input)))
    elseif strcmp(limbType, "legR") then return sampleLegR(input)
    elseif strcmp(limbType, "legL") then return flipX(sampleLegR(flipX(input)))
    else
        assert(false, "Invalid limb type: "..limbType)
        return nil
    end
end

local function isLimbSupported(limbType)
    local validLimbs = { "armR", "armL", "legR", "legL" }
    for _, limb in ipairs(validLimbs) do
        if strcmp(limbType, limb) then
            return true
        end
    end
    return false
end

local function getInferredPolePosition(hrp, eeffWorldCf : CFrame, rootWorldCf : CFrame, limbType : string, limbLength : number) : Vector3
    assert(isLimbSupported(limbType), "getInferredPolePosition() should only be called with a supported limb type")
    
    local chainLength = limbLength or 3 -- default limb length

    local baseCf : CFrame = hrp.CFrame    
    local eeffWPos = eeffWorldCf.Position
    local rootWPos = rootWorldCf.Position
    
    local reach : Vector3 = eeffWPos - rootWPos
    local reachNormLength : number = math.clamp(reach.Magnitude / chainLength, 0, 1)
    local reachNormalized : Vector3 = baseCf:VectorToObjectSpace(reach.Unit * reachNormLength)
    local poleDirNorm : Vector3 = sampleLimb(limbType, reachNormalized)
    local poledir : Vector3 = baseCf:VectorToWorldSpace(poleDirNorm)
    local midpoint : Vector3 = (eeffWPos + rootWPos)/2
    
    return midpoint + poledir
end

--------------------------------------------------------------------------------

local autopole = {}
autopole.getInferredPolePosition = getInferredPolePosition
return autopole