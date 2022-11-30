local SocialTab = script:FindFirstAncestor("SocialTab")

local dependencies = require(SocialTab.dependencies)
local llama = dependencies.llama
local PresenceType = dependencies.RoduxPresence.Enums.PresenceType

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local reducer = require(script.Parent.Presence)

local function createPresence(props)
	return llama.Dictionary.join({
		userId = "userId",
		presence = "OFFLINE",
		lastLocation = "",
	}, props)
end

local function convert(oldPresenceType, newPresenceType)
	return function()
		local presence = createPresence({ presence = oldPresenceType })

		describe("GIVEN ReceivedUserPresence action", function()
			local action = llama.Dictionary.join({
				type = "ReceivedUserPresence",
			}, presence)

			local result = reducer(nil, action)

			it("SHOULD set the user's presence", function(c)
				expect(llama.Dictionary.equals(result.byUserId[presence.userId], {
					userPresenceType = newPresenceType,
					type = "ReceivedUserPresence",
					lastLocation = "",
					lastOnline = "1970-01-01T00:00:00Z",
					userId = "userId",
				})).toBe(true)
			end)
		end)
	end
end

describe("GIVEN an OFFLINE user", convert("OFFLINE", PresenceType.Offline))
describe("GIVEN an ONLINE user", convert("ONLINE", PresenceType.Online))
describe("GIVEN an IN_GAME user", convert("IN_GAME", PresenceType.InGame))
describe("GIVEN an IN_STUDIO user", convert("IN_STUDIO", PresenceType.InStudio))
