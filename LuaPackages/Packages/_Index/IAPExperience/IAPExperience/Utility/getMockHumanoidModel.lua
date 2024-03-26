-- Util function that creates a dummy humanoid model with a HumanoidRootPart, Head, and PrimaryPart.
-- This is useful for displaying the use of the HumanoidViewport in our storybook with a mock model

return function()
	local model = Instance.new("Model")

    -- Create the Humanoid component
    local humanoid = Instance.new("Humanoid")
    humanoid.Parent = model

    -- Create the HumanoidRootPart
    local humanoidRootPart = Instance.new("Part")
    humanoidRootPart.Name = "HumanoidRootPart"
    humanoidRootPart.Size = Vector3.new(2, 2, 1)
    humanoidRootPart.Position = Vector3.new(0, 2, 0)
    humanoidRootPart.Transparency = 1
    humanoidRootPart.Parent = model

    -- Create the head
    local head = Instance.new("Part")
    head.Name = "Head"
    head.Size = Vector3.new(2, 1, 1)
    head.Position = Vector3.new(0, 5, 0) -- Adjust position so it's above the HumanoidRootPart
    head.Shape = Enum.PartType.Ball
    head.Parent = model

    -- Create the torso
    local torso = Instance.new("Part")
    torso.Name = "Torso"
    torso.Size = Vector3.new(2, 2, 1)
    torso.Position = Vector3.new(0, 3.5, 0) -- Adjust position to be above the HumanoidRootPart
    torso.Parent = model

    -- Set the PrimaryPart of the model
    model.PrimaryPart = humanoidRootPart

    return model
end