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

ValidationEnums.ValidationModule = {
	--[[
	If a test doesn't have an enum, it will not be recognized and does not exist.
    This table is a mapping of TestEnum = TestEnum with strict indexing, so it behaves like a real enum

    Enum naming rules:
        - Unique
        - Short (<= 3 words, with a hard limit at 4 words)
        - Human readable and error descriptive
        - Capitalized, with underscores for spaces
    --]]
	ASSET_SCHEMA = "ASSET_SCHEMA",
	INSTANCE_TAGS = "INSTANCE_TAGS",
} :: { [string]: string }
finalizeEnumTable("ValidationModule")

ValidationEnums.SharedDataMember = {
	-- Enum for Data that is made and used by validation tests. Should match Types.ValidationSharedData
	-- Guaranteed data
	ROOT_INSTANCE = "ROOT_INSTANCE",
	UPLOAD_CATEGORY = "UPLOAD_CATEGORY",
	CREATION_SOURCE = "CREATION_SOURCE",

	-- Provided whenever the upload contains this data
	ASSET_TYPE_ENUM = "ASSET_TYPE_ENUM",
	BUNDLE_TYPE_ENUM = "BUNDLE_TYPE_ENUM",

	-- Data that will only be provided if a test requests it
	QUALITY_RESULTS = "QUALITY_RESULTS",
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
	BODY_PART = "BODY_PART",
	DYNAMIC_HEAD = "DYNAMIC_HEAD",
	LAYERED_CLOTHING = "LAYERED_CLOTHING",
	RIGID_ACCESSORY = "RIGID_ACCESSORY",
	EMOTE_ANIMATION = "EMOTE_ANIMATION",

	FULL_BODY = "FULL_BODY",
	BOTH_SHOES = "BOTH_SHOES",
} :: { [string]: string }
finalizeEnumTable("UploadCategory")

ValidationEnums.ValidationConfig = {
	FFLAG = "FFLAG", -- Value will be a function that returns true/false, intended to be a function that gets the fflag. If false, the test is IGNORED.
	IS_QUALITY = "IS_QUALITY", -- If true, we will include the test enum in the request to asset quality, and pass the results to the test
	CATEGORIES = "CATEGORIES", -- List of UploadCategory to run the test against. If missing, the test does NOT run.
	REQUIRED_DATA = "REQUIRED_DATA", -- List of SharedData enums that we need to fetch before we can run the test
	PREREQ_TESTS = "PREREQ_TESTS", -- List of Tests that must pass before running this test. If they fail, we get status CANNOT_START
	RUN = "RUN", -- The main validation function
} :: { [string]: string }
finalizeEnumTable("ValidationConfig")

return ValidationEnums
