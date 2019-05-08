--[[
	Test helper. Create a mock model for unit tests.
]]
return function()
	local mockModel = Instance.new("Model")
	local mockRootPart = Instance.new("Part")
	mockRootPart.Name = "HumanoidRootPart"
	mockRootPart.Parent = mockModel
	local mockHumanoid = Instance.new("Humanoid")
	mockHumanoid.Name = "Humanoid"
	mockHumanoid.Parent = mockModel
	local mockHumanoidDescription = Instance.new("HumanoidDescription")
	mockHumanoidDescription.Name = "HumanoidDescription"
	mockHumanoidDescription.Parent = mockHumanoid

	return mockModel
end