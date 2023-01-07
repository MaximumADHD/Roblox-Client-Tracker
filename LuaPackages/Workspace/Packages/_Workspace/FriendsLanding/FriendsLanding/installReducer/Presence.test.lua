local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local dependencies = require(FriendsLanding.dependencies)
local Dictionary = dependencies.llama.Dictionary

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local reducer = require(script.Parent.Presence)

local function createPresence(props)
	return Dictionary.join({
		userId = "userId",
		presence = "OFFLINE",
		lastLocation = "",
	}, props)
end

local function convert(oldPresenceType, newPresenceType)
	return function()
		local presence = createPresence({ presence = oldPresenceType })

		describe("GIVEN ReceivedUserPresence action", function()
			local result
			beforeAll(function()
				local action = Dictionary.join({
					type = "ReceivedUserPresence",
				}, presence)

				result = reducer(nil, action)
			end)

			it("SHOULD set the user's presence", function()
				expect(result.byUserId[presence.userId]).toEqual({
					userPresenceType = newPresenceType,
					type = "ReceivedUserPresence",
					lastLocation = "",
					lastOnline = "1970-01-01T00:00:00Z",
					userId = "userId",
				})
			end)
		end)
	end
end

local PresenceType = dependencies.RoduxPresence.Enums.PresenceType
describe("GIVEN an OFFLINE user", convert("OFFLINE", PresenceType.Offline))
describe("GIVEN an ONLINE user", convert("ONLINE", PresenceType.Online))
describe("GIVEN an IN_GAME user", convert("IN_GAME", PresenceType.InGame))
describe("GIVEN an IN_STUDIO user", convert("IN_STUDIO", PresenceType.InStudio))
