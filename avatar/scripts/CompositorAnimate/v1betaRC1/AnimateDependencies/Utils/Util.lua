local Util = {}

-------------------------------- Math Utility Functions --------------------------------

function Util.clamp01(value: number) : number
    return math.clamp(value, 0, 1)
end

function Util.lerp(a, b, t : number)
    return a + (b - a) * t
end

function Util.lerpClamped(a, b, t : number)
    return a + (b - a) * Util.clamp01(t)
end

function Util.remap(value, srcLow, srcHigh, destLow, destHigh)
    if srcHigh - srcLow == 0 then
        return destLow
    end
    return destLow + (destHigh - destLow) * (value - srcLow) / (srcHigh - srcLow)
end

function Util.remapClamped(value, srcLow, srcHigh, destLow, destHigh)
    if srcHigh - srcLow == 0 then
        return destLow
    end
    return destLow + (destHigh - destLow) * Util.clamp01((value - srcLow) / (srcHigh - srcLow))
end

function Util.smoothStep(x : number) : number
    -- 1st order smoothing function (3x^2 - 2x^3)
    return x * x * (3 - 2 * x)
end

function Util.smootherStep(x : number) : number
    -- 2nd order smoothing function (6x^5 - 15x^4 + 10x^3)
    return x * x * x * (x * (x * 6 - 15) + 10)
end

function Util.linearSmooth(value, target, maxVelocity, dt: number)
    -- Returns the value smoothed towards target with maximum velocity.
    local desiredChange = target - value
    local maxChange = maxVelocity * dt
    local change = math.clamp(desiredChange, -maxChange, maxChange)
    return value + change
end

function Util.isFinite(value: number | Vector2 | Vector3 | CFrame)
    local components = {}
    if typeof(value) == "number" then
        components = { value }
    elseif typeof(value) == "Vector2" then
        components = { value.X, value.Y }
    elseif typeof(value) == "Vector3" then
        components = { value.X, value.Y, value.Z }
    elseif typeof(value) == "CFrame" then
        components = { value:GetComponents() }
    else
        error("Unsupported type in Util.isFinite")
    end
    for _, component in ipairs(components) do
        if component ~= component or math.abs(component) == math.huge then
            return false
        end
    end
    return true
end

-------------------------------- Vector and Transform Utility Functions --------------------------------

function Util.getTangents(input: Vector3)
    -- Returns two vectors perpendicular to the input and themselves.
    local Z = input.Unit
    local Xd
    if math.abs(Z.x) < 0.9 then
        Xd = Vector3.xAxis
    else
        Xd = Vector3.yAxis
    end
    local X = (Xd - (Z * Z:Dot(Xd))).Unit
    local Y = Z:Cross(X)
    return X, Y
end

function Util.unitSafe(v)
    -- NOTES: there is a proposal (@sguggiari) to change the behavior of v.Unit to this.
    -- This can be removed and switched to v.Unit when that's in.
    if v.Magnitude < 0.00001 then
        return v
    end
    return v.Unit
end

function Util.rotateVector(v: Vector2, angle: number)
    -- Rotates v by angle radians.
    local sin = math.sin(angle)
    local cos = math.cos(angle)
    return Vector2.new((cos * v.X) - (sin * v.Y), (sin * v.X) + (cos * v.Y))
end

function Util.transformAabb(min: Vector3, max: Vector3, cframe: CFrame): (Vector3, Vector3)
    -- transforms an AABB defined by min,max by a CFrame and returns a new bounding box
    local halfSize = 0.5 * (max - min)
    local center = 0.5 * (max + min)
    local transformedCenter = cframe * center
    local rotatedSize = Util.rotateAxisAlignedBoxSize(cframe, halfSize)
    return transformedCenter - rotatedSize, transformedCenter + rotatedSize
end

function Util.rotateAxisAlignedBoxSize(size: Vector3, cframe: CFrame)
    -- Given an axis aligned box's size and a rotation, compute the size of the AABB for the rotated box.
    assert(size.X >= 0 and size.Y >= 0 and size.Z >= 0, "Size must be positive")
    local absComponents = { cframe:GetComponents() }
    for i, v in absComponents do
        absComponents[i] = math.abs(v)
    end
    local absCframe = CFrame.new(table.unpack(absComponents))
    local rotatedSize = absCframe:VectorToWorldSpace(size)
    return rotatedSize
end

function Util.biasTowards(input: Vector2, target: Vector2, angle: number)
    -- Biases the direction of input towards target without modifying the magnitude.
    -- The bias is limited to angle, and then tapers off.
    local signedAngle = input:Angle(target, true)
    local strength = Util.clamp01(2 - math.abs(signedAngle) / angle)
    return Util.rotateVector(input, signedAngle * strength)
end

-------------------------------- String and Formatting Utility Functions --------------------------------

function Util.startsWith(str : string, prefix : string)
    return #prefix <= #str and string.sub(str, 1, #prefix) == prefix
end

function Util.formatFloat(x: number)
    return string.format("%.2f", x)
end

function Util.formatVector2(v: Vector2)
    return string.format("(%.2f, %.2f)", v.X, v.Y)
end

function Util.formatVector3(v: Vector3)
    return string.format("(%.2f, %.2f, %.2f)", v.X, v.Y, v.Z)
end

--------------------------------

return Util