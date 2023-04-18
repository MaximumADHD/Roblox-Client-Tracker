local ContactImporter = script:FindFirstAncestor("ContactImporter")
local Packages = ContactImporter.Parent
local setupSetRbxEventStream = require(script.Parent.setupSetRbxEventStream)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local getPlatformTarget = require(Packages.Analytics).getPlatformTarget

local mockEventIngestService
beforeEach(function()
	mockEventIngestService = {
		setRBXEventStream = jest.fn(),
	}
end)

it("SHOULD call event ingest service with required arguments", function()
	local setRbxEventStream = setupSetRbxEventStream(mockEventIngestService)

	setRbxEventStream({}, "context", "eventName")

	expect(mockEventIngestService.setRBXEventStream).toHaveBeenCalledTimes(1)
	expect(mockEventIngestService.setRBXEventStream).toHaveBeenCalledWith(
		mockEventIngestService,
		getPlatformTarget(),
		"context",
		"eventName",
		nil
	)
end)

it("SHOULD call event ingest service with optional arguments", function()
	local setRbxEventStream = setupSetRbxEventStream(mockEventIngestService)

	setRbxEventStream({}, "context", "eventName", { btn = "btn" })

	expect(mockEventIngestService.setRBXEventStream).toHaveBeenCalledTimes(1)
	expect(mockEventIngestService.setRBXEventStream).toHaveBeenCalledWith(
		mockEventIngestService,
		getPlatformTarget(),
		"context",
		"eventName",
		{ btn = "btn" }
	)
end)
