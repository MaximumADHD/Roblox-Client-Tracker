local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local buildImageFeedbackFields = require(script.Parent.buildImageFeedbackFields)

local GAME_ID = 12345
local SOURCE_ID = "678"
local SOURCE_VERSION = "3"
local TRANSLATED_ID = "999"
local TRANSLATED_VERSION = "7"

describe("buildImageFeedbackFields", function()
	it("builds identifier, source and translation for versioned source and translated URIs", function()
		local sourceUri = "rbxassetid://" .. SOURCE_ID .. "&version=" .. SOURCE_VERSION
		local translatedUri = "rbxassetid://" .. TRANSLATED_ID .. "&version=" .. TRANSLATED_VERSION
		local fields = assert(buildImageFeedbackFields(GAME_ID, sourceUri, translatedUri))
		expect(fields.identifier).toBe(GAME_ID .. "#" .. SOURCE_ID .. "#" .. SOURCE_VERSION)
		expect(fields.source).toBe(SOURCE_ID .. "#" .. SOURCE_VERSION)
		expect(fields.translation).toBe(TRANSLATED_ID .. "#" .. TRANSLATED_VERSION)
	end)

	it("uses empty version segments for bare source and translated URIs", function()
		local sourceUri = "rbxassetid://" .. SOURCE_ID
		local translatedUri = "rbxassetid://" .. TRANSLATED_ID
		local fields = assert(buildImageFeedbackFields(GAME_ID, sourceUri, translatedUri))
		expect(fields.identifier).toBe(GAME_ID .. "#" .. SOURCE_ID .. "#")
		expect(fields.source).toBe(SOURCE_ID .. "#")
		expect(fields.translation).toBe(TRANSLATED_ID .. "#")
	end)

	it("returns an empty translation when there is no translated asset", function()
		local sourceUri = "rbxassetid://" .. SOURCE_ID .. "&version=" .. SOURCE_VERSION
		local fields = assert(buildImageFeedbackFields(GAME_ID, sourceUri, ""))
		expect(fields.translation).toBe("")
	end)

	it("returns nil when the source URI has no rbxassetid", function()
		expect(buildImageFeedbackFields(GAME_ID, "", "")).toBeNil()
	end)

	it("returns nil when the source URI is nil", function()
		expect(buildImageFeedbackFields(GAME_ID, nil, nil)).toBeNil()
	end)
end)
