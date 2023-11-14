local SmoothDamp = {}
SmoothDamp.__index = SmoothDamp

function SmoothDamp.new(smoothTime, maxSpeed)
    -- Default params
    if smoothTime == nil then smoothTime = .2 end
    if maxSpeed == nil then maxSpeed = math.huge end

    local obj = {}

    obj._curValue = 0
    obj._curVelocity = 0
    obj._smoothTime = smoothTime
    obj._maxSpeed = maxSpeed

    setmetatable(obj, SmoothDamp)
    return obj
end

function SmoothDamp:setSmoothTime(time)
    self._smoothTime = time
end

function SmoothDamp:update(targetValue, dt)
    local smoothTime = math.max(0.0001, self._smoothTime);
    local omega = 2 / smoothTime;

    local x = omega * dt;
    local exp = 1 / (1 + x + 0.48 * x * x + 0.235 * x * x * x);
    local change = self._curValue - targetValue;
    local originalTo = targetValue;

    -- Clamp maximum speed
    local maxChange = self._maxSpeed * smoothTime;
    change = math.clamp(change, -maxChange, maxChange);
    targetValue = self._curValue - change;

    local temp = (self._curVelocity + omega * change) * dt;
    self._curVelocity = (self._curVelocity - omega * temp) * exp;
    local output = targetValue + (change + temp) * exp;

    -- Prevent overshooting
    if ((originalTo - self._curValue) > 0.0) == (output > originalTo) then
        output = originalTo;
        self._curVelocity = (output - originalTo) / dt;
    end

    self._curValue = output
    return self._curValue
end

function SmoothDamp:getValue()
    return self._curValue
end

return SmoothDamp