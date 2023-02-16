local GraphQLServer = script:FindFirstAncestor("GraphQLServer")

local VirtualEventConnector = require(GraphQLServer.graphql.connectors.VirtualEventConnector)
local findVirtualEventById = VirtualEventConnector.findVirtualEventById
local findVirtualEventsByUniverseId = VirtualEventConnector.findVirtualEventsByUniverseId
local findRsvpCountersByVirtualEventId = VirtualEventConnector.findRsvpCountersByVirtualEventId
local findRsvpsByVirtualEventId = VirtualEventConnector.findRsvpsByVirtualEventId
local ExperienceConnector = require(GraphQLServer.graphql.connectors.ExperienceConnector)
local findExperienceDetailsByUniverseId = ExperienceConnector.findExperienceDetailsByUniverseId
local findExperienceMediaByUniverseId = ExperienceConnector.findExperienceMediaByUniverseId
local generatedTypes = require(GraphQLServer.graphql.generatedTypes)
type VirtualEvent = generatedTypes.VirtualEvent

local resolvers = {
	VirtualEvent = {
		experienceDetails = function(virtualEvent: VirtualEvent, _args, context)
			return findExperienceDetailsByUniverseId(tostring(virtualEvent.universeId), context.fetchImpl)
		end,
		media = function(virtualEvent: VirtualEvent, _args, context)
			return findExperienceMediaByUniverseId(tostring(virtualEvent.universeId), context.fetchImpl)
		end,
		rsvpCounters = function(virtualEvent: VirtualEvent, _args, context)
			return findRsvpCountersByVirtualEventId(virtualEvent.id, context.fetchImpl)
		end,
		rsvps = function(virtualEvent: VirtualEvent, _args, context)
			return findRsvpsByVirtualEventId(virtualEvent.id, context.fetchImpl)
		end,
	},
	Query = {
		virtualEvent = function(_root, args, context)
			return findVirtualEventById(args.id, context.fetchImpl)
		end,
		virtualEventsByUniverseId = function(_root, args, context)
			local options = {
				limit = args.limit,
				offset = args.offset,
				fromUtc = args.fromUtc,
			}
			return findVirtualEventsByUniverseId(args.universeId, options, context.fetchImpl)
		end,
	},
}

return resolvers
