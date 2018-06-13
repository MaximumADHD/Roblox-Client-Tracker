local Maid = {} do
	Maid.__index = Maid
	
	local destructors = {
		['function'] = function(item)
			item()
		end,
		['Instance'] = function(item)
			item:Destroy()
		end,
		['RBXScriptConnection'] = function(item)
			item:Disconnect()
		end,
	}
	
	function Maid.new()
		local self = setmetatable({}, Maid)
		self.trash = {}
		return self
	end

	function Maid:mark(item)
		if destructors[typeof(item)] then
			local trash = self.trash
			trash[#trash + 1] = item
		else
			error(('No destructor defined for type "%s"'):format(typeof(item)), 2)
		end
	end
	
	function Maid:sweep()
		local trash = self.trash
		for i = 1, #trash do
			local item = trash[i]
			destructors[typeof(item)](item)
		end
		self.trash = {}
	end
end

return Maid
