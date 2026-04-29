--[[
	Utility function for fast fowarding all the particles on the character some
    number of frames.
]]
local module = {}

-- API specifies 16.7 ms per frame, so jump fwd 4 seconds.
local NUM_FRAMES_TO_FFWD = 4 * 60

module.InstanceIsAParticleEffect = function(instance: Instance): boolean
	return instance:IsA("ParticleEmitter") or instance:IsA("Fire") or instance:IsA("Smoke") or instance:IsA("Sparkles")
end

local function recurFastForwardParticles(instance: Instance)
	if module.InstanceIsAParticleEffect(instance) then
		local particleEmitter = instance :: ParticleEmitter
		particleEmitter:FastForward(NUM_FRAMES_TO_FFWD)
	end
	local children = instance:GetChildren()
	for _, child in children do
		recurFastForwardParticles(child)
	end
end

module.FastForwardParticles = function(character: Model)
	recurFastForwardParticles(character)
end

-- Finds the nearest BasePart to re-parent an orphaned effect to.
local function findNearestBasePart(instance: Instance): BasePart?
	local current = instance.Parent
	while current do
		if current:IsA("BasePart") then
			return current :: BasePart
		end

		-- For Tool: the Handle child (named "Handle") is the canonical BasePart
		if current:IsA("Tool") then
			local handle = current:FindFirstChild("Handle")
			if handle and handle:IsA("BasePart") then
				return handle :: BasePart
			end
		end

		-- For any Model: use the PrimaryPart if it exists
		if current:IsA("Model") then
			local part = current.PrimaryPart
			if part then
				return part :: BasePart
			end
		end
		current = current.Parent
	end
	return nil
end

-- Re-parents particle effects that are children of non-BasePart, non-Attachment
-- instances (e.g. Script, LocalScript) to the nearest BasePart ancestor.
-- This fixes legacy gear assets where effects were placed under Scripts while still Enabled.
local function recurReparentOrphanedEffects(instance: Instance)
	if module.InstanceIsAParticleEffect(instance) then
		local parent = instance.Parent
		if parent and not parent:IsA("BasePart") and not parent:IsA("Attachment") then
			local basePart = findNearestBasePart(instance)
			if basePart then
				instance.Parent = basePart
			end
		end
		return
	end

	for _, child in instance:GetChildren() do
		recurReparentOrphanedEffects(child)
	end
end

module.ReparentOrphanedParticleEffects = function(root: Instance)
	recurReparentOrphanedEffects(root)
end

return module
