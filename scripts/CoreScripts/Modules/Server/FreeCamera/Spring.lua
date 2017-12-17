
local Spring = {}
Spring.__index = Spring

function Spring:Update(dt)
	local t, k, d, x0, v0 = self.t, self.k, self.d, self.x, self.v
	local a0 = k*(t - x0) + v0*d
	local v1 = v0 + a0*(dt/2)
	local a1 = k*(t - (x0 + v0*(dt/2))) + v1*d
	local v2 = v0 + a1*(dt/2)
	local a2 = k*(t - (x0 + v1*(dt/2))) + v2*d
	local v3 = v0 + a2*dt
	local x4 = x0 + (v0 + 2*(v1 + v2) + v3)*(dt/6)
	self.x, self.v = x4, v0 + (a0 + 2*(a1 + a2) + k*(t - (x0 + v2*dt)) + v3*d)*(dt/6)
	return x4
end

function Spring.new(stiffness, dampingCoeff, dampingRatio, initialPos)
	local self = setmetatable({}, Spring)

	dampingRatio = dampingRatio or 1
	local m = dampingCoeff*dampingCoeff/(4*stiffness*dampingRatio*dampingRatio)
	self.k = stiffness/m
	self.d = -dampingCoeff/m
	self.x = initialPos
	self.t = initialPos
	self.v = initialPos*0

	return self
end

return Spring
