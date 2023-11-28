local Util = {}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Compositor = require(ReplicatedStorage.RobloxCharacterPackages.MotionCompositor)
local CharacterController = ReplicatedStorage.RobloxCharacterPackages.CharacterController
local EmulatedRootMotionClip = require(CharacterController.Utils.EmulatedRootMotionClip)

function Util._test()
    -- Typical remap() usage
    assert(Util.remap(.5, 0, 1, 100, 200) == 150)
    
    -- Can interpolate beyond the source range
    assert(Util.remap(1.5, 0, 1, 100, 200) == 250)
    assert(Util.remap(-.5, 0, 1, 100, 200) == 50)
    
    -- But not if using remapClamped()
    assert(Util.remapClamped(1.5, 0, 1, 100, 200) == 200)
    assert(Util.remapClamped(-.5, 0, 1, 100, 200) == 100)
    
    -- When src range is zero, doesn't divide by zero, returns destLow
    assert(Util.remap(.5, 0, 0, 100, 200) == 100)
    assert(Util.remap(0, 0, 0, 100, 200) == 100)
    assert(Util.remap(-.5, 0, 0, 100, 200) == 100)
    
    -- When dest range is zero, just remapping to this value
    assert(Util.remap(.5, 0, 1, 100, 100) == 100)
    assert(Util.remap(0, 0, 1, 100, 100) == 100)
    assert(Util.remap(-.5, 0, 1, 100, 100) == 100)
    
    -- When both ranges are zero
    assert(Util.remap(.5, 0, 0, 100, 100) == 100)
    assert(Util.remap(0, 0, 0, 100, 100) == 100)
    assert(Util.remap(-.5, 0, 0, 100, 100) == 100)
    
    -- Inverted ranges isn't expected usage, but results are valid numbers
    assert(Util.remap(.5, 1, 0, 100, 200) == Util.remap(-.5, 0, 1, 100, 200) * -1)
    assert(Util.remap(.5, 0, 1, 200, 100) == Util.remap(.5, 0, 1, 100, 200))

    -- Lerp tests
    assert(Util.lerp(100, 200, 0.5) == 150)
    assert(Util.lerp(100, 200, 1.5) == 250)
    assert(Util.lerpClamped(100, 200, 1.5) == 200)
    -- Lerp in the negative direction
    assert(Util.lerp(200, 100, 0.5) == 150)
    assert(Util.lerp(200, 100, 1.5) == 50)
    assert(Util.lerpClamped(200, 100, 1.5) == 100)

    assert(Util.smoothStep(0) == 0 and Util.smoothStep(1) == 1)
    assert(Util.smootherStep(0) == 0 and Util.smootherStep(1) == 1)

    assert(Util.clamp01(-0.1) == 0)
    assert(Util.clamp01(0.3) == 0.3)
    assert(Util.clamp01(1.3) == 1)
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

function Util.lerp(a, b, t)
    return a + (b - a) * t
end

function Util.lerpClamped(a, b, t)
    return a + (b - a) * Util.clamp01(t)
end

function Util.smootStep(t)
    -- 1st order smoothing function (3x^2 - 2x^3)
    return t * t * (3 - 2 * t)
end

function Util.smootherStep(t)
    -- 2nd order smoothing function (6x^5 - 15x^4 + 10x^3)
    return t * t * t * (t * (t * 6 - 15) + 10)
end

function Util.clamp01(x: number)
    return math.clamp(x, 0, 1)
end

function Util.collinear(a: Vector3, b: Vector3) : boolean
    -- Returns whether the two vectors are collinear.
    return a:Cross(b):FuzzyEq(Vector3.zero)
end

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

function Util.CFrameFromVectors(a: Vector3, b: Vector3)
    -- Returns a CFrame containing the rotation from vector a to b.
    if not Util.collinear(a, b) then
        local axis = a:Cross(b)
        local angleRad = a:Angle(b)
        return CFrame.fromAxisAngle(axis, angleRad)
    end
    return CFrame.new()
end

function Util.linearSmooth(value, target, maxVelocity, dt: number)
    -- Returns the value smoothed towards target with maximum velocity.
    local desiredChange = target - value
    local maxChange = maxVelocity * dt
    local change = math.clamp(desiredChange, -maxChange, maxChange)
    return value + change
end

function Util.UnitSafe(v)
    -- NOTES: there is a proposal (@sguggiari) to change the behavior of v.Unit to this.
    -- This can be removed and switched to v.Unit when that's in.
    if v.Magnitude < 0.00001 then
        return v
    end
    return v.Unit
end

function Util.safeClampUnit(vector, default)
    -- clamps vectors to have magnitude >= 1
    if vector.Magnitude >= 1 then
        return vector
    elseif vector.Magnitude <= 0.0001 then
        return default
    else
        return vector.Unit
    end
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

-- Helper function for defining a clip.
function Util.newClip(clipInfo)
    assert(clipInfo.id, "Clip ID not provided")
    
    local clip = Compositor.newDef("Clip")
    clip:animationId("rbxassetid://"..clipInfo.id)
    
    -- XXX: Removing until this clip start/end feature is merged with root
    --      motion on anim-compositor.
    -- clip:startTime(clipInfo.startTime)
    -- clip:endTime(clipInfo.endTime)
    
    if clipInfo.name then
        clip:name(clipInfo.name)
    end

    return clip
end

-- Helper for emulated RM clips (RM isn't embeded in the anim data)
-- Returns reference to both root motion wrapper and clip
-- In order to define prop functions on either
function Util.newEmulatedRootMotionClip(clipInfo)
    assert(clipInfo.id, "Clip ID not provided")
    assert(clipInfo.speed, "Clip Speed not provided")

    local clip = Util.newClip(clipInfo)

    local wrapper = Compositor.newDef(EmulatedRootMotionClip)
        :speed(clipInfo.speed)
        :addChild(nil, clip)

    return wrapper, clip
end

return Util