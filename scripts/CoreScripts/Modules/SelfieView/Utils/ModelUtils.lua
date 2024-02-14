--!strict
local CollectionService = game:GetService("CollectionService")
local EngineFeatureAvatarJointUpgrade = game:GetEngineFeature("AvatarJointUpgradeFeature")
local FFlagSelfViewLookUpHumanoidByType = game:DefineFastFlag("SelfViewLookUpHumanoidByType", false)

--we want to trigger UpdateClone which recreates the clone fresh as rarely as possible (performance optimization),
--so for triggering dirty on DescendantAdded or DescendantRemoving we only trigger it for things which make a visual difference
--as to avoid unnecessary refreshes (e.g. Sound objects etc getting added to player avatar should not cause recreating the clone)
local TYPES_TRIGGERING_DIRTY_ON_ADDREMOVE = {
	Accessory = "Accessory",
	CharacterMesh = "CharacterMesh",
	Decal = "Decal",
	MeshPart = "MeshPart",
	Pants = "Pants",
	Part = "Part",
	Shirt = "Shirt",
	ShirtGraphic = "ShirtGraphic",
	SpecialMesh = "SpecialMesh",
	SurfaceAppearance = "SurfaceAppearance",
}

-- Finds the FaceControls instance attached to the rig
local function getFaceControls(rig: Model): FaceControls?
	if rig == nil then
		return
	end
	return rig:FindFirstChildWhichIsA("FaceControls", true) :: FaceControls?
end

local function getNeck(character: Model, head: MeshPart): Motor6D?
	if character == nil or head == nil then
		return nil
	end

	local descendants = character:GetDescendants()
	for _, child in descendants do
		if child:IsA("Motor6D") then
			if child.Part1 == head or child.Name == "Neck" then
				return child
			end
		end
	end
	return nil
end

local function findObjectOfNameAndTypeName(name: string, typeName: string, character: Model): any
	local descendants = character:GetDescendants()
	for _, child in descendants do
		if child.Name == name and child:IsA(typeName) then
			return child
		end
	end
	return nil
end

local function getHead(character: Model): MeshPart?
	if not character then
		return nil
	end

	local head: MeshPart? = nil

	--lookup for dynamic heads
	local faceControls: FaceControls? = getFaceControls(character)
	if faceControls ~= nil then
		head = faceControls.Parent :: MeshPart
	end

	--fallback lookup attempts in case non dynamic head avatar
	if not head then
		head = findObjectOfNameAndTypeName("Head", "MeshPart", character)
	end

	if not head then
		-- Having the fallback of just returning any object type which is called "Head" was
		-- too loose as it could be some object type which doesn't have features we
		-- need later on and cause errors then so we only fall back to looking
		-- for a Head Part if Head MeshPart was not found.
		head = findObjectOfNameAndTypeName("Head", "Part", character)
	end

	return head
end

local function getAnimator(character: Model, timeOut: number): Animator?
	local animator: Animator? = nil

	local humanoid: Humanoid? = nil
	if timeOut > 0 then
		if FFlagSelfViewLookUpHumanoidByType then
			local maybeHumanoid = character:WaitForChild("Humanoid", timeOut)
			if maybeHumanoid:IsA("Humanoid") then
				humanoid = maybeHumanoid
			else
				humanoid = character:FindFirstChildWhichIsA("Humanoid")
			end
		else
			humanoid = character:WaitForChild("Humanoid", timeOut) :: Humanoid
		end
	else
		if FFlagSelfViewLookUpHumanoidByType then
			humanoid = character:FindFirstChildWhichIsA("Humanoid")
		else
			humanoid = character:FindFirstChild("Humanoid") :: Humanoid
		end
	end

	if humanoid ~= nil then
		if timeOut > 0 then
			animator = humanoid:WaitForChild("Animator", timeOut) :: Animator
		else
			animator = humanoid:FindFirstChild("Animator") :: Animator
		end
	end

	if animator == nil then
		--fallback for different character setup:
		animator = character:FindFirstChildWhichIsA("Animator", true)
	end

	return animator
end

local r15bodyPartsToShow = {
	"Head",
	"UpperTorso",
	"LowerTorso",
	"Torso",
	"LeftFoot",
	"LeftLowerLeg",
	"LeftUpperLeg",
	"RightFoot",
	"RightLowerLeg",
	"RightUpperLeg",
	"LeftHand",
	"LeftLowerArm",
	"LeftUpperArm",
	"RightHand",
	"RightLowerArm",
	"RightUpperArm",
}

local function updateTransparency(character: Model, partsOrgTransparency)
	--it could happen that the head was made transparent during gameplay, which is in some experiences done when entering a car for example
	--we still want to show the self view avatar's head in that case (also because sometimes exiting vehicles would not cause a refresh of the self view and the head would stay transparent then)
	--but we also want to respect it if the head was transparent to begin with on first usage like for a headless head look
	for _, part in ipairs(character:GetDescendants()) do
		if part:IsA("Decal") then
			part.Transparency = 0
		elseif part:IsA("MeshPart") then
			if (part.Parent and part.Parent:IsA("Accessory")) or (table.find(r15bodyPartsToShow, part.Name)) then
				if not table.find(partsOrgTransparency, part.MeshId) then
					partsOrgTransparency[part.MeshId] = part.Transparency
				else
					part.Transparency = partsOrgTransparency[part.MeshId]
				end
			end
		elseif part:IsA("Part") then
			if (part.Parent and part.Parent:IsA("Accessory")) or (table.find(r15bodyPartsToShow, part.Name)) then
				part.Transparency = 0
			end
		end
	end
end

local function shouldMarkCloneDirtyForDescendant(descendant: any): boolean
	-- we only want to refresh the avatar self view clone on descendant added if the descendant is actually visible
	-- this is to avoid unnecessary refreshes in case of a dev for example adding a Sound object
	-- to the avatar or some part which is for gameplay logic and turned transparent
	if descendant:IsA("MeshPart") or descendant:IsA("Part") or descendant:IsA("Decal") then
		if descendant.Transparency < 1 then
			return true
		end
	elseif TYPES_TRIGGERING_DIRTY_ON_ADDREMOVE[descendant.ClassName] then
		return true
	end
	return false
end
local function resetPartOrientation(character: Model)
	for _, part in ipairs(character:GetDescendants()) do
		if part:IsA("Motor6D") then
			part.C0 = CFrame.new(part.C0.Position)
			part.C1 = CFrame.new(part.C1.Position)
		end
	end
end

local function removeChild(model: Model, childName: string): ()
	local child = model:FindFirstChild(childName)
	if child then
		child:Destroy()
	end
end
local function removeScripts(character: Model)
	removeChild(character, "Animate")
	removeChild(character, "Health")

	for _, script in pairs(character:GetDescendants()) do
		if script:IsA("BaseScript") then
			script:Destroy()
		end
	end
end

local function removeTags(character: Model)
	local charactersTags = CollectionService:GetTags(character)
	for _, v in ipairs(charactersTags) do
		--log:trace("removing tag:"..v)
		CollectionService:RemoveTag(character, v)
	end

	for _, part in ipairs(character:GetDescendants()) do
		local descendantTags = CollectionService:GetTags(part)
		for _, v2 in ipairs(descendantTags) do
			--log:trace("removing tag:"..v2)
			CollectionService:RemoveTag(part, v2)
		end
	end

	charactersTags = CollectionService:GetTags(character)
end

local ALLOWLISTED_INSTANCE_TYPES = {
	Accessory = "Accessory",
	Animator = "Animator",
	Attachment = "Attachment",
	AnimationConstraint = EngineFeatureAvatarJointUpgrade and "AnimationConstraint" or nil,
	BallSocketConstraint = EngineFeatureAvatarJointUpgrade and "BallSocketConstraint" or nil,
	BodyColors = "BodyColors",
	CharacterMesh = "CharacterMesh",
	Decal = "Decal",
	FaceControls = "FaceControls",
	Humanoid = "Humanoid",
	HumanoidDescription = "HumanoidDescription",
	MeshPart = "MeshPart",
	Motor6D = "Motor6D",
	NumberValue = "NumberValue",
	Pants = "Pants",
	Part = "Part",
	Shirt = "Shirt",
	ShirtGraphic = "ShirtGraphic",
	SpecialMesh = "SpecialMesh",
	StringValue = "StringValue",
	SurfaceAppearance = "SurfaceAppearance",
	Vector3Value = "Vector3Value",
	WrapTarget = "WrapTarget",
	Weld = "Weld",
	WrapLayer = "WrapLayer",
	WeldConstraint = "WeldConstraint",
	AccessoryWeld = "AccessoryWeld",
	PackageLink = "PackageLink",
}
local function disableScripts(instance: Instance)
	for _, child in instance:GetChildren() do
		if child:IsA("Script") then
			child.Disabled = true
			child.Parent = nil
		end

		disableScripts(child)
	end
end
local function removeUI(instance: Instance)
	for _, child in instance:GetChildren() do
		if
			child:IsA("GuiObject")
			or child:IsA("ScreenGui")
			or child:IsA("BillboardGui")
			or child:IsA("AdGui")
			or child:IsA("SurfaceGui")
		then
			(child :: Instance).Parent = nil
		end

		removeUI(child)
	end
end
local function removeInstancesStrict(instance: Instance)
	for _, child in instance:GetChildren() do
		if not ALLOWLISTED_INSTANCE_TYPES[child.ClassName] then
			child.Parent = nil
		end

		removeInstancesStrict(child)
	end
end
local function sanitizeCharacter(character: Model)
	if not character then
		return
	end

	removeInstancesStrict(character)
end

local function isValidAvatar(character: Model): boolean
	local animator = getAnimator(character, 10)
	if not animator then
		return false
	end

	local head = getHead(character)
	if not head then
		return false
	end

	return true
end

local function hasDynamicHead(character: Model): boolean
	return getFaceControls(character) ~= nil
end

return {
	getFaceControls = getFaceControls,
	getNeck = getNeck,
	getHead = getHead,
	getAnimator = getAnimator,
	updateTransparency = updateTransparency,
	shouldMarkCloneDirtyForDescendant = shouldMarkCloneDirtyForDescendant,
	resetPartOrientation = resetPartOrientation,
	removeScripts = removeScripts,
	removeTags = removeTags,
	sanitizeCharacter = sanitizeCharacter,
	isValidAvatar = isValidAvatar,
	hasDynamicHead = hasDynamicHead,
}
