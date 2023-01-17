local GraphQLServer = script:FindFirstAncestor("GraphQLServer")

local JestGlobals = require(GraphQLServer.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local RecordPlayback = require(GraphQLServer.Parent.Dev.RecordPlayback)
local buildFetch = require(GraphQLServer.Parent.Fetch).buildFetch
local GraphqlHttpArtifacts = require(GraphQLServer.Parent.Dev.GraphqlHttpArtifacts)
local VirtualEventConnector = require(script.Parent.VirtualEventConnector)
local findVirtualEventById = VirtualEventConnector.findVirtualEventById
local findRsvpsByVirtualEventId = VirtualEventConnector.findRsvpsByVirtualEventId
local findRsvpCountersByVirtualEventId = VirtualEventConnector.findRsvpCountersByVirtualEventId

return function()
	local create = nil

	beforeAll(function()
		create = RecordPlayback.createRecordPlayback({
			-- the path must point to the instance in the DataModel used here
			instanceParent = GraphqlHttpArtifacts,
			fileSystemPath = "modules/graphql/http-artifacts/src",
		})
	end)

	describe("fetch VirtualEvent", function()
		it("should fetch a VirtualEvent", function()
			create("virtual-event-success"):execute(function(httpService)
				local fetchImpl = buildFetch(httpService)
				local virtualEvent = findVirtualEventById("813902335774097414", fetchImpl):expect()

				expect(virtualEvent).toBeDefined()
				expect(virtualEvent.id).toEqual("813902335774097414")
			end)
		end)

		it("should throw if a VirtualEvent cannot be found", function()
			create("virtual-event-fail"):execute(function(httpService)
				local capturedError
				local fetchImpl = buildFetch(httpService)

				findVirtualEventById("badVirtualEvent", fetchImpl)
					:catch(function(err)
						capturedError = err
					end)
					:expect()

				expect(capturedError).toBeDefined()
				expect(capturedError.message).toEqual("Failed to find VirtualEvent matching id: badVirtualEvent.")
			end)
		end)
	end)

	describe("fetch RSVPs", function()
		it("should fetch a VirtualEvent's list of RSVPs", function()
			create("virtual-event-rsvps-success"):execute(function(httpService)
				local fetchImpl = buildFetch(httpService)
				local rsvps = findRsvpsByVirtualEventId("813902335774097414", fetchImpl):expect()

				expect(rsvps).toBeDefined()
				expect(#rsvps).toBe(4)
			end)
		end)

		it("should throw on failure", function()
			create("virtual-event-rsvps-fail"):execute(function(httpService)
				local capturedError
				local fetchImpl = buildFetch(httpService)

				findRsvpsByVirtualEventId("badVirtualEvent", fetchImpl)
					:catch(function(err)
						capturedError = err
					end)
					:expect()

				expect(capturedError).toBeDefined()
				expect(capturedError.message).toEqual("Failed to find RSVPs matching VirtualEvent id: badVirtualEvent.")
			end)
		end)
	end)

	describe("fetch RSVP counters", function()
		it("should return the VirtualEvent's RSVP counters", function()
			create("virtual-event-rsvp-counters-success"):execute(function(httpService)
				local fetchImpl = buildFetch(httpService)
				local rsvpCounters = findRsvpCountersByVirtualEventId("813902335774097414", fetchImpl):expect()

				expect(rsvpCounters).toBeDefined()
				expect(rsvpCounters.none).toBe(0)
				expect(rsvpCounters.maybeGoing).toBe(0)
				expect(rsvpCounters.going).toBe(4)
				expect(rsvpCounters.notGoing).toBe(4)
			end)
		end)

		it("should throw on failure", function()
			create("virtual-event-rsvp-counters-fail"):execute(function(httpService)
				local capturedError
				local fetchImpl = buildFetch(httpService)

				findRsvpCountersByVirtualEventId("badVirtualEvent", fetchImpl)
					:catch(function(err)
						capturedError = err
					end)
					:expect()

				expect(capturedError).toBeDefined()
				expect(capturedError.message).toEqual(
					"Failed to find RSVP counters matching VirtualEvent id: badVirtualEvent."
				)
			end)
		end)
	end)
end
