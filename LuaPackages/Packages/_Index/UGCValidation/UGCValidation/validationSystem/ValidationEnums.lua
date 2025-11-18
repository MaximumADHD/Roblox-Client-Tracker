--[[
	This file contains tables in the format of {string = same string}.
	The point is that indexing these tables with a typo will give you an error instead of nil, so they can be treated as enums.
	We use ValidationEnums as a source of truth to run validations, log telemetry, etc.

	- For validation modules, since they are going to be match module names we will use TitleCase
	- For shared data, since they are going to be accessed in regular tests and match Types.lua, we will use camelCase
	- For remaining enums, since they are intended to be checked for exact matches ( ie Status == PASS), we will use UPPER_CASE
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
} :: { [string]: string }
finalizeEnumTable("ValidationModule")

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

	-- ==== Data available upon request by any test ====
	qualityResults = "qualityResults",
	renderMeshesData = "renderMeshesData",
	innerCagesData = "innerCagesData",
	outerCagesData = "outerCagesData",
	meshTextures = "meshTextures",
} :: { [string]: string }
finalizeEnumTable("SharedDataMember")

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

ValidationEnums.ValidationConfig = {
	FFLAG = "FFLAG", -- Value will be a function that returns true/false, intended to be a function that gets the fflag. If false, the test is IGNORED.
	CATEGORIES = "CATEGORIES", -- List of UploadCategory to run the test against. If missing, the test does NOT run.
	REQUIRED_DATA = "REQUIRED_DATA", -- List of SharedData enums that we need to fetch before we can run the test
	PREREQ_TESTS = "PREREQ_TESTS", -- List of Tests that must pass before running this test. If they fail, we get status CANNOT_START
	EXPECTED_FAILURES = "EXPECTED_FAILURES", -- List of System tests that we expect to fail this specific check. For bundles, you must specify Name.AssetType or Name.FullBody
	RUN = "RUN", -- The main validation function
} :: { [string]: string }
finalizeEnumTable("ValidationConfig")

return ValidationEnums
