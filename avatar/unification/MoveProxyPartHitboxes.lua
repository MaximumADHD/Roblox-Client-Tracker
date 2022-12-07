-- MoveProxyPartHitboxes.lua
-- Module script implementing moving R6 proxy parts to their correct positions.
local MoveProxyPartHitboxes = {}

local R6Parts: { [string]: string } = {
	"Right Leg",
	"Left Leg",
	"Left Arm",
	"Right Arm",
	"CollisionHead",
}

function MoveProxyPartHitboxes.moveHitboxes(character: Model)
	local torso = character.Torso
	local torsoWeld = torso:FindFirstChildWhichIsA("Weld")

	if torsoWeld then
		torsoWeld.C0 = CFrame.new()
		torsoWeld.C1 = CFrame.new()
	end

	local torsoOffset = torso.Position - character.HumanoidRootPart.Position
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

		local partProxyPosDiff = part.Position - torso.Position
		local partProxySizeDiff = Vector3.new()

		if partName == "CollisionHead" then
			partProxySizeDiff = Vector3.new(0, -(torso.Size.Y / 2 + part.Size.Y / 2), 0)
		end

		if partName == "Left Arm" then
			partProxySizeDiff = Vector3.new(torso.Size.X / 2 + part.Size.X / 2, 0, 0)
		elseif partName == "Right Arm" then
			partProxySizeDiff = Vector3.new(-torso.Size.X / 2 - part.Size.X / 2, 0, 0)
		end

		if partName == "Left Leg" then
			partProxySizeDiff = Vector3.new(part.Size.X / 2, torso.Size.Y / 2 + part.Size.Y / 2, 0)
		elseif partName == "Right Leg" then
			partProxySizeDiff = Vector3.new(-part.Size.X / 2, torso.Size.Y / 2 + part.Size.Y / 2, 0)
		end

		weld.C0 = CFrame.new(partProxyPosDiff + partProxySizeDiff)
	end
end

return MoveProxyPartHitboxes
