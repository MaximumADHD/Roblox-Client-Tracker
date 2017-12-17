-- Creating BaseView --

local BaseView = {}

-- Naive implementation of get
function BaseView:Get(...)
	return self.new(...)
end

function BaseView:Template()
	local class = {}
	for key, value in pairs(self) do
		class[key] = value
	end
	return class
end

function BaseView:Start()
end

function BaseView:Stop()
end

function BaseView:Resume()
end

function BaseView:Pause()
end

function BaseView:Destruct()
end

return BaseView