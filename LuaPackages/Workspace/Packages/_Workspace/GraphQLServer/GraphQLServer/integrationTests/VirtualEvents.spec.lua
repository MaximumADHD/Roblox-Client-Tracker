local HttpService = game:GetService("HttpService")
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local jestExpect = require(Packages.Dev.JestGlobals).expect
local buildFetch = require(Packages.Fetch).buildFetch
local graphqlModule = require(Packages.GraphQL)
type GraphQLError = graphqlModule.GraphQLError
local RecordPlayback = require(Packages.Dev.RecordPlayback)
local GraphqlHttpArtifacts = require(Packages.Dev.GraphqlHttpArtifacts)

local graphqlServer = require(script.Parent.Parent.Server)

local create

return function()
	beforeAll(function()
		create = RecordPlayback.createRecordPlayback({
			-- the path must point to the instance in the DataModel used here
			instanceParent = GraphqlHttpArtifacts,
			fileSystemPath = "modules/graphql/http-artifacts/src",
		})
	end)

	it("Should resolve VirtualEvent data", function()
		create("virtual-event-integration-success"):execute(function(httpService)
			local fetch = buildFetch(httpService)
			local server = graphqlServer.new({
				fetchImpl = fetch,
			})

			local query = [[
				query getVirtualEvent($id: ID!) {
					virtualEvent(id: $id) {
						id
						title
						description
						host {
							hostType
							hostId
							hostName
							hasVerifiedBadge
						}
						universeId
						eventStatus
						eventTime {
							startUtc
							endUtc
						}
						createdUtc
						updatedUtc
						userRsvpStatus
						rsvps {
							userId
							rsvpStatus
						}
						rsvpCounters {
							none
							going
							maybeGoing
							notGoing
						}
						experienceDetails {
							id
							name
						}
						media {
							assetType
						}
					}
				}
			]]

			local body = HttpService:JSONEncode({
				query = query,
				variables = {
					id = "813902335774097414",
				},
			})

			local result = server
				:fetchLocal({
					body = body,
				})
				:expect()

			jestExpect(result).toBeDefined()

			local virtualEvent = result.body.data.virtualEvent

			jestExpect(virtualEvent).toBeDefined()
			jestExpect(virtualEvent.id).toBe("813902335774097414")
			jestExpect(virtualEvent.title).toBe("Future whale event (probably like 100 years later.)")
			jestExpect(virtualEvent.description).toBe(
				"Will whales be extinct, or will whales be humans? WHUMANS? WHALEMANS?"
			)

			jestExpect(virtualEvent.host).toBeDefined()
			jestExpect(virtualEvent.host.hostType).toBe("user")
			jestExpect(virtualEvent.host.hostId).toBe("11115966616")
			jestExpect(virtualEvent.host.hasVerifiedBadge).toBeTruthy()

			jestExpect(virtualEvent.universeId).toBe("2158344278")
			jestExpect(virtualEvent.eventStatus).toBe("active")

			jestExpect(virtualEvent.eventTime).toBeDefined()
			jestExpect(virtualEvent.eventTime.startUtc).toBe("2122-11-15T00:00:00+00:00")
			jestExpect(virtualEvent.eventTime.endUtc).toBe("2122-11-30T23:59:00+00:00")

			jestExpect(virtualEvent.createdUtc).toBe("2022-11-14T19:21:21.171+00:00")
			jestExpect(virtualEvent.updatedUtc).toBe("2022-11-14T19:21:58.058+00:00")
			jestExpect(virtualEvent.userRsvpStatus).toBe("going")

			jestExpect(virtualEvent.rsvps).toBeDefined()
			jestExpect(#virtualEvent.rsvps).toBe(4)

			jestExpect(virtualEvent.rsvpCounters).toBeDefined()
			jestExpect(virtualEvent.rsvpCounters.none).toBe(0)
			jestExpect(virtualEvent.rsvpCounters.going).toBe(4)
			jestExpect(virtualEvent.rsvpCounters.maybeGoing).toBe(0)
			jestExpect(virtualEvent.rsvpCounters.notGoing).toBe(4)

			jestExpect(virtualEvent.experienceDetails).toBeDefined()
			jestExpect(virtualEvent.experienceDetails.id).toBeDefined()
			jestExpect(virtualEvent.experienceDetails.name).toBeDefined()

			jestExpect(virtualEvent.media).toBeDefined()
			jestExpect(#virtualEvent.media).toBe(1)
		end)
	end)

	it("should hide the notifications modal forever", function()
		create("virtual-event-modal-history-success"):execute(function(httpService)
			local fetch = buildFetch(httpService)
			local server = graphqlServer.new({
				fetchImpl = fetch,
			})

			local mutation = [[
				mutation NeverShowNotificationModalAgain {
					virtualEvents {
						neverShowNotificationModalAgain
					}
				}
			]]

			local body = HttpService:JSONEncode({
				mutation = mutation,
				variables = {},
			})

			local result = server
				:fetchLocal({
					body = body,
				})
				:expect()

			jestExpect(result).toBeDefined()
			jestExpect(result.body.data.virtualEvents.neverShowNotificationModalAgain).toBe(true)
		end)
	end)

	it("should update the user's notification preferences", function()
		create("virtual-event-notification-preferences-success"):execute(function(httpService)
			local fetch = buildFetch(httpService)
			local server = graphqlServer.new({
				fetchImpl = fetch,
			})

			local mutation = [[
				mutation EnablePushNotifications {
					virtualEvents {
						enablePushNotifications
					}
				}
			]]

			local body = HttpService:JSONEncode({
				mutation = mutation,
				variables = {},
			})

			local result = server
				:fetchLocal({
					body = body,
				})
				:expect()

			jestExpect(result).toBeDefined()
			jestExpect(result.body.data.virtualEvents.enablePushNotifications).toBe(true)
		end)
	end)
end
