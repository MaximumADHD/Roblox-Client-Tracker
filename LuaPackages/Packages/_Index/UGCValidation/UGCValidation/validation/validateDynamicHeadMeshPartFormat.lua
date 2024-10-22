--!strict

local root = script.Parent.Parent

local getFFlagUGCValidateDynamicHeadMoodClient = require(root.flags.getFFlagUGCValidateDynamicHeadMoodClient)
local getFFlagUGCValidateDynamicHeadMoodRCC = require(root.flags.getFFlagUGCValidateDynamicHeadMoodRCC)

local Analytics = require(root.Analytics)

local validateSingleInstance = require(root.validation.validateSingleInstance)
local validateMeshPartBodyPart = require(root.validation.validateMeshPartBodyPart)
local validateDynamicHeadData = require(root.validation.validateDynamicHeadData)
local validateDynamicHeadMood = require(root.validation.validateDynamicHeadMood)

local Types = require(root.util.Types)
local createDynamicHeadMeshPartSchema = require(root.util.createDynamicHeadMeshPartSchema)

local function validateDynamicHeadMeshPartFormat(validationContext: Types.ValidationContext): (boolean, { string }?)
	assert(
		validationContext.instances ~= nil,
		"instances required in validationContext for validateDynamicHeadMeshPartFormat"
	)
	local allSelectedInstances = validationContext.instances :: { Instance }
	local isServer = validationContext.isServer
	local skipSnapshot = if validationContext.bypassFlags then validationContext.bypassFlags.skipSnapshot else false

	local result, failureReasons = validateSingleInstance(allSelectedInstances, validationContext)
	if not result then
		return result, failureReasons
	end

	local inst = allSelectedInstances[1]
	result, failureReasons =
		validateMeshPartBodyPart(inst, createDynamicHeadMeshPartSchema(validationContext), validationContext)
	-- return if failure at this point, as the above function could've found whole Instances or meshes to be missing
	-- carrying on would mean later functions called could not assume all Instances and meshes/textures are present
	if not result then
		return false, failureReasons
	end

	if
		(
			(isServer and getFFlagUGCValidateDynamicHeadMoodRCC())
			or (not isServer and getFFlagUGCValidateDynamicHeadMoodClient())
		) and not skipSnapshot
	then
		-- TODO: refactor to take in a context table after FFlagUseThumbnailerUtil is cleaned up
		local startTime = tick()
		result, failureReasons =
			validateDynamicHeadMood(inst :: MeshPart, if nil ~= isServer then isServer :: boolean else false)
		Analytics.recordScriptTime("validateDynamicHeadMood", startTime, validationContext)
		if not result then
			return false, failureReasons
		end
	end

	return validateDynamicHeadData(inst :: MeshPart, validationContext)
end

return validateDynamicHeadMeshPartFormat
