local TestHelpers = {}

function TestHelpers.createMockStudioStyleGuideColor()
	local mock = {}
	setmetatable(mock, {
		__index = function()
			return Color3.new()
		end
	})
    return mock
end

function TestHelpers.createMockStudioStyleGuideModifier()
	local mock = {}
	setmetatable(mock, {
		__index = function()
			return nil
		end
	})
    return mock
end

return TestHelpers