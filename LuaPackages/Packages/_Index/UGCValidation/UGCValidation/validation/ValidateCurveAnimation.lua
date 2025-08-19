--[[
validate:
	check curve animations are set-up correctly
]]

local ContentProvider = game:GetService("ContentProvider")
local CollectionService = game:GetService("CollectionService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local util = root.util
local Types = require(util.Types)
local FailureReasonsAccumulator = require(util.FailureReasonsAccumulator)
local AssetCalculator = require(util.AssetCalculator)

local validation = root.validation
local validateAttributes = require(validation.validateAttributes)
local validateTags = require(validation.validateTags)

local flags = root.flags
local GetFStringUGCValidationMaxAnimationLength = require(flags.GetFStringUGCValidationMaxAnimationLength)
local GetFStringUGCValidationMaxAnimationBounds = require(flags.GetFStringUGCValidationMaxAnimationBounds)
local GetFStringUGCValidationMaxAnimationDeltas = require(flags.GetFStringUGCValidationMaxAnimationDeltas)
local getFFlagUGCValidateAccurateCurveFrames = require(flags.getFFlagUGCValidateAccurateCurveFrames)
local getFFlagUGCValidateNoScriptsInCurveAnim = require(flags.getFFlagUGCValidateNoScriptsInCurveAnim)
local getFFlagUGCValidateNoExtraInstsInCurveAnim = require(flags.getFFlagUGCValidateNoExtraInstsInCurveAnim)
local getFFlagUGCValidateCurveAnimChildFix = require(flags.getFFlagUGCValidateCurveAnimChildFix)
local getFFlagUGCValidateAddObjectValueToAcceptableTypes =
	require(flags.getFFlagUGCValidateAddObjectValueToAcceptableTypes)
local getFFlagUGCValidateDuplicatesInAnimation = require(flags.getFFlagUGCValidateDuplicatesInAnimation)
local getFFlagUGCValidateLimitMaxTotalInstances = require(flags.getFFlagUGCValidateLimitMaxTotalInstances)
local getFFlagUGCValidateMaxTotalInstances = require(flags.getFFlagUGCValidateMaxTotalInstances)
local getFFlagUGCValidateNoTagsInCurveAnimations = require(flags.getFFlagUGCValidateNoTagsInCurveAnimations)
local getFFlagUGCValidateIncorrectNumericalData = require(flags.getFFlagUGCValidateIncorrectNumericalData)
local getFIntUGCValidateMaxAnimationFPS = require(flags.getFIntUGCValidateMaxAnimationFPS)
local getFFlagUGCValidateRestrictAnimationMovement = require(flags.getFFlagUGCValidateRestrictAnimationMovement)
local GetFStringUGCValidateMaxAnimationMovement = require(flags.GetFStringUGCValidateMaxAnimationMovement)
local getFIntUGCValidateMaxMarkerCurveValueLength = require(flags.getFIntUGCValidateMaxMarkerCurveValueLength)
local getFFlagUGCValidateRestrictAnimationMovementPerPart =
	require(flags.getFFlagUGCValidateRestrictAnimationMovementPerPart)
local GetFStringUGCValidateMaxAnimationMovementPerPart = require(flags.GetFStringUGCValidateMaxAnimationMovementPerPart)

local ValidateCurveAnimation = {}

local function reportFailure(
	msg: string,
	issueType: string,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	Analytics.reportFailure(issueType, nil, validationContext)
	return false, {
		msg,
	}
end

local bodyPartToParentFullBody: { [string]: string } = nil

local function getBodyPartToParentMap(): { [string]: string }
	if not bodyPartToParentFullBody then
		bodyPartToParentFullBody = AssetCalculator.getBodyPartsToParents()
	end
	return bodyPartToParentFullBody
end

local humanoidRootPartName = "HumanoidRootPart" -- use this instead of the string everywhere to avoid typos
local function isBodyPartFolderNameValid(name: string): boolean
	return nil ~= getBodyPartToParentMap()[name] or name == humanoidRootPartName
end

local function areChildrenAcceptable(from: Instance, arrayOfInstanceTypes: { any }): boolean
	if not from then
		return true
	end

	local function findAndRemoveMatching(inst)
		for i, instType in arrayOfInstanceTypes do
			if instType.ClassName ~= inst.ClassName or instType.Name ~= inst.Name then
				continue
			end
			table.remove(arrayOfInstanceTypes, i)
			return true
		end
		return false
	end

	for _, inst in from:GetChildren() do
		if not findAndRemoveMatching(inst) then
			return false
		end
	end

	return true
end

local function calculateAcceptableChildBodyPartFolders(parentNameInput: string): { any }
	local acceptableChildBodyPartFolders = {}
	for bodyPartName, parentName in getBodyPartToParentMap() do
		if parentName == parentNameInput then
			table.insert(acceptableChildBodyPartFolders, {
				ClassName = "Folder",
				Name = bodyPartName,
			})
		end
	end
	return acceptableChildBodyPartFolders
end

local FaceControlsName = "FaceControls"
local function calculateAcceptableBodyPartFolderChildrenArray(
	parentFolder: Instance,
	checkForEularRotationCurve: boolean
): { any }
	local acceptableChildren = calculateAcceptableChildBodyPartFolders(parentFolder.Name)

	if parentFolder.Name == humanoidRootPartName then
		return acceptableChildren
	end

	table.insert(acceptableChildren, {
		ClassName = "Vector3Curve",
		Name = "Position",
	})
	table.insert(acceptableChildren, {
		ClassName = if checkForEularRotationCurve then "EulerRotationCurve" else "RotationCurve",
		Name = "Rotation",
	})

	if parentFolder.Name ~= "Head" then
		return acceptableChildren
	end

	table.insert(acceptableChildren, {
		ClassName = "Folder",
		Name = FaceControlsName,
	})

	return acceptableChildren
end

local function calculateAcceptableCurveChildrenArray(): { any }
	return {
		{
			ClassName = "FloatCurve",
			Name = "X",
		},
		{
			ClassName = "FloatCurve",
			Name = "Y",
		},
		{
			ClassName = "FloatCurve",
			Name = "Z",
		},
	}
end

local function containsGrandChildren(parentFolder: Instance?): boolean
	if not parentFolder then
		return false
	end
	return #parentFolder:GetDescendants() > #parentFolder:GetChildren()
end

local function validateBodyPartFolderChildren(parentFolder: Instance): boolean
	local acceptableChildrenArray = calculateAcceptableBodyPartFolderChildrenArray(parentFolder, true)

	if areChildrenAcceptable(parentFolder, acceptableChildrenArray) then
		local acceptableCurveChildrenArray = calculateAcceptableCurveChildrenArray()
		if not areChildrenAcceptable(parentFolder:FindFirstChild("Position"), acceptableCurveChildrenArray) then
			return false
		end

		acceptableCurveChildrenArray = calculateAcceptableCurveChildrenArray()
		if not areChildrenAcceptable(parentFolder:FindFirstChild("Rotation"), acceptableCurveChildrenArray) then
			return false
		end

		if getFFlagUGCValidateRestrictAnimationMovement() then
			local faceControls = parentFolder:FindFirstChild(FaceControlsName)
			if faceControls then
				for _, child in faceControls:GetChildren() do
					if not child:IsA("FloatCurve") then
						return false
					end
				end
			end

			if containsGrandChildren(parentFolder:FindFirstChild("Position")) then
				return false
			end

			if containsGrandChildren(parentFolder:FindFirstChild("Rotation")) then
				return false
			end

			if containsGrandChildren(faceControls) then
				return false
			end
		end

		return true
	end

	return false
end

-- any Folders which have body part names must be a child of a Folder which has the name of the body part's parent body part
-- e.g Head must be a child of a Folder named UpperTorso
local function validateCurveAnimationBodyPartFolder(
	folder: Folder,
	validationContext: Types.ValidationContext?
): (boolean, { string }?)
	local function validateBodyPartFolderInternal(parentFolder: Folder): (boolean, { string }?)
		if getFFlagUGCValidateDuplicatesInAnimation() then
			if not validateBodyPartFolderChildren(parentFolder) then
				return reportFailure(
					string.format(
						"CurveAnimation contains body part Folder %s which has an invalid hierarchy (it has children that are not allowed or set-up incorrectly)",
						parentFolder.Name
					),
					Analytics.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect,
					validationContext :: Types.ValidationContext
				)
			end

			for _, child in parentFolder:GetChildren() do
				if child:IsA("Folder") and child.Name ~= FaceControlsName then
					local success, reasons = validateBodyPartFolderInternal(child :: Folder)
					if not success then
						return false, reasons
					end
				end
			end
			return true
		else
			for _, child in parentFolder:GetChildren() do
				if child:IsA("Folder") then
					if child.Name == humanoidRootPartName then
						return false -- HumanoidRootPart would have to be a direct child of CurveAnimation
					end

					local requiredParentName = getBodyPartToParentMap()[child.Name]
					if not requiredParentName then
						continue -- none body part folders are allowed
					end
					if requiredParentName ~= parentFolder.Name then -- it's a body part folder, validate its hierarchy
						return false
					end
					return validateBodyPartFolderInternal(child :: Folder)
				end
			end
			return true
		end
	end

	if not isBodyPartFolderNameValid(folder.Name) then
		return true -- none body part folders are allowed
	end
	return validateBodyPartFolderInternal(folder) -- it's a body part folder, validate its hierarchy
end

local function validateSingleBodyRoot(
	curveAnim: CurveAnimation,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local numRoots = 0
	for _, child in curveAnim:GetChildren() do
		if child:IsA("Folder") and isBodyPartFolderNameValid(child.Name) then
			numRoots += 1
			if numRoots > 1 then
				return reportFailure(
					"CurveAnimation contains more than one body part or HumanoidRootPart Folder children. Please ensure there is only one child Folder named after a body part or HumanoidRootPart.",
					Analytics.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect,
					validationContext
				)
			end
		end
	end

	if getFFlagUGCValidateDuplicatesInAnimation() then
		if numRoots == 0 then
			return reportFailure(
				"CurveAnimation contains zero body part or HumanoidRootPart Folder children. Please ensure there is one (and only one) child Folder named after a body part or HumanoidRootPart.",
				Analytics.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect,
				validationContext
			)
		end
	end
	return true
end

local function validateScripts(
	curveAnim: CurveAnimation,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	for _, child in curveAnim:GetDescendants() do
		if child:IsA("Script") or child:IsA("ModuleScript") then
			return reportFailure(
				"CurveAnimation hierarchy contains Scripts, LocalScripts, or ModuleScripts. Please remove them.",
				Analytics.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect,
				validationContext
			)
		end
	end
	return true
end

local acceptableHierarchyInstanceTypes = {
	"MarkerCurve",
	"AnimationRigData",
	"Folder",
	"Vector3Curve",
	"EulerRotationCurve",
	"FloatCurve",
	"RotationCurve",
}

if getFFlagUGCValidateAddObjectValueToAcceptableTypes() then
	table.insert(acceptableHierarchyInstanceTypes, "ObjectValue")
end

local function validateExtraInstances(
	curveAnim: CurveAnimation,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	for _, child in curveAnim:GetDescendants() do
		local isAcceptableType = false
		for __, acceptableType in acceptableHierarchyInstanceTypes do
			if child:IsA(acceptableType) then
				isAcceptableType = true
				break
			end
		end

		if not isAcceptableType then
			return reportFailure(
				`CurveAnimation hierarchy can only contain {table.concat(acceptableHierarchyInstanceTypes, ", ")}. Please remove any other Instance types.`,
				Analytics.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect,
				validationContext
			)
		end
	end
	return true
end

-- the root Instance must be a CurveAnimation. Its children can be MarkerCurves, AnimationRigData, and Folders
-- Folders that have body part names are checked by validateCurveAnimationBodyPartFolder()
local function validateAnimationHierarchy(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	if not inst:IsA("CurveAnimation") then
		Analytics.reportFailure(
			Analytics.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect,
			nil,
			validationContext
		)
		return false,
			{
				"Referenced Animation is not a CurveAnimation. Please ensure the animation is uploaded correctly.",
			}
	end

	if getFFlagUGCValidateLimitMaxTotalInstances() then
		local numDescendants = #inst:GetDescendants()
		if numDescendants > getFFlagUGCValidateMaxTotalInstances() then
			return reportFailure(
				`CurveAnimation has {numDescendants} descendants. Maximum allowed is {getFFlagUGCValidateMaxTotalInstances()}. Please reduce the number of descendants.`,
				Analytics.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect,
				validationContext
			)
		end
	end

	local curveAnim = inst :: CurveAnimation
	local success, errorMessages = validateSingleBodyRoot(curveAnim, validationContext)
	if not success then
		return false, errorMessages
	end

	for _, child in curveAnim:GetChildren() do
		if child:IsA("MarkerCurve") or child:IsA("AnimationRigData") then
			if getFFlagUGCValidateDuplicatesInAnimation() then
				if #child:GetChildren() > 0 then
					return reportFailure(
						"CurveAnimation child MarkerCurves and AnimationRigData cannot have children",
						Analytics.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect,
						validationContext
					)
				end
			end
			continue
		end

		if child:IsA("Folder") then
			if getFFlagUGCValidateDuplicatesInAnimation() then
				if not isBodyPartFolderNameValid(child.Name) then
					return reportFailure(
						"CurveAnimation contains unexpected child: " .. child.Name,
						Analytics.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect,
						validationContext
					)
				end

				success, errorMessages = validateCurveAnimationBodyPartFolder(child :: Folder, validationContext)
				if not success then
					return false, errorMessages
				end
			else
				if not validateCurveAnimationBodyPartFolder(child :: Folder) then
					return reportFailure(
						"CurveAnimation contains child body part Folder "
							.. child.Name
							.. " which has an invalid hierarchy",
						Analytics.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect,
						validationContext
					)
				end
			end
			continue
		end

		if getFFlagUGCValidateCurveAnimChildFix() then
			return reportFailure(
				"CurveAnimation contains unexpected child: " .. child.Name,
				Analytics.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect,
				validationContext
			)
		else
			reportFailure(
				"CurveAnimation contains unexpected child: " .. child.Name,
				Analytics.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect,
				validationContext
			)
		end
	end

	if getFFlagUGCValidateNoScriptsInCurveAnim() or getFFlagUGCValidateNoExtraInstsInCurveAnim() then
		local reasonsAccumulator = FailureReasonsAccumulator.new()
		if getFFlagUGCValidateNoScriptsInCurveAnim() then
			reasonsAccumulator:updateReasons(validateScripts(curveAnim, validationContext))
		end
		if getFFlagUGCValidateNoExtraInstsInCurveAnim() then
			reasonsAccumulator:updateReasons(validateExtraInstances(curveAnim, validationContext))
		end
		return reasonsAccumulator:getFinalResults()
	else
		return true
	end
end

local function createDefaultCharacter(removeMotors: boolean): Model
	local defaultCharacter =
		game.Players:CreateHumanoidModelFromDescription(Instance.new("HumanoidDescription"), Enum.HumanoidRigType.R15)

	for _, desc in defaultCharacter:GetDescendants() do
		if desc:IsA("Decal") then
			desc.Transparency = 1
		elseif desc:IsA("MeshPart") then
			desc.Transparency = 1 -- we don't want this character to be visible
			desc.CanCollide = false -- we don't want this character to collide with anything
		elseif desc:IsA("Motor6D") then
			if removeMotors then
				desc:Destroy() -- we don't want any motors in this character
			end
		end
	end
	return defaultCharacter
end

local frameDelta = 1.0 / 30.0

-- this function plays the animation in order to get the CFrame data for the body parts at each animation frame
local function calculateAnimFramesAtOriginAccurate(animUrl: string): ({ any }, number)
	local animation = Instance.new("Animation")
	animation.AnimationId = animUrl

	-- NOTE: animation's load in async, we need to preload (which waits for the asset to be ready)
	ContentProvider:PreloadAsync({ animation })

	local defaultCharacter = createDefaultCharacter(false)
	defaultCharacter.Parent = workspace
	defaultCharacter:PivotTo(CFrame.new()) -- character must be placed at the origin

	local animator = defaultCharacter:FindFirstChild("Humanoid"):FindFirstChild("Animator") :: Animator
	local animationTrack = animator:LoadAnimation(animation)
	animationTrack:Play(0)
	animationTrack.TimePosition = 0

	local result = {}

	local characterBodyParts = {}
	for bodyPartName in getBodyPartToParentMap() do
		characterBodyParts[bodyPartName] = defaultCharacter:FindFirstChild(bodyPartName)
	end

	local time = 0
	local animationLength = animationTrack.Length
	while time < animationLength do
		animator:StepAnimations(frameDelta)

		local frameResults = {}
		for bodyPartName, meshPart in characterBodyParts do
			frameResults[bodyPartName] = (meshPart :: MeshPart).CFrame
		end
		table.insert(result, frameResults)
		time += frameDelta
	end

	local tracks = animator:GetPlayingAnimationTracks()
	for _, track in pairs(tracks) do
		track:Stop(0)
		track.TimePosition = 0
		track:Play(0)

		track:Stop(0)
		track:Destroy()
	end
	defaultCharacter:Destroy()
	return result, animationLength
end

local function getBodyPartFolderRoot(curveAnim: CurveAnimation): Folder?
	for _, child in curveAnim:GetChildren() do
		if child:IsA("Folder") and isBodyPartFolderNameValid(child.Name) then
			return child :: Folder
		end
	end
	return nil
end

-- this function manually ready the animation data from the CurveAnimation and applys it to the character in order to get the CFrame data for the body parts at each animation frame
local function calculateAnimFramesAtOriginManual(curveAnim: CurveAnimation): ({ any }, number)
	local function getCurveTracks(): any
		local tracks = {}

		local instancesToCheck = nil
		if getFFlagUGCValidateDuplicatesInAnimation() then
			local bodyPartFolderRootOpt = getBodyPartFolderRoot(curveAnim)
			assert(
				bodyPartFolderRootOpt,
				"ValidateCurveAnimation.validateStructure() ensures CurveAnimation has one and only one body part Folder child or HumanoidRootPart child."
			)
			local bodyPartFolderRoot = bodyPartFolderRootOpt :: Folder

			instancesToCheck = bodyPartFolderRoot:GetDescendants()
			table.insert(instancesToCheck, bodyPartFolderRoot)
		else
			instancesToCheck = curveAnim:GetDescendants()
		end
		for _, desc in instancesToCheck do
			if desc:IsA("Folder") and getBodyPartToParentMap()[desc.Name] then
				local pos = desc:FindFirstChild("Position")
				local rot = desc:FindFirstChild("Rotation")
				if pos and pos:IsA("Vector3Curve") and rot and rot:IsA("EulerRotationCurve") then
					tracks[desc.Name] = {
						pos = pos,
						rot = rot,
						faceControls = if desc.Name == "Head" then desc:FindFirstChild("FaceControls") else nil,
					}
				end
			end
		end
		return tracks
	end

	local function calculateCurveAnimLength(tracks: any): number
		local maxTime = -1

		local function getMaxTimeFromFloatCurveChildren(containerInput: Instance?)
			if not containerInput then
				return
			end
			local container = containerInput :: Instance
			for _, floatCurve in container:GetChildren() do
				if not floatCurve:IsA("FloatCurve") then
					continue
				end
				for _, floatCurveKey in floatCurve:GetKeys() do
					maxTime = math.max(maxTime, floatCurveKey.Time)
				end
			end
		end

		for _, t in tracks do
			getMaxTimeFromFloatCurveChildren(t.pos)
			getMaxTimeFromFloatCurveChildren(t.rot)
			getMaxTimeFromFloatCurveChildren(t.faceControls)
		end
		return maxTime
	end

	local function calculateTransformsAtTime(time: number, tracks: any): any
		local curveData = {}
		for trackName, track in tracks do
			curveData[trackName] = track.rot:GetRotationAtTime(time)
				+ Vector3.new(unpack(track.pos:GetValueAtTime(time)))
		end
		return curveData
	end

	local defaultCharacter = createDefaultCharacter(false)
	local fullBodyAssets = {}
	for _, child in defaultCharacter:GetChildren() do
		if not isBodyPartFolderNameValid(child.Name) then
			continue
		end
		fullBodyAssets[child.Name] = child
	end

	local tracks = getCurveTracks()
	local animationLength = calculateCurveAnimLength(tracks)

	local result = {}

	local time = 0
	while time <= animationLength do
		local animationTransforms = calculateTransformsAtTime(time, tracks)
		local finalFrameTransforms =
			AssetCalculator.calculateAllTransformsForFullBody(fullBodyAssets, animationTransforms)
		table.insert(result, finalFrameTransforms)
		time += frameDelta
	end
	defaultCharacter:Destroy()
	return result, animationLength
end

function ValidateCurveAnimation.validateAnimationLength(
	length: number,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	if length <= 0 or length > GetFStringUGCValidationMaxAnimationLength.asNumber() then
		return reportFailure(
			`CurveAnimation must be between 0 and {GetFStringUGCValidationMaxAnimationLength.asString()} seconds long. Please fix the animation.`,
			Analytics.ErrorType.validateCurveAnimation_UnacceptableLength,
			validationContext
		)
	end
	return true
end

-- the body parts cannot move beyond a set boundary during the course of the animation
function ValidateCurveAnimation.validateBounds(
	animFrames: { any },
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local maxBounds = 0
	for _, frame in animFrames do
		for _, cframe in frame do
			maxBounds = math.max(maxBounds, cframe.Position.Magnitude)
		end
	end
	if maxBounds > GetFStringUGCValidationMaxAnimationBounds.asNumber() then
		return reportFailure(
			`Body parts in a CurveAnimation cannot get more than {GetFStringUGCValidationMaxAnimationBounds.asString()} studs from the HumanoidRootPart. Please fix the animation.`,
			Analytics.ErrorType.validateCurveAnimation_UnacceptableSizeBounds,
			validationContext
		)
	end
	return true
end

-- each body part cannot move more than a maximum distance between animation frames
function ValidateCurveAnimation.validateFrameDeltas(
	animFrames: { any },
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local prevFrame = {}
	for _, frame in animFrames do
		for bodyPartName, cframe in frame do
			local prevCFrame = prevFrame[bodyPartName]
			if not prevCFrame then
				continue
			end

			local delta = (cframe.Position - prevCFrame.Position).Magnitude
			if delta > GetFStringUGCValidationMaxAnimationDeltas.asNumber() then
				return reportFailure(
					`Body part {bodyPartName} in CurveAnimation moves more than {GetFStringUGCValidationMaxAnimationDeltas.asString()} studs between frames. Please fix the animation.`,
					Analytics.ErrorType.validateCurveAnimation_UnacceptableFrameDelta,
					validationContext
				)
			end
		end

		prevFrame = frame
	end
	return true
end

-- the CurveAnimation must manipulate at least one joint
function ValidateCurveAnimation.validateContainsJointManipulation(
	curveAnim: CurveAnimation,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local instancesToCheck = nil
	if getFFlagUGCValidateDuplicatesInAnimation() then
		local bodyPartFolderRootOpt = getBodyPartFolderRoot(curveAnim)
		assert(
			bodyPartFolderRootOpt,
			"ValidateCurveAnimation.validateStructure() ensures CurveAnimation has one and only one body part Folder child or HumanoidRootPart child."
		)
		local bodyPartFolderRoot = bodyPartFolderRootOpt :: Folder

		instancesToCheck = bodyPartFolderRoot:GetDescendants()
		table.insert(instancesToCheck, bodyPartFolderRoot)
	else
		instancesToCheck = curveAnim:GetDescendants()
	end
	for _, desc in instancesToCheck do
		if desc:IsA("Folder") then
			if getBodyPartToParentMap()[desc.Name] then
				local pos = desc:FindFirstChild("Position")
				local rot = desc:FindFirstChild("Rotation")
				if pos and pos:IsA("Vector3Curve") and rot and rot:IsA("EulerRotationCurve") then
					return true
				end
			end
		end
	end
	return reportFailure(
		"CurveAnimation does not contain any joint manipulation.",
		Analytics.ErrorType.validateCurveAnimation_AnimationContainsNoJointManipulation,
		validationContext
	)
end

local MaxTimeStampCharacters = 30
local function isTimeStamp(tag: string): boolean
	if #tag > MaxTimeStampCharacters then
		return false
	end
	local isNumerical = string.match(tag, "^[0-9]+$") ~= nil
	return isNumerical
end

function ValidateCurveAnimation.validateAllowedTags(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	-- children (and descendants) cannot have any tags
	for _, child in inst:GetChildren() do
		local success, reasons = validateTags(child, validationContext)
		if not success then
			return success, reasons
		end
	end

	-- the root Instance can only have one tag which is a timestamp (added by Animation Curve Editor)
	local tags = CollectionService:GetTags(inst)
	local numTags = #tags
	if numTags > 0 then
		if numTags > 1 or not isTimeStamp(tags[1]) then
			return reportFailure(
				"CurveAnimation can only contain a single timestamp tag. Please remove all other tags.",
				Analytics.ErrorType.validateTags,
				validationContext
			)
		end
	end
	return true
end

function ValidateCurveAnimation.validateStructure(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	return validateAnimationHierarchy(inst, validationContext)
end

function ValidateCurveAnimation.validateData(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local function isNaN(value: number): boolean
		return value ~= value
	end

	local maxTotalKeys =
		math.floor(getFIntUGCValidateMaxAnimationFPS() * GetFStringUGCValidationMaxAnimationLength.asNumber())

	for _, desc in inst:GetDescendants() do
		if desc:IsA("MarkerCurve") then
			local allMarkers = desc:GetMarkers()
			if #allMarkers > maxTotalKeys then
				return reportFailure(
					`CurveAnimation contains MarkerCurve with too many markers. {maxTotalKeys} is the maximum per MarkerCurve. Please fix the animation.`,
					Analytics.ErrorType.validateCurveAnimation_IncorrectNumericalData,
					validationContext
				)
			end

			for __, marker in allMarkers do
				if
					not marker.Time
					or isNaN(marker.Time)
					or not marker.Value
					or #marker.Value > getFIntUGCValidateMaxMarkerCurveValueLength()
				then
					return reportFailure(
						"CurveAnimation contains MarkerCurves with invalid Time or Value, or Value is too long. Please fix the animation.",
						Analytics.ErrorType.validateCurveAnimation_IncorrectNumericalData,
						validationContext
					)
				end
			end
			continue
		end

		if not desc:IsA("FloatCurve") and not desc:IsA("RotationCurve") then
			continue
		end

		local allKeys = desc:GetKeys()
		if #allKeys > maxTotalKeys then
			return reportFailure(
				`CurveAnimation contains Curves with too many keys. {maxTotalKeys} is the maximum per Curve. Please fix the animation.`,
				Analytics.ErrorType.validateCurveAnimation_IncorrectNumericalData,
				validationContext
			)
		end

		for __, key in allKeys do
			if not key.Time or isNaN(key.Time) or not key.Value or isNaN(key.Value) then
				return reportFailure(
					"CurveAnimation contains Curves with invalid Time or Value. Please fix the animation.",
					Analytics.ErrorType.validateCurveAnimation_IncorrectNumericalData,
					validationContext
				)
			end
		end
	end
	return true
end

function ValidateCurveAnimation.calculateAnimFramesAtOrigin(
	curveAnim: CurveAnimation,
	animUrl: string
): ({ any }, number)
	local animFrames, animLength
	if getFFlagUGCValidateAccurateCurveFrames() then
		animFrames, animLength = calculateAnimFramesAtOriginAccurate(animUrl)
	else
		animFrames, animLength = calculateAnimFramesAtOriginManual(curveAnim)
	end
	return animFrames, animLength
end

function ValidateCurveAnimation.validateMovement(
	curveAnim: CurveAnimation,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	for _, desc in curveAnim:GetDescendants() do
		if not desc:IsA("FloatCurve") or not desc.Parent:IsA("Vector3Curve") or desc.Parent.Name ~= "Position" then
			continue
		end

		if desc.Parent.Parent.Name == "LowerTorso" then
			-- LowerTorso is allowed to move, so we skip it
			continue
		end

		local allKeys = desc:GetKeys()

		if getFFlagUGCValidateRestrictAnimationMovementPerPart() then
			local maxMovement = GetFStringUGCValidateMaxAnimationMovementPerPart.asNumber(desc.Parent.Parent.Name)
			for __, key in allKeys do
				if math.abs(key.Value) > maxMovement then
					return reportFailure(
						`CurveAnimation contains positional separation of body parts. Only LowerTorso can change position. All other body parts can only change their orientation. {desc.Parent.Parent.Name} moves more than {maxMovement} studs from it's parent. Please fix the animation.`,
						Analytics.ErrorType.validateCurveAnimation_PositionalMovement,
						validationContext
					)
				end
			end
		else
			for __, key in allKeys do
				if math.abs(key.Value) > GetFStringUGCValidateMaxAnimationMovement.asNumber() then
					return reportFailure(
						"CurveAnimation contains positional separation of body parts. Only LowerTorso can change position. All other body parts can only change their orientation. Please fix the animation.",
						Analytics.ErrorType.validateCurveAnimation_PositionalMovement,
						validationContext
					)
				end
			end
		end
	end
	return true
end

function ValidateCurveAnimation.validateFrames(
	curveAnim: CurveAnimation,
	animUrl: string,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local animFrames, animLength = ValidateCurveAnimation.calculateAnimFramesAtOrigin(curveAnim, animUrl)

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	if getFFlagUGCValidateRestrictAnimationMovement() then
		reasonsAccumulator:updateReasons(ValidateCurveAnimation.validateMovement(curveAnim, validationContext))
	end
	reasonsAccumulator:updateReasons(ValidateCurveAnimation.validateAnimationLength(animLength, validationContext))
	reasonsAccumulator:updateReasons(ValidateCurveAnimation.validateBounds(animFrames, validationContext))
	reasonsAccumulator:updateReasons(ValidateCurveAnimation.validateFrameDeltas(animFrames, validationContext))
	return reasonsAccumulator:getFinalResults()
end

function ValidateCurveAnimation.validate(
	inst: Instance,
	animUrl: string,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local success, reasons = ValidateCurveAnimation.validateStructure(inst, validationContext)
	if not success then
		return success, reasons
	end

	if getFFlagUGCValidateIncorrectNumericalData() then
		local successData, reasonsData = ValidateCurveAnimation.validateData(inst, validationContext)
		if not successData then
			return successData, reasonsData
		end
	end

	local curveAnim = inst :: CurveAnimation -- this is verified in validateAnimationHierarchy()

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	reasonsAccumulator:updateReasons(validateAttributes(curveAnim, validationContext))
	if getFFlagUGCValidateNoTagsInCurveAnimations() then
		reasonsAccumulator:updateReasons(ValidateCurveAnimation.validateAllowedTags(curveAnim, validationContext))
	end
	reasonsAccumulator:updateReasons(
		ValidateCurveAnimation.validateContainsJointManipulation(curveAnim, validationContext)
	)
	reasonsAccumulator:updateReasons(ValidateCurveAnimation.validateFrames(curveAnim, animUrl, validationContext))
	return reasonsAccumulator:getFinalResults()
end

return ValidateCurveAnimation
