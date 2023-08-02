-- Finds the FaceControls instance attached to the rig
local function getFaceControls(rig: Model): FaceControls
	return rig:FindFirstChildWhichIsA("FaceControls", true) :: FaceControls
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

local function findObjectOfNameAndTypeName(name, typeName, character): any
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
	local faceControls: FaceControls = getFaceControls(character)
	if faceControls ~= nil then
		head = faceControls.Parent :: MeshPart
	end

	--fallback lookup attempts in case non dynamic head avatar
	if not head then
		--first doing an attempt like this
		head = findObjectOfNameAndTypeName("Head", "MeshPart", character)

		--last resort fallback attempt, could return other object types in worst case (like a Pose called Head if the avatar has AnimSaves in it)
		if not head then
			head = character:FindFirstChild("Head", true) :: MeshPart
			if head and head:IsA("Pose") then
				head = nil
			end
		end
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

return {
	getFaceControls = getFaceControls,
	getNeck = getNeck,
	getHead = getHead,
	getAnimator = getAnimator,
}
