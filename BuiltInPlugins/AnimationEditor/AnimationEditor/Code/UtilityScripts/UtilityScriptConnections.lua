local Connections = {}
Connections.__index = Connections

function Connections:new(Paths)
	local self = setmetatable({}, Connections)
	self.Connect = {}		
	return self
end

function Connections:add(newConnection)
	self.Connect[#self.Connect + 1] = newConnection
end

function Connections:disconnectAll()
	for _,connected in ipairs(self.Connect) do
		connected:disconnect()
	end	
	self.Connect = {}
end

function Connections:terminate()
	self:disconnectAll()
end

return Connections
