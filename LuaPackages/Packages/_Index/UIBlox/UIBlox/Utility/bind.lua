--[[
	helper to bind roact component method so it can be passed to callbacks
	usage: call inside the :init() method
		self.onConfirm = bind(self.onConfirm, self)
	self.onConfirm can then safely be passed to events
]]
return function(fn, self)
	return function(first, ...)
		if first == self then
			return fn(self, ...)
		else
			return fn(self, first, ...)
		end
	end
end
