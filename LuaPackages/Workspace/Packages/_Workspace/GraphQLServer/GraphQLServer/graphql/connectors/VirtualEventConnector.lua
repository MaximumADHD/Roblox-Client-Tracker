local GraphQLServer = script:FindFirstAncestor("GraphQLServer")

local HttpService = game:GetService("HttpService")

local LuauPolyfill = require(GraphQLServer.Parent.LuauPolyfill)
type Promise<T> = LuauPolyfill.Promise<T>
local generatedTypes = require(GraphQLServer.graphql.generatedTypes)
type VirtualEvent = generatedTypes.VirtualEvent
type VirtualEventsPage = generatedTypes.VirtualEventsPage
type VirtualEventsByUniverseIdOptions = generatedTypes.VirtualEventsByUniverseIdOptions
type Rsvp = generatedTypes.Rsvp
type RsvpCounters = generatedTypes.RsvpCounters
type RsvpStatus = generatedTypes.RsvpStatus
type RsvpResponse = generatedTypes.RsvpResponse
local Promise = require(GraphQLServer.Parent.Promise)
local GraphQLError = require(GraphQLServer.Parent.GraphQL).GraphQLError
local fetchModule = require(GraphQLServer.Parent.Fetch)
local fetch = fetchModule.fetch
type fetch = fetchModule.fetch
local Response = fetchModule.Response
local UrlBuilder = require(GraphQLServer.Parent.UrlBuilder).UrlBuilder

local exports = {}

local virtualEventPattern = UrlBuilder.fromString("apis:virtual-events/v1/virtual-events/{id}")
local rsvpsPattern = UrlBuilder.fromString("apis:virtual-events/v1/virtual-events/{id}/rsvps")
local rsvpCountersPattern = UrlBuilder.fromString("apis:virtual-events/v1/virtual-events/{id}/rsvps/counters")
local virtualEventsByUniverseIdPattern = UrlBuilder.fromString(
	"apis:virtual-events/v1/universes/{id}/virtual-events?cursor={cursor}&limit={limit}&fromUtc={fromUtc}"
)
local notificationModalHistoryPattern = UrlBuilder.fromString("apis:virtual-events/v1/notifications/modal-history")
local notificationPreferencesPattern = UrlBuilder.fromString("apis:virtual-events/v1/notifications/preferences")

local function findVirtualEventById(virtualEventId: string, fetchImpl_: fetch?): Promise<VirtualEvent>
	local fetchImpl: fetch = if fetchImpl_ then fetchImpl_ else fetch

	return Promise.new(function(resolve, reject)
		local virtualEventUrl = virtualEventPattern({ id = virtualEventId })
		local virtualEventResponse = fetchImpl(virtualEventUrl, { method = "GET" })
			:catch(function()
				return Response.error()
			end)
			:expect()

		if not virtualEventResponse.ok then
			reject(GraphQLError.new(string.format("Failed to find VirtualEvent matching id: %s.", virtualEventId)))
			return
		end

		local virtualEventJson = virtualEventResponse
			:json()
			:catch(function()
				return nil
			end)
			:expect()

		if not virtualEventJson then
			reject(
				GraphQLError.new(
					string.format(
						"Failed to decode HTTP response as JSON for VirtualEvent matching id: %s.",
						virtualEventId
					)
				)
			)
			return
		end

		resolve(virtualEventJson)
		return
	end)
end
exports.findVirtualEventById = findVirtualEventById

local function findVirtualEventsByUniverseId(
	universeId: number,
	options: VirtualEventsByUniverseIdOptions?,
	fetchImpl_: fetch?
): Promise<VirtualEventsPage>
	local fetchImpl: fetch = if fetchImpl_ then fetchImpl_ else fetch

	return Promise.new(function(resolve, reject)
		local url = virtualEventsByUniverseIdPattern({
			id = universeId,
			cursor = if options and options.cursor then options.cursor else "",
			limit = if options and options.limit then options.limit else 25,
			fromUtc = if options and options.fromUtc then options.fromUtc else "",
		})

		local response = fetchImpl(url, { method = "GET" })
			:catch(function()
				return Response.error()
			end)
			:expect()

		if not response.ok then
			reject(GraphQLError.new(string.format("Failed to find experience matching universeId: %i", universeId)))
			return
		end

		local json = response
			:json()
			:catch(function()
				return nil
			end)
			:expect()

		if not json then
			reject(
				GraphQLError.new(
					string.format(
						"Failed to decode HTTP response as JSON for experience matching universeId: %i",
						universeId
					)
				)
			)
			return
		end

		local page: VirtualEventsPage = {
			cursor = json.nextPageCursor,
			virtualEvents = json.data,
		}

		resolve(page)
		return
	end)
end
exports.findVirtualEventsByUniverseId = findVirtualEventsByUniverseId

local function findRsvpsByVirtualEventId(virtualEventId: string, fetchImpl_: fetch?): Promise<{ Rsvp }>
	local fetchImpl: fetch = if fetchImpl_ then fetchImpl_ else fetch

	return Promise.new(function(resolve, reject)
		local url = rsvpsPattern({ id = virtualEventId })
		local res = fetchImpl(url, { method = "GET" })
			:catch(function()
				return Response.error()
			end)
			:expect()

		if not res.ok then
			reject(
				GraphQLError.new(string.format("Failed to find RSVPs matching VirtualEvent id: %s.", virtualEventId))
			)
			return
		end

		local json = res:json()
			:catch(function()
				return nil
			end)
			:expect()

		if not json then
			reject(
				GraphQLError.new(
					string.format(
						"Failed to decode HTTP response as JSON for RSVPs matching VirtualEvent id: %s.",
						virtualEventId
					)
				)
			)
			return
		end

		resolve(json.data)
		return
	end)
end
exports.findRsvpsByVirtualEventId = findRsvpsByVirtualEventId

local function findRsvpCountersByVirtualEventId(virtualEventId: string, fetchImpl_: fetch?): Promise<RsvpCounters>
	local fetchImpl: fetch = if fetchImpl_ then fetchImpl_ else fetch

	return Promise.new(function(resolve, reject)
		local url = rsvpCountersPattern({ id = virtualEventId })
		local res = fetchImpl(url, { method = "GET" })
			:catch(function()
				return Response.error()
			end)
			:expect()

		if not res.ok then
			reject(
				GraphQLError.new(
					string.format("Failed to find RSVP counters matching VirtualEvent id: %s.", virtualEventId)
				)
			)
			return
		end

		local json = res:json()
			:catch(function()
				return nil
			end)
			:expect()

		if not json then
			reject(
				GraphQLError.new(
					string.format(
						"Failed to decode HTTP response as JSON for RSVP counters matching VirtualEvent id: %s.",
						virtualEventId
					)
				)
			)
			return
		end

		resolve(json.counters)
		return
	end)
end
exports.findRsvpCountersByVirtualEventId = findRsvpCountersByVirtualEventId

local function updateRsvpStatus(
	virtualEventId: string,
	newRsvpStatus: RsvpStatus,
	fetchImpl_: fetch?
): Promise<RsvpResponse>
	local fetchImpl: fetch = if fetchImpl_ then fetchImpl_ else fetch

	return Promise.new(function(resolve, reject)
		local url = rsvpsPattern({ id = virtualEventId })
		local res = fetchImpl(url, {
				method = "POST",
				body = HttpService:JSONEncode({
					rsvpStatus = newRsvpStatus,
				}),
				headers = {
					["Content-Type"] = "application/json",
					["Accept"] = "application/json",
				},
			})
			:catch(function()
				return Response.error()
			end)
			:expect()

		if not res.ok then
			reject(
				GraphQLError.new(
					string.format("Failed to set RSVP status matching VirtualEvent id: %s.", virtualEventId)
				)
			)
			return
		end

		local json = res:json()
			:catch(function()
				return nil
			end)
			:expect()

		if not json then
			reject(
				GraphQLError.new(
					string.format(
						"Failed to decode HTTP response as JSON for RSVP status matching VirtualEvent id: %s.",
						virtualEventId
					)
				)
			)
			return
		end

		local rsvpResponse = {
			shouldSeeNotificationsUpsellModal = json.shouldSeeNotificationsUpsellModal,
			virtualEvent = {
				id = virtualEventId,
				userRsvpStatus = json.rsvpStatus,
			},
		}

		resolve(rsvpResponse)
		return
	end)
end
exports.updateRsvpStatus = updateRsvpStatus

local function neverShowNotificationModalAgain(fetchImpl_: fetch?): Promise<boolean>
	local fetchImpl: fetch = if fetchImpl_ then fetchImpl_ else fetch

	return Promise.new(function(resolve, reject)
		local url = notificationModalHistoryPattern()
		local res = fetchImpl(url, {
				method = "POST",
			})
			:catch(function()
				return Response.error()
			end)
			:expect()

		if not res.ok then
			reject(GraphQLError.new("Failed to update modal history"))
			return
		end

		resolve(true)
		return
	end)
end
exports.neverShowNotificationModalAgain = neverShowNotificationModalAgain

local function enablePushNotifications(fetchImpl_: fetch?): Promise<boolean>
	local fetchImpl: fetch = if fetchImpl_ then fetchImpl_ else fetch

	return Promise.new(function(resolve, reject)
		local url = notificationPreferencesPattern()

		local res = fetchImpl(url, {
				method = "POST",
				body = HttpService:JSONEncode({
					isEnabled = true,
				}),
				headers = {
					["Content-Type"] = "application/json",
					["Accept"] = "application/json",
				},
			})
			:catch(function()
				return Response.error()
			end)
			:expect()

		if not res.ok then
			reject(GraphQLError.new("Failed to update notification preferences"))
			return
		end

		resolve(true)
		return
	end)
end
exports.enablePushNotifications = enablePushNotifications

return exports
