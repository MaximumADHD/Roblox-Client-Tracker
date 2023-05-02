-- MoveAdapterPartHitboxes.lua
-- Module script implementing moving R6 adapter parts to their correct positions.
local MoveAdapterPartHitboxes = {}

local R6Parts: { [number]: string } = {
	"Right Leg",
	"Left Leg",
	"Left Arm",
	"Right Arm",
	"CollisionHead",
}

function MoveAdapterPartHitboxes.moveHitboxes(character: Model)
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	local torso = character:FindFirstChild("Torso")
	if not humanoidRootPart or not torso then
		return
	end

	local torsoWeld = torso:FindFirstChildWhichIsA("Weld")
	if torsoWeld then
		torsoWeld.C0 = CFrame.new()
		torsoWeld.C1 = CFrame.new()
	end

	local torsoOffset = torso.Position - humanoidRootPart.Position
	torsoWeld.C0 = CFrame.new(torsoOffset)

	for _, partName in R6Parts do
		local part = character:FindFirstChild(partName)
		if not part then
			continue
		end

		local weld = part:FindFirstChildWhichIsA("Weld")
		if not weld then
			continue
		end

		weld.C0 = CFrame.new()
		weld.C1 = CFrame.new()

		local adapterPartPosDiff = part.Position - torso.Position
		local adapterPartSizeDiff = Vector3.new()

		if partName == "CollisionHead" then
			adapterPartSizeDiff = Vector3.new(0, -(torso.Size.Y / 2 + part.Size.Y / 2), 0)
		end

		if partName == "Left Arm" then
			adapterPartSizeDiff = Vector3.new(torso.Size.X / 2 + part.Size.X / 2, 0, 0)
		elseif partName == "Right Arm" then
			adapterPartSizeDiff = Vector3.new(-torso.Size.X / 2 - part.Size.X / 2, 0, 0)
		end

		if partName == "Left Leg" then
			adapterPartSizeDiff = Vector3.new(part.Size.X / 2, torso.Size.Y / 2 + part.Size.Y / 2, 0)
		elseif partName == "Right Leg" then
			adapterPartSizeDiff = Vector3.new(-part.Size.X / 2, torso.Size.Y / 2 + part.Size.Y / 2, 0)
		end

		weld.C0 = CFrame.new(adapterPartPosDiff + adapterPartSizeDiff)
	end
end

return MoveAdapterPartHitboxes
