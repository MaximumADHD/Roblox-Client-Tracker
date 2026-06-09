local Players = game:GetService("Players")

local root = script.Parent.Parent

local Constants = require(root.Constants)
local AssetCalculator = require(root.util.AssetCalculator)
local CurveAnimationHierarchyUtils = require(root.util.CurveAnimationHierarchyUtils)

local flags = root.flags
local getFFlagUGCValidateDuplicatesInAnimation = require(flags.getFFlagUGCValidateDuplicatesInAnimation)
local getFIntUGCValidateMaxAnimationFPS = require(flags.getFIntUGCValidateMaxAnimationFPS)
local getFFlagUGCValidateCurveAnimFinalFrameBug = require(flags.getFFlagUGCValidateCurveAnimFinalFrameBug)

local CurveAnimationFrameCalculator = {}

local PositionName = "Position"
local RotationName = "Rotation"
local Vector3CurveName = "Vector3Curve"
local EulerRotationCurveName = "EulerRotationCurve"
local FloatCurveName = "FloatCurve"
local FaceControlsName = CurveAnimationHierarchyUtils.FaceControlsName

local function createDefaultCharacter(removeMotors: boolean): Model
	local defaultCharacter

	if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
		defaultCharacter = (Players :: any):CreateHumanoidModelFromDescriptionAsync(
			Instance.new("HumanoidDescription"),
			Enum.HumanoidRigType.R15
		)
	else
		defaultCharacter = (game.Players :: any):CreateHumanoidModelFromDescription(
			Instance.new("HumanoidDescription"),
			Enum.HumanoidRigType.R15
		)
	end

	for _, desc in defaultCharacter:GetDescendants() do
		if desc:IsA("Decal") then
			desc.Transparency = 1
		elseif desc:IsA("MeshPart") then
			desc.Transparency = 1
			desc.CanCollide = false
		elseif desc:IsA("Motor6D") then
			if removeMotors then
				desc:Destroy()
			end
		end
	end
	return defaultCharacter
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

function CurveAnimationFrameCalculator.calculateAnimFramesAtOrigin(curveAnim: CurveAnimation): ({ { [string]: CFrame } }, number, {
	{
		[string]: number,
	}
}, { any })
	local frameDelta = 1.0 / getFIntUGCValidateMaxAnimationFPS()

	local function getCurveTracks(): any
		local tracks = {}

		local instancesToCheck: { any } = nil
		if getFFlagUGCValidateDuplicatesInAnimation() then
			local bodyPartFolderRootOpt = CurveAnimationHierarchyUtils.getBodyPartFolderRoot(curveAnim)
			assert(
				bodyPartFolderRootOpt,
				"CurveAnimation must have one and only one body part Folder child or HumanoidRootPart child."
			)
			local bodyPartFolderRoot = bodyPartFolderRootOpt :: Folder

			instancesToCheck = bodyPartFolderRoot:GetDescendants()
			table.insert(instancesToCheck, bodyPartFolderRoot)
		else
			instancesToCheck = curveAnim:GetDescendants()
		end
		for _, desc in instancesToCheck do
			if desc:IsA("Folder") and CurveAnimationHierarchyUtils.getBodyPartToParentMap()[desc.Name] then
				local pos = desc:FindFirstChild(PositionName)
				local rot = desc:FindFirstChild(RotationName)
				tracks[desc.Name] = {
					pos = if hasPositionKeys(pos) then pos else nil,
					rot = if hasRotationKeys(rot) then rot else nil,
					faceControls = if desc.Name == Constants.NAMED_R15_BODY_PARTS.Head
						then desc:FindFirstChild(FaceControlsName)
						else nil,
				}
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
			local pos = if track.pos then Vector3.new(unpack(track.pos:GetValueAtTime(time))) else Vector3.zero
			local rot = if track.rot then track.rot:GetRotationAtTime(time) else CFrame.new()
			curveData[trackName] = rot + pos
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
		if not CurveAnimationHierarchyUtils.isBodyPartFolderNameValid(child.Name) then
			continue
		end
		fullBodyAssets[child.Name] = child
	end

	local tracks = getCurveTracks()
	local animationLength = calculateCurveAnimLength(tracks)

	local result = {}
	local positionMagnitudeResults = {}

	local function addData(trackTime: number)
		local animationTransforms = calculateTransformsAtTime(trackTime, tracks)
		local finalFrameTransforms =
			AssetCalculator.calculateAllTransformsForFullBody(fullBodyAssets, animationTransforms)
		table.insert(result, finalFrameTransforms)

		table.insert(positionMagnitudeResults, calculatePositionMagnitudeResultsAtTime(trackTime, tracks))
	end

	local time = 0
	while time <= animationLength do
		if getFFlagUGCValidateCurveAnimFinalFrameBug() then
			addData(time)
		else
			local animationTransforms = calculateTransformsAtTime(time, tracks)
			local finalFrameTransforms =
				AssetCalculator.calculateAllTransformsForFullBody(fullBodyAssets, animationTransforms)
			table.insert(result, finalFrameTransforms)

			table.insert(positionMagnitudeResults, calculatePositionMagnitudeResultsAtTime(time, tracks))
		end
		time += frameDelta
	end
	if getFFlagUGCValidateCurveAnimFinalFrameBug() then
		if animationLength >= 0 then
			addData(animationLength)
		end
	end

	defaultCharacter:Destroy()
	return result, animationLength, positionMagnitudeResults, tracks
end

return CurveAnimationFrameCalculator
