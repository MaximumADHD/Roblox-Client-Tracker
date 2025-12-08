local SmoothDamp = {}
SmoothDamp.__index = SmoothDamp

local SmoothDampCf = {}
SmoothDampCf.__index = SmoothDampCf

local eps = 0.0001

local function clampNumber(number, magnitude)
    assert(magnitude >= 0)

    return math.clamp(number, -magnitude, magnitude)
end

local function clampMag(vector, magnitude)
    assert(magnitude >= 0)

    if vector.Magnitude <= magnitude then
        return vector
    end

    return vector * (magnitude / vector.Magnitude)
end

local function dotNumber(a, b)
    return a * b
end

local function dotVector(a, b)
    return a:Dot(b)
end

local function setInit(self, curr, zero, clampFunc, dotFunc)
    self._curValue = curr
    self._curVelocity = zero
    self._clampFunc = clampFunc
    self._dotFunc = dotFunc
    self._zero = zero
end

local function init(self, curr)
    if typeof(curr) == "number" then
        setInit(self, curr, 0, clampNumber, dotNumber)
    elseif typeof(curr) == "Vector2" then
        setInit(self, curr, Vector2.zero, clampMag, dotVector)
    elseif typeof(curr) == "Vector3" then
        setInit(self, curr, Vector3.zero, clampMag, dotVector)
    else
        warn(
            "Unsupported type used with SmoothDamp. Currently only number, Vector2, Vector3 are supported."
        )
    end

    self._initialized = true
end

-- Supports numbers, Vector2, Vector3 and CFrames

function SmoothDamp.new(smoothTime, maxSpeed)
    local self = setmetatable({}, SmoothDamp)
    self._smoothTime = smoothTime or 0.2
    self._maxSpeed = maxSpeed or math.huge
    self._initialized = false

    return self
end

function SmoothDamp.newCf(smoothTime, maxSpeed)
    return SmoothDampCf.new(smoothTime, maxSpeed)
end

function SmoothDamp:setSmoothTime(time)
    self._smoothTime = time
end

function SmoothDamp:reset(value)
    if not self._initialized then
        init(self, value)
    else
        self._curValue = value

        self._curVelocity = self._zero
    end
end

function SmoothDamp:update(targetValue, dt)
    if not self._initialized then
        init(self, targetValue)
    end

    dt = dt or 1 / 60 -- TODO: find right dt if not passed in

    if self._smoothTime < eps then
        self._curVelocity = self._zero

        return targetValue
    elseif dt < eps then
        return self._curValue
    end

    local omega = 2 / self._smoothTime
    local x = omega * dt
    local exp = 1 / (1 + x * (1 + x * (0.48 + x * 0.235)))
    local change = self._curValue - targetValue
    local originalTo = targetValue

    -- Clamp maximum speed
    local maxChange = self._maxSpeed * self._smoothTime
    change = self._clampFunc(change, maxChange)
    targetValue = self._curValue - change
    local temp = (self._curVelocity + omega * change) * dt
    self._curVelocity = (self._curVelocity - omega * temp) * exp
    local output = targetValue + (change + temp) * exp

    -- Prevent overshooting
    if self._dotFunc(originalTo - self._curValue, output - originalTo) > 0 then
        output = originalTo

        self._curVelocity = self._zero
    end
    self._curValue = output
    return self._curValue
end

function SmoothDamp:setValue(value)
    self._curValue = value
end

function SmoothDamp:getValue()
    return self._curValue
end

local function smoothDampRotation(current: CFrame, target: CFrame, dt, smoother): CFrame
    local changeRot = current * target:Inverse()
    local axis, angle = changeRot:ToAxisAngle()
    local change = axis * angle

    smoother:setValue(change)

    local angularStep = smoother:update(Vector3.zero, dt)
    angle = angularStep.Magnitude
    axis = if angle < eps then Vector3.xAxis else angularStep / angle
    local step = CFrame.fromAxisAngle(axis, angle)
    local output = step * target

    return output:Orthonormalize()
end

function SmoothDampCf.new(smoothTime, maxSpeed)
    local self = setmetatable({}, SmoothDampCf)
    self._smootherPos = SmoothDamp.new(smoothTime, maxSpeed)
    self._smootherRot = SmoothDamp.new(smoothTime, maxSpeed)

    return self
end

function SmoothDampCf:setSmoothTime(time)
    self._smootherPos:setSmoothTime(time)
    self._smootherRot:setSmoothTime(time)
end

function SmoothDampCf:update(targetValue: CFrame, dt)
    self._curValue = self._curValue or targetValue
    local pos = self._smootherPos:update(targetValue.Position, dt)
    local rot =
        smoothDampRotation(self._curValue.Rotation, targetValue.Rotation, dt, self._smootherRot)

    self._curValue = rot + pos
    return self._curValue
end

function SmoothDampCf:getValue()
    return self._curValue
end

return SmoothDamp
