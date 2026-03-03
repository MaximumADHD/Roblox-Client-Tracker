--[[
	This file contains tables in the format of {string = same string}.
	The point is that indexing these tables with a typo will give you an error instead of nil, so they can be treated as enums.
	We use ValidationEnums as a source of truth to run validations, log telemetry, etc.
]]
local ValidationEnums = {}

local function createEnumMetatable(name: string)
	return {
		__index = function(_, index)
			error("Invalid ValidationEnums." .. name .. " enum value: " .. tostring(index))
		end,
		__newindex = function(_, _, _)
			error("Cannot add new keys to ValidationEnums")
		end,
		__metatable = "This metatable is protected",
	}
end

local function finalizeEnumTable(enumTableName: string)
	if ValidationEnums[enumTableName] == nil then
		error(enumTableName .. " enum table is not found")
	end

	for k, v in ValidationEnums[enumTableName] do
		if typeof(k) ~= "string" then
			error(enumTableName .. " enum table has non string key " .. tostring(k))
		elseif k ~= v then
			error(enumTableName .. " enum table has non-matching key and value for key " .. tostring(k))
		end
	end

	setmetatable(ValidationEnums[enumTableName], createEnumMetatable(enumTableName))
end

---- Title case enums (module names) ----
ValidationEnums.ValidationModule = {
	--[[
	If a test doesn't have an enum, it will not be recognized and does not exist.
    This table is a mapping of (string) TestEnum = (string) TestEnum with strict indexing, so it behaves like an enum

    Enum naming rules:
        - Unique
        - Short (<= 3 words, with a hard limit at 4 words)
        - Title case
        - Human readable and describes the expectation for PROPER marketplace uploads
			- Good examples: HeadIsDynamic, CagingIsRelevant, AccurateBoundingBox, AssetVisible
			- Bad example: DynamicHead, Tags, ValidateMeshSize
    --]]
	ExpectedRootSchema = "ExpectedRootSchema",
	SingleInstanceSelected = "SingleInstanceSelected",
	NoExtraTags = "NoExtraTags",
	HeadIsDynamic = "HeadIsDynamic",
	NoFACSOverrideData = "NoFACSOverrideData",
} :: { [string]: string }
finalizeEnumTable("ValidationModule")

---- Camel case enums (module members) ----
ValidationEnums.SharedDataMember = {
	--[[ 
	Enum for Data that is made and used by validation tests. Should match Types.ValidationSharedData. 
	This exists twice as type export allows selene to run while the enum system allows code usage.
	
	If there is a common data calculation that happens in multiple tests, especially if they are calling a util, it should be preloaded here.
	For example, if multiple tests need to straighten out the limbs or compute the mesh scale, we should create that information only once to avoid inconsistencies.
	On the otherhand, if a test needs to know an LC's ImportOrigin or the PBR's metalness map, it can just directly get it from the root instance
	--]]

	-- ==== Guaranteed data ====
	jobId = "jobId",
	entrypointInput = "entrypointInput",
	rootInstance = "rootInstance",
	uploadCategory = "uploadCategory",
	uploadEnum = "uploadEnum",
	consumerConfig = "consumerConfig",
	aqsFetchMetrics = "aqsFetchMetrics",

	-- ==== Data available upon request by any test ====
	aqsSummaryData = "aqsSummaryData",
	renderMeshesData = "renderMeshesData",
	innerCagesData = "innerCagesData",
	outerCagesData = "outerCagesData",
	meshTextures = "meshTextures",
} :: { [string]: string }
finalizeEnumTable("SharedDataMember")

ValidationEnums.ValidationConfig = {
	-- Configs for enabling or disabling the test
	categories = "categories", -- List of UploadCategory to run the test against. If missing, the test does NOT run.
	fflag = "fflag", -- Function that returns true/false. If provided and the function returns false, the test does not run.
	shadowFlag = "shadowFlag", -- If provided and the function returns true, then even if the test is not enabled, we will include it as a warning.

	-- Configs for setting test requirements, where an enabled test may be skipped
	prereqTests = "prereqTests", -- List of Tests that must pass before running this test. If they do not pass, we get status CANNOT_START.
	requiredData = "requiredData", -- List of SharedData enums fetched before running the test. If the data doesn't exist, this is an ERROR.
	conditionalData = "conditionalData", -- List of SharedData enums fetched before running the test. If the data doesn't exist, the test will PASS.

	-- AQS-only configs (aqsSummaryData should be listed in requiredData)
	expectedAqsData = "expectedAqsData", -- Schema layout for the AQS summary. If something listed is not found in the summary, the test CANNOT_START.
	knownAqsUserErrors = "knownAqsUserErrors", -- Mapping of AQS error enum to Validation failure key that has no params. If provided, the error results in FAIL. Otherwise ERROR.

	-- Extra configs you should include
	expectedFailures = "expectedFailures", -- List of System tests that we expect to fail this specific check. For bundles, you must specify Name.AssetType or Name.FullBody
	run = "run", -- The main validation function
} :: { [string]: string }
finalizeEnumTable("ValidationConfig")

---- Upper case enums (constants) ----
ValidationEnums.Status = {
	-- When a test is complete, it can be in any one of these states
	CANNOT_START = "CANNOT_START",
	TIMEOUT = "TIMEOUT",
	ERROR = "ERROR",
	FAIL = "FAIL",
	PASS = "PASS",
} :: { [string]: string }
finalizeEnumTable("Status")

ValidationEnums.UploadCategory = {
	-- Every upload will be strictly ONE group.
	-- Tests can be configured to be run for multiple groups
	TORSO_AND_LIMBS = "TORSO_AND_LIMBS",
	DYNAMIC_HEAD = "DYNAMIC_HEAD",
	LAYERED_CLOTHING = "LAYERED_CLOTHING",
	RIGID_ACCESSORY = "RIGID_ACCESSORY",
	EMOTE_ANIMATION = "EMOTE_ANIMATION",
	MAKEUP = "MAKEUP",
	FULL_BODY = "FULL_BODY",
	BOTH_SHOES = "BOTH_SHOES",
} :: { [string]: string }
finalizeEnumTable("UploadCategory")

return ValidationEnums
