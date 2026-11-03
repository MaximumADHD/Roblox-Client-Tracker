--[[
	Stand a character on y=0 using the same formula as
	AvatarBackgroundUtility.PositionCharacterOnFloor (RCC thumbnails).

	Derives height from the standing HRP and HipHeight rather than
	Model:GetBoundingBox(), which sweeps in hair, hats and held tools and would
	stand a rig on the lowest point of its accessories instead of its feet.

	Named for avatars because the formula only works on one. A model with no
	Humanoid gets placed at y=0 with no height correction at all, so a scene
	type showing something other than a character needs its own helper rather
	than this one.
]]

local function heightForCharacter(character: Model): number?
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	local hrp = character:FindFirstChild("HumanoidRootPart")
	if humanoid == nil or hrp == nil or not hrp:IsA("BasePart") then
		return nil
	end
	local height = humanoid.HipHeight + (0.5 * hrp.Size.Y)
	if humanoid.RigType == Enum.HumanoidRigType.R6 then
		local leftLeg = character:FindFirstChild("Left Leg")
		if leftLeg ~= nil and leftLeg:IsA("BasePart") then
			height += leftLeg.Size.Y
		end
	end
	return height
end

-- frameCamera/cameraPath sit on +Z looking at the origin, so subjects face +Z.
local FACING = math.pi

local function positionOnFloor(character: Model, x: number, origin: CFrame?)
	local basis = origin or CFrame.new()
	local height = heightForCharacter(character)
	if height == nil then
		character:PivotTo(basis * CFrame.new(x, 0, 0) * CFrame.Angles(0, FACING, 0))
		return
	end
	local hrp = character:FindFirstChild("HumanoidRootPart") :: BasePart
	hrp.Anchored = true
	-- Move the model, not the root. RCC assigns HumanoidRootPart.CFrame directly
	-- and gets away with it because its characters are already in Workspace,
	-- where live joints drag the limbs along. Recipes place a rig before
	-- parenting it, and there the assignment slides the root out from under a
	-- body that stays behind: measured on a default R15, Head-minus-HRP went
	-- from 1.67 to -1.52 studs, so anything sizing the subject afterwards frames
	-- a torn rig. PivotTo is a rigid move and holds the solved pose together.
	character.PrimaryPart = hrp
	character:PivotTo(basis * CFrame.new(x, height, 0) * CFrame.Angles(0, FACING, 0))
end

return {
	heightForCharacter = heightForCharacter,
	positionOnFloor = positionOnFloor,
}
