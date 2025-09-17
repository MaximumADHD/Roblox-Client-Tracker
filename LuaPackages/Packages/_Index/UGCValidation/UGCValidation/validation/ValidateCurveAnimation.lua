--[[
validate:
	check curve animations are set-up correctly
]]

local CollectionService = game:GetService("CollectionService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local util = root.util
local Types = require(util.Types)
local FailureReasonsAccumulator = require(util.FailureReasonsAccumulator)
local AssetCalculator = require(util.AssetCalculator)

local validation = root.validation
local validateAttributes = require(validation.validateAttributes)
local validateTags = require(validation.validateTags)
local ValidatePropertiesSensible = require(validation.ValidatePropertiesSensible)

local flags = root.flags
local GetFStringUGCValidationMaxAnimationLength = require(flags.GetFStringUGCValidationMaxAnimationLength)
local GetFStringUGCValidationMaxAnimationBounds = require(flags.GetFStringUGCValidationMaxAnimationBounds)
local GetFStringUGCValidationMaxAnimationDeltas = require(flags.GetFStringUGCValidationMaxAnimationDeltas)
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
local getFFlagUGCValidateRestrictAnimationMovementCurvesFix =
	require(flags.getFFlagUGCValidateRestrictAnimationMovementCurvesFix)
local getFFlagUGCValidateStopNaNsInfsInAnimationKeys = require(flags.getFFlagUGCValidateStopNaNsInfsInAnimationKeys)
local getFFlagUGCValidateStopNaNsInfsInCalculatedData = require(flags.getFFlagUGCValidateStopNaNsInfsInCalculatedData)
local getFFlagUGCValidateSingleAnimationRigData = require(flags.getFFlagUGCValidateSingleAnimationRigData)
local getEngineFeatureEngineUGCIsValidR15AnimationRigCheck =
	require(flags.getEngineFeatureEngineUGCIsValidR15AnimationRigCheck)
local getFFlagUGCValidatePreciseStepThrough = require(flags.getFFlagUGCValidatePreciseStepThrough)
local getFFlagUGCValidatePreciseCurveLimit = require(flags.getFFlagUGCValidatePreciseCurveLimit)
local GetFStringUGCValidateFrameDeltaKeyTimeTol = require(flags.GetFStringUGCValidateFrameDeltaKeyTimeTol)
local getEngineFeatureEngineUGCValidatePropertiesSensible =
	require(root.flags.getEngineFeatureEngineUGCValidatePropertiesSensible)

local ValidateCurveAnimation = {}

local PositionName = "Position"
local RotationName = "Rotation"
local Vector3CurveName = "Vector3Curve"
local EulerRotationCurveName = "EulerRotationCurve"
local RotationCurveName = "RotationCurve"
local FloatCurveName = "FloatCurve"

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

function ValidateCurveAnimation.validateSingleAnimationRigData(
	curveAnim: CurveAnimation,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local numRoots = 0
	for _, child in curveAnim:GetChildren() do
		if child:IsA("AnimationRigData") then
			numRoots += 1
			if numRoots > 1 then
				return reportFailure(
					"CurveAnimation contains more than one AnimationRigData children. Please ensure there is only one AnimationRigData child.",
					Analytics.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect,
					validationContext
				)
			end
		end
	end

	if numRoots == 0 then
		return reportFailure(
			"CurveAnimation contains zero AnimationRigData children. Please ensure there is one (and only one) AnimationRigData children.",
			Analytics.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect,
			validationContext
		)
	end
	return true
end

function ValidateCurveAnimation.validateAnimationRigDataInternals(
	curveAnim: CurveAnimation,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	for _, child in curveAnim:GetChildren() do
		if not child:IsA("AnimationRigData") then
			continue
		end

		if not (child :: any):IsValidR15() then
			return reportFailure(
				"AnimationRigData failed internal validation. Please ensure the AnimationRigData is set up correctly.",
				Analytics.ErrorType.validateCurveAnimation_IncorrectAnimationRigData,
				validationContext
			)
		end
	end
	return true
end

local function validateAnimationRigData(
	curveAnim: CurveAnimation,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	if getFFlagUGCValidateSingleAnimationRigData() then
		local success, errorMessages =
			ValidateCurveAnimation.validateSingleAnimationRigData(curveAnim, validationContext)
		if not success then
			return false, errorMessages
		end
	end

	if getEngineFeatureEngineUGCIsValidR15AnimationRigCheck() then
		local success, errorMessages =
			ValidateCurveAnimation.validateAnimationRigDataInternals(curveAnim, validationContext)
		if not success then
			return false, errorMessages
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

if getFFlagUGCValidateRestrictAnimationMovementCurvesFix() then
	for idx, instanceType in acceptableHierarchyInstanceTypes do
		if instanceType == RotationCurveName then
			table.remove(acceptableHierarchyInstanceTypes, idx)
			break
		end
	end
end

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

function ValidateCurveAnimation.validateExtraInstancesUnitTest(
	curveAnim: CurveAnimation,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	return validateExtraInstances(curveAnim, validationContext)
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

	if getFFlagUGCValidateSingleAnimationRigData() or getEngineFeatureEngineUGCIsValidR15AnimationRigCheck() then
		success, errorMessages = validateAnimationRigData(curveAnim, validationContext)
		if not success then
			return false, errorMessages
		end
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

local frameDelta = if getFFlagUGCValidatePreciseStepThrough()
	then 1.0 / getFIntUGCValidateMaxAnimationFPS()
	else 1.0 / 30.0

local function getBodyPartFolderRoot(curveAnim: CurveAnimation): Folder?
	for _, child in curveAnim:GetChildren() do
		if child:IsA("Folder") and isBodyPartFolderNameValid(child.Name) then
			return child :: Folder
		end
	end
	return nil
end

local function hasFloatCurveKeys(inst: Instance): boolean
	local X = inst:FindFirstChild("X")
	local Y = inst:FindFirstChild("Y")
	local Z = inst:FindFirstChild("Z")

	return (if X then X:IsA(FloatCurveName) and #(X :: FloatCurve):GetKeys() > 0 else false)
		or (if Y then Y:IsA(FloatCurveName) and #(Y :: FloatCurve):GetKeys() > 0 else false)
		or (if Z then Z:IsA(FloatCurveName) and #(Z :: FloatCurve):GetKeys() > 0 else false)
end

local function hasPositionKeys(positionCurveOpt: Vector3Curve?): boolean
	if not positionCurveOpt then
		return false
	end
	local positionCurve = positionCurveOpt :: Vector3Curve
	if not positionCurve:IsA(Vector3CurveName) then
		return false
	end
	return hasFloatCurveKeys(positionCurve)
end

local function hasRotationKeys(rotationCurveOpt: EulerRotationCurve?): boolean
	if not rotationCurveOpt then
		return false
	end
	local rotationCurve = rotationCurveOpt :: EulerRotationCurve
	if not rotationCurve:IsA(EulerRotationCurveName) then
		return false
	end
	return hasFloatCurveKeys(rotationCurve)
end

-- this function manually ready the animation data from the CurveAnimation and applys it to the character in order to get the CFrame data for the body parts at each animation frame
local function calculateAnimFramesAtOriginManual(
	curveAnim: CurveAnimation
): ({ { string: CFrame } }, number, { { string: number } }, { any })
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
				if getFFlagUGCValidateRestrictAnimationMovementCurvesFix() then
					local pos = desc:FindFirstChild(PositionName)
					local rot = desc:FindFirstChild(RotationName)
					tracks[desc.Name] = {
						pos = if hasPositionKeys(pos) then pos else nil,
						rot = if hasRotationKeys(rot) then rot else nil,
						faceControls = if desc.Name == Constants.NAMED_R15_BODY_PARTS.Head
							then desc:FindFirstChild(FaceControlsName)
							else nil,
					}
				else
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
			if getFFlagUGCValidateRestrictAnimationMovementCurvesFix() then
				local pos = if track.pos then Vector3.new(unpack(track.pos:GetValueAtTime(time))) else Vector3.zero
				local rot = if track.rot then track.rot:GetRotationAtTime(time) else CFrame.new()
				curveData[trackName] = rot + pos
			else
				curveData[trackName] = track.rot:GetRotationAtTime(time)
					+ Vector3.new(unpack(track.pos:GetValueAtTime(time)))
			end
		end
		return curveData
	end

	local function calculatePositionMagnitudeResultsAtTime(time: number, tracks: any): any
		local results = {}
		for trackName, track in tracks do
			if not track.pos then
				continue
			end
			results[trackName] = Vector3.new(unpack(track.pos:GetValueAtTime(time))).Magnitude
		end
		return results
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
	local positionMagnitudeResults = {}

	local time = 0
	while time <= animationLength do
		local animationTransforms = calculateTransformsAtTime(time, tracks)
		local finalFrameTransforms =
			AssetCalculator.calculateAllTransformsForFullBody(fullBodyAssets, animationTransforms)
		table.insert(result, finalFrameTransforms)

		if getFFlagUGCValidateRestrictAnimationMovementCurvesFix() then
			table.insert(positionMagnitudeResults, calculatePositionMagnitudeResultsAtTime(time, tracks))
		end

		time += frameDelta
	end
	defaultCharacter:Destroy()
	return result, animationLength, positionMagnitudeResults, tracks
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
	animFrames: { { string: CFrame } },
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local maxBounds = 0
	for _, frame in animFrames do
		for _, cframe in frame do
			maxBounds = math.max(maxBounds, (cframe :: CFrame).Position.Magnitude)
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
	animFrames: { { string: CFrame } },
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local maxAllowedMovement = nil
	-- GetFStringUGCValidationMaxAnimationDeltas.asNumber() is presuming a 1/30 seconds between frames, however frameDelta may be
	-- different to this, and we need to scale GetFStringUGCValidationMaxAnimationDeltas.asNumber() accordingly
	if getFFlagUGCValidatePreciseStepThrough() then
		local defaultFrameTime = 1.0 / 30.0
		local maxMovementMultiplier = frameDelta / defaultFrameTime
		maxAllowedMovement = GetFStringUGCValidationMaxAnimationDeltas.asNumber() * maxMovementMultiplier
	end

	local prevFrame = {}
	for _, frame in animFrames do
		for bodyPartName, cframe in frame do
			local prevCFrame = prevFrame[bodyPartName]
			if not prevCFrame then
				continue
			end

			local delta = ((cframe :: CFrame).Position - prevCFrame.Position).Magnitude
			local maxDelta = if getFFlagUGCValidatePreciseStepThrough()
				then maxAllowedMovement
				else GetFStringUGCValidationMaxAnimationDeltas.asNumber()

			if delta > maxDelta then
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
function ValidateCurveAnimation.validateMinimumTransformations(
	allTracks: { any },
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	for _, track in allTracks do
		if track.pos or track.rot then
			return true
		end
	end
	return reportFailure(
		"CurveAnimation does not contain any joint manipulation.",
		Analytics.ErrorType.validateCurveAnimation_AnimationContainsNoJointManipulation,
		validationContext
	)
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

local function areNumbersGood(...): boolean
	local function isNaN(value: number): boolean
		return value ~= value
	end

	local function isInfinite(value: number): boolean
		return value == math.huge or value == -math.huge
	end

	for _, value in { ... } do
		if isNaN(value) then
			return false
		end
		if isInfinite(value) then
			return false
		end
	end
	return true
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

	local frameDeltaTol = nil
	if getFFlagUGCValidatePreciseCurveLimit() then
		frameDeltaTol = frameDelta * GetFStringUGCValidateFrameDeltaKeyTimeTol.asNumber()
		local fpsWithTol = 1.0 / frameDeltaTol
		maxTotalKeys = math.ceil(fpsWithTol * GetFStringUGCValidationMaxAnimationLength.asNumber())
	end

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
					or (if getFFlagUGCValidateStopNaNsInfsInAnimationKeys()
						then not areNumbersGood(marker.Time)
						else isNaN(marker.Time))
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

		if getFFlagUGCValidatePreciseCurveLimit() then
			if not desc:IsA("FloatCurve") then
				continue
			end
		else
			if not desc:IsA("FloatCurve") and not desc:IsA("RotationCurve") then
				continue
			end
		end

		local allKeys = desc:GetKeys()
		if #allKeys > maxTotalKeys then
			return reportFailure(
				`CurveAnimation contains Curves with too many keys. {maxTotalKeys} is the maximum per Curve. Please fix the animation.`,
				Analytics.ErrorType.validateCurveAnimation_IncorrectNumericalData,
				validationContext
			)
		end

		local prevTime = nil
		for __, key in allKeys do
			if
				not key.Time
				or (if getFFlagUGCValidateStopNaNsInfsInAnimationKeys()
					then not areNumbersGood(key.Time)
					else isNaN(key.Time))
				or not key.Value
				or (
					if getFFlagUGCValidateStopNaNsInfsInAnimationKeys()
						then not areNumbersGood(key.Value)
						else isNaN(key.Value)
				)
			then
				return reportFailure(
					"CurveAnimation contains Curves with invalid Time or Value. Please fix the animation.",
					Analytics.ErrorType.validateCurveAnimation_IncorrectNumericalData,
					validationContext
				)
			end

			if getFFlagUGCValidatePreciseCurveLimit() then
				if prevTime then
					local minTimeAllowed = (prevTime :: number) + frameDeltaTol
					if key.Time < minTimeAllowed then
						local grandparentName = if desc.Parent.Parent then desc.Parent.Parent.Name else "-"
						return reportFailure(
							`CurveAnimation contains Curve {grandparentName}.{desc.Parent.Name}.{desc.Name} with keys that are too close together in time for a maximum {getFIntUGCValidateMaxAnimationFPS()} fps animation. Please fix the animation.`,
							Analytics.ErrorType.validateCurveAnimation_IncorrectNumericalData,
							validationContext
						)
					end
				elseif key.Time < 0 then
					local grandparentName = if desc.Parent.Parent then desc.Parent.Parent.Name else "-"
					return reportFailure(
						`CurveAnimation contains Curve {grandparentName}.{desc.Parent.Name}.{desc.Name} with a key that has a negative time. Please fix the animation.`,
						Analytics.ErrorType.validateCurveAnimation_IncorrectNumericalData,
						validationContext
					)
				end
				prevTime = key.Time
			end
		end
	end
	return true
end

function ValidateCurveAnimation.validateCalculatedData(
	animFrames: { { string: CFrame } },
	positionMagnitudeFrames: { { string: number } },
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	for _, frame in animFrames do
		for __, cframe in frame do
			if not areNumbersGood((cframe :: CFrame):GetComponents()) then
				return reportFailure(
					"CurveAnimation contains Curves with invalid numerical data. Please fix the animation.",
					Analytics.ErrorType.validateCurveAnimation_IncorrectNumericalData,
					validationContext
				)
			end
		end
	end

	for _, frame in positionMagnitudeFrames do
		for __, magnitude in frame do
			if not areNumbersGood(magnitude) then
				return reportFailure(
					"CurveAnimation contains Curves with invalid numerical data. Please fix the animation.",
					Analytics.ErrorType.validateCurveAnimation_IncorrectNumericalData,
					validationContext
				)
			end
		end
	end
	return true
end

function ValidateCurveAnimation.calculateAnimFramesAtOrigin(
	curveAnim: CurveAnimation
): ({ any }, number, { any }, { any })
	return calculateAnimFramesAtOriginManual(curveAnim)
end

function ValidateCurveAnimation.validatePositionMagnitudes(
	positionMagnitudeFrames: { { string: number } },
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local maxMovementsCached = {}
	for _, frame in positionMagnitudeFrames do
		for bodyPartName, magnitude in frame do
			if bodyPartName == Constants.NAMED_R15_BODY_PARTS.LowerTorso then
				-- LowerTorso is allowed to move, so we skip it
				continue
			end

			if not maxMovementsCached[bodyPartName] then
				maxMovementsCached[bodyPartName] =
					GetFStringUGCValidateMaxAnimationMovementPerPart.asNumber(bodyPartName :: string)
			end
			if (magnitude :: number) > maxMovementsCached[bodyPartName] then
				return reportFailure(
					`CurveAnimation contains positional separation of body parts. Only LowerTorso can change position. All other body parts can only change their orientation. {bodyPartName} moves more than {maxMovementsCached[bodyPartName]} studs from its parent. Please fix the animation.`,
					Analytics.ErrorType.validateCurveAnimation_PositionalMovement,
					validationContext
				)
			end
		end
	end
	return true
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
						`CurveAnimation contains positional separation of body parts. Only LowerTorso can change position. All other body parts can only change their orientation. {desc.Parent.Parent.Name} moves more than {maxMovement} studs from its parent. Please fix the animation.`,
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
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local animFrames, animLength, positionMagnitudeFrames, tracks =
		ValidateCurveAnimation.calculateAnimFramesAtOrigin(curveAnim)

	if getFFlagUGCValidateStopNaNsInfsInCalculatedData() then
		local calculatedDataSuccess, calculatedDataReasons =
			ValidateCurveAnimation.validateCalculatedData(animFrames, positionMagnitudeFrames, validationContext)
		if not calculatedDataSuccess then
			return calculatedDataSuccess, calculatedDataReasons
		end
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if getFFlagUGCValidateRestrictAnimationMovementCurvesFix() then
		reasonsAccumulator:updateReasons(
			ValidateCurveAnimation.validateMinimumTransformations(tracks, validationContext)
		)
	end

	if getFFlagUGCValidateRestrictAnimationMovement() then
		if getFFlagUGCValidateRestrictAnimationMovementCurvesFix() then
			reasonsAccumulator:updateReasons(
				ValidateCurveAnimation.validatePositionMagnitudes(positionMagnitudeFrames, validationContext)
			)
		else
			reasonsAccumulator:updateReasons(ValidateCurveAnimation.validateMovement(curveAnim, validationContext))
		end
	end
	reasonsAccumulator:updateReasons(ValidateCurveAnimation.validateAnimationLength(animLength, validationContext))
	reasonsAccumulator:updateReasons(ValidateCurveAnimation.validateBounds(animFrames, validationContext))
	reasonsAccumulator:updateReasons(ValidateCurveAnimation.validateFrameDeltas(animFrames, validationContext))
	return reasonsAccumulator:getFinalResults()
end

function ValidateCurveAnimation.validate(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local success, reasons = ValidateCurveAnimation.validateStructure(inst, validationContext)
	if not success then
		return success, reasons
	end

	if getEngineFeatureEngineUGCValidatePropertiesSensible() then
		local successPropertiesSensible, reasonsPropertiesSensible =
			ValidatePropertiesSensible.validate(inst, validationContext)
		if not successPropertiesSensible then
			return false, reasonsPropertiesSensible
		end
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

	if not getFFlagUGCValidateRestrictAnimationMovementCurvesFix() then
		reasonsAccumulator:updateReasons(
			ValidateCurveAnimation.validateContainsJointManipulation(curveAnim, validationContext)
		)
	end
	reasonsAccumulator:updateReasons(ValidateCurveAnimation.validateFrames(curveAnim, validationContext))
	return reasonsAccumulator:getFinalResults()
end

return ValidateCurveAnimation
