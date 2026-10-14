local MockCoreGui = {}

MockCoreGui.__index = MockCoreGui

function MockCoreGui.new()
	return setmetatable({}, MockCoreGui)
end

function MockCoreGui:Destroy() end

return MockCoreGui
