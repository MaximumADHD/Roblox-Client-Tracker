local Players = game:GetService("Players")

local DEFAULT_PART_IDS: { [string]: number } = {
	LeftArm = 11714033534,
	LeftLeg = 11714035598,
	RightArm = 11714037276,
	RightLeg = 11714039415,
	Torso = 11714041015,
}

local PARTS: { string } = {
	"Head",
	"Torso",
	"LeftLeg",
	"RightLeg",
	"RightArm",
	"LeftArm",
}

local DEFAULT_COLOR: Color3 = Color3.fromRGB(163, 162, 165)

local function getDefaultCharacter(): Model?
	local humanoidDescription: HumanoidDescription = Instance.new("HumanoidDescription")
	for _, part in PARTS do
		(humanoidDescription :: any)[part .. "Color"] = DEFAULT_COLOR
	end
	local rig: Model = Players:CreateHumanoidModelFromDescription(humanoidDescription, Enum.HumanoidRigType.R15)
	local humanoid: Humanoid = rig:FindFirstChild("Humanoid") :: Humanoid
	humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

	local function getObjects(assetType: string, assetId: number): { Instance }?
		-- full production url will work on sitetest
		local assetUrl = "https://assetdelivery.roblox.com/v1/asset/?id="
			.. tostring(assetId)
			.. "&expectedAssetType="
			.. assetType
		return game:GetObjectsAllOrNone(assetUrl)
	end

	local function getInstance(instances: { Instance }, name: string): Instance?
		for _, inst in pairs(instances) do
			if inst.Name == name then
				return inst
			end
		end
		return nil
	end

	for assetType, assetId in DEFAULT_PART_IDS do
		local tableOfFolders = getObjects(assetType, assetId)
		if not tableOfFolders then
			return nil
		end

		local folder = getInstance(tableOfFolders :: { Instance }, "R15ArtistIntent")
		if not folder then
			return nil
		end

		for _, meshPartChild in (folder :: Instance):GetChildren() do
			local surf = meshPartChild:FindFirstChildWhichIsA("SurfaceAppearance")
			if surf then
				-- we don't need the SurfaceAppearance as we will be making all parts except the head transparent
				-- also SurfaceAppearances only allow specification of asset ids, not full url, so a production SurfaceAppearance won't work on sitetest
				surf:Destroy()
			end
			local oldPart = rig:FindFirstChild(meshPartChild.Name)
			if oldPart then
				oldPart:Destroy()
			end
			meshPartChild.Parent = rig
		end
	end

	rig:PivotTo(CFrame.new(rig:GetPivot().Position, rig:GetPivot().Position + Vector3.new(0, 0, -1)))

	return rig
end

local function swapHead(rig: Model, newHead: MeshPart)
	rig:FindFirstChild("Head"):Destroy()
	newHead.Parent = rig
	local humanoid: Humanoid = rig:FindFirstChild("Humanoid") :: Humanoid
	humanoid:BuildRigFromAttachments()
end

local function hideNotHead(rig: Model)
	for _, child in rig:GetChildren() do
		if child:IsA("MeshPart") and child.Name ~= "Head" then
			child.Transparency = 1
		end
	end
end

return function(head: MeshPart): Model?
	local characterNullable: Model? = getDefaultCharacter()
	if not characterNullable then
		return nil
	end
	local character: Model = characterNullable :: Model

	swapHead(character, head)
	hideNotHead(character)

	return character
end
