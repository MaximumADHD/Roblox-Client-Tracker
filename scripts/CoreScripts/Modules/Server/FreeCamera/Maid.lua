-- Maid class

local destructors = {
	['function'] = function(item)
		item()
	end;
	['RBXScriptConnection'] = function(item)
		item:Disconnect()
	end;
	['Instance'] = function(item)
		item:Destroy()
	end;
}

local Maid = {}
Maid.__index = Maid

function Maid:Mark(item)
	if destructors[typeof(item)] then
		self.trash[#self.trash + 1] = item
	else
		error(('Maid does not support type "%s"'):format(typeof(item)), 2)
	end
end

function Maid:Unmark(item)
	if item then
		local trash = self.trash
		for i = 1, #trash do
			if trash[i] == item then
				table.remove(trash, i)
				break
			end
		end
	else
		self.trash = {}
	end
end

function Maid:Sweep()
	local trash = self.trash
	for i = 1, #trash do
		local item = trash[i]
		destructors[typeof(item)](item)
	end
	self.trash = {}
end

function Maid.new()
	local self = setmetatable({}, Maid)
	self.trash = {}
	return self
end

return Maid.new()
