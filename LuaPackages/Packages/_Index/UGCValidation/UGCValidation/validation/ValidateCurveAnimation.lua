--[[
validate:
	check curve animations are set-up correctly
]]

local ContentProvider = game:GetService("ContentProvider")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local util = root.util
local Types = require(util.Types)
local FailureReasonsAccumulator = require(util.FailureReasonsAccumulator)
local AssetCalculator = require(util.AssetCalculator)

local validation = root.validation
local validateAttributes = require(validation.validateAttributes)

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

-- any Folders which have body part names must be a child of a Folder which has the name of the body part's parent body part
-- e.g Head must be a child of a Folder named UpperTorso
-- other Folders can exist in the hierarchy
local function validateCurveAnimationBodyPartFolder(folder: Folder): (boolean, { string }?)
	local function validateBodyPartFolderInternal(parentFolder: Folder)
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

	local curveAnim = inst :: CurveAnimation
	local success, errorMessages = validateSingleBodyRoot(curveAnim, validationContext)
	if not success then
		return false, errorMessages
	end

	for _, child in curveAnim:GetChildren() do
		if child:IsA("MarkerCurve") or child:IsA("AnimationRigData") then
			continue
		end

		if child:IsA("Folder") then
			if not validateCurveAnimationBodyPartFolder(child :: Folder) then
				return reportFailure(
					"CurveAnimation contains child body part Folder " .. child.Name .. " which has an invalid hierarchy",
					Analytics.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect,
					validationContext
				)
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

-- this function manually ready the animation data from the CurveAnimation and applys it to the character in order to get the CFrame data for the body parts at each animation frame
local function calculateAnimFramesAtOriginManual(curveAnim: CurveAnimation): ({ any }, number)
	local function getCurveTracks(): any
		local tracks = {}
		for _, desc in curveAnim:GetDescendants() do
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
	for _, desc in curveAnim:GetDescendants() do
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

function ValidateCurveAnimation.validateStructure(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	return validateAnimationHierarchy(inst, validationContext)
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

function ValidateCurveAnimation.validateFrames(
	curveAnim: CurveAnimation,
	animUrl: string,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local animFrames, animLength = ValidateCurveAnimation.calculateAnimFramesAtOrigin(curveAnim, animUrl)

	local reasonsAccumulator = FailureReasonsAccumulator.new()
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

	local curveAnim = inst :: CurveAnimation -- this is verified in validateAnimationHierarchy()

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	reasonsAccumulator:updateReasons(validateAttributes(curveAnim, validationContext))
	reasonsAccumulator:updateReasons(
		ValidateCurveAnimation.validateContainsJointManipulation(curveAnim, validationContext)
	)
	reasonsAccumulator:updateReasons(ValidateCurveAnimation.validateFrames(curveAnim, animUrl, validationContext))
	return reasonsAccumulator:getFinalResults()
end

return ValidateCurveAnimation
