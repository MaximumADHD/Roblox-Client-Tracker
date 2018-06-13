-- Critically damped angular spring

local AngleSpring = {} do
	AngleSpring.__index = AngleSpring

	local pi = math.pi
	local tau = math.pi*2
	local exp = math.exp
	
	function AngleSpring.new(frequency, position)
		local self = setmetatable({}, AngleSpring)
		
		self.f = frequency -- nominal frequency
		self.g = position -- goal position
		self.p = position -- position
		self.v = position*0 -- velocity (*0 so that the types match)
		
		return self
	end

	function AngleSpring:setGoal(g)
		self.g = g
	end
	
	function AngleSpring:getState()
		return self.p, self.v
	end

	function AngleSpring:step(dt)
		local f = self.f*tau
		local g = self.g
		local p = self.p
		local v = self.v

		local offset = (p - g + pi)%tau - pi
		local decay = exp(-dt*f)

		-- Given:
		--   f^2*(x[dt] - g) + 2*d*f*x'[dt] + x''[dt] = 0,
		--   x[0] = p,
		--   x'[0] = v
		-- Solve for x[dt], x'[dt]
		
		self.p = (v*dt + offset*(f*dt + 1))*decay + g
		self.v = (v - f*dt*(offset*f + v))*decay
	end
end

return AngleSpring