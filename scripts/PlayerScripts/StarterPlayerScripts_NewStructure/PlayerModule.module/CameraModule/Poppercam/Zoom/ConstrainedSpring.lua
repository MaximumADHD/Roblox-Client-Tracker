local ConstrainedSpring = {} do
	ConstrainedSpring.__index = ConstrainedSpring
	
	local exp = math.exp
	local tau = 2*math.pi

	function ConstrainedSpring.new(f, x, min, max)
		x = math.clamp(x, min, max)
		local self = setmetatable({}, ConstrainedSpring)		
		self.f = f
		self.x = x
		self.dx = 0
		self.min = min
		self.max = max
		self.goal = x
		return self
	end

	function ConstrainedSpring:step(dt)
		local f = self.f*tau
		local x = self.x
		local dx = self.dx
		local min = self.min
		local max = self.max
		local goal = self.goal
		
		-- Given:
		--   f^2*(x[dt] - g) + 2*d*f*x'[dt] + x''[dt] = 0,
		--   x[0] = p,
		--   x'[0] = v
		-- Solve for x[dt], x'[dt]
		
		local offset = goal - x
		local step = f*dt
		local decay = exp(-step)
		
		x = goal + (dx*dt - offset*(step + 1))*decay
		dx = ((offset*f - dx)*step + dx)*decay
		
		-- Constrain
		if x < min then
			x = min
			dx = 0
		elseif x > max then
			x = max
			dx = 0
		end

		self.x = x
		self.dx = dx
		
		return x
	end
	
	function ConstrainedSpring:setBounds(min, max)
		self.min = min
		self.max = max
	end
end

return ConstrainedSpring