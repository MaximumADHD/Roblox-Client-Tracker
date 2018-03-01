------------------------------------------------------------------------
-- Spring.lua
-- Simulates the motion of a critically damped spring.
-- Author: fractality
--
-- API:
--   Spring Spring.new(double freq, vector pos)
--   vector Spring:Update(double dt, vector goal)
--   void Spring:Reset(vector state)
--
-- Notes:
--   The state vector type must implement the following metamethods:
--     vector __mul(vector, double)
--     vector __add(vector, vector)
--     vector __sub(vector, vector)
------------------------------------------------------------------------

local Spring = {}
Spring.__index = Spring

function Spring.new(freq, pos)
	local self = setmetatable({}, Spring)
	self.dxdt = pos*0
	self.freq = freq
	self.x = pos
	return self
end

function Spring:Update(dt, goal)
	local dxdt = self.dxdt
	local freq = self.freq*2*math.pi
	local x = self.x
	
	local offset = goal - x
	local step = freq*dt
	x = goal + (dxdt*dt - offset*(step + 1))*math.exp(-step)
	dxdt = ((offset*freq - dxdt)*step + dxdt)*math.exp(-step)
	
	self.x = x
	self.dxdt = dxdt
	return x
end

function Spring:Reset(pos)
	self.dxdt = pos*0
	self.x = pos
end

return Spring