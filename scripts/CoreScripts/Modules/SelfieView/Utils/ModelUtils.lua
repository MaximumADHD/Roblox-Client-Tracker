--!strict
local CollectionService = game:GetService("CollectionService")

local FFlagSanitizeSelfViewStrict = game:DefineFastFlag("SanitizeSelfViewStrict", false)

-- Finds the FaceControls instance attached to the rig
local function getFaceControls(rig: Model): FaceControls?
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

	return head
end

local function getAnimator(character: Model, timeOut: number): Animator?
	local animator: Animator? = nil

	local humanoid: Humanoid? = nil
	if timeOut > 0 then
		humanoid = character:WaitForChild("Humanoid", timeOut) :: Humanoid
	else
		humanoid = character:FindFirstChild("Humanoid") :: Humanoid
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
local r6bodyPartsToShow = {
	"Head",
	"Left Arm",
	"Left Leg",
	"Right Arm",
	"Right Leg",
	"Torso",
}
local function updateTransparency(character: Model)
	for _, part in ipairs(character:GetDescendants()) do
		if part:IsA("Decal") then
			part.Transparency = 0
		elseif part:IsA("MeshPart") then
			if (part.Parent and part.Parent:IsA("Accessory")) or (table.find(r15bodyPartsToShow, part.Name)) then
				part.Transparency = 0
			end
		elseif part:IsA("Part") then
			if (part.Parent and part.Parent:IsA("Accessory")) or (table.find(r6bodyPartsToShow, part.Name)) then
				part.Transparency = 0
			end
		end
	end
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
	if FFlagSanitizeSelfViewStrict then
		removeInstancesStrict(character)
	else
		disableScripts(character)
		removeUI(character)
	end
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
	resetPartOrientation = resetPartOrientation,
	removeScripts = removeScripts,
	removeTags = removeTags,
	sanitizeCharacter = sanitizeCharacter,
	isValidAvatar = isValidAvatar,
	hasDynamicHead = hasDynamicHead,
}
