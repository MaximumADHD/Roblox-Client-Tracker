local SocialTab = script:FindFirstAncestor("SocialTab")
local getFFlagSocialTabReplaceRefreshConversations =
	require(SocialTab.Flags.getFFlagSocialTabReplaceRefreshConversations)

local dependencies = require(SocialTab.dependencies)
local NetworkingChat = dependencies.NetworkingChat

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local reducer = require(script.Parent.Users)

describe("GIVEN state as nil", function()
	local state = nil

	local user = {
		id = "userId",
		name = "name",
		displayName = "displayName",
		friendRank = 1,
	}

	local participant = {
		targetId = 123,
		name = "name",
		displayName = "displayName",
		friendRank = 2,
	}

	describe("GIVEN legacy AddUser action", function()
		local action = {
			type = "AddUser",
			user = user,
		}

		it("SHOULD add the user to the reducer", function()
			local result = reducer(state, action)
			expect(result.byUserId[user.id]).toEqual(expect.any("table"))
		end)
	end)

	describe("GIVEN legacy AddUsers action", function()
		local action = {
			type = "AddUsers",
			users = { user },
		}

		it("SHOULD add the user to the reducer", function()
			local result = reducer(state, action)
			expect(result.byUserId[user.id]).toEqual(expect.any("table"))
		end)
	end)

	if getFFlagSocialTabReplaceRefreshConversations() then
		describe("GIVEN NetworkingChat.GetUserConversations.Succeeded.name", function()
			local action = {
				type = NetworkingChat.GetUserConversations.Succeeded.name,
				responseBody = { { participants = { participant } } },
			}

			it("SHOULD add the user to the reducer", function()
				local result = reducer(state, action)

				expect(result.byUserId["123"]).toEqual(expect.any("table"))
				expect(result.byUserId["123"].username).toBe("name")
			end)
		end)
	end
end)

if getFFlagSocialTabReplaceRefreshConversations() then
	describe("GIVEN state with a user already", function()
		local participant = {
			targetId = 123,
			name = "name",
			displayName = "displayName",
			friendRank = 2 :: number?,
		}

		local participant2 = {
			targetId = 234,
			name = "name",
			displayName = "displayName",
		}

		local state = {
			byUserId = { ["123"] = {
				username = "original",
			} },
		}

		describe("GIVEN NetworkingChat.GetUserConversations.Succeeded.name", function()
			local action = {
				type = NetworkingChat.GetUserConversations.Succeeded.name,
				responseBody = { { participants = { participant, participant2 } } },
			}

			it("SHOULD only add new users to the reducer", function()
				local result = reducer(state, action)

				expect(result.byUserId["123"]).toEqual(expect.any("table"))
				expect(result.byUserId["234"]).toEqual(expect.any("table"))
				expect(result.byUserId["123"].username).toBe("original")
				expect(result.byUserId["234"].username).toBe("name")
			end)
		end)

		describe("GIVEN NetworkingChat.GetUserConversations.Succeeded.name with multiple conversations", function()
			local action = {
				type = NetworkingChat.GetUserConversations.Succeeded.name,
				responseBody = {
					{ participants = { participant } },
					{ participants = { participant2 } },
				},
			}

			it("SHOULD only add new users - whatever conversation they're in - to the reducer", function()
				local result = reducer(state, action)

				expect(result.byUserId["123"]).toEqual(expect.any("table"))
				expect(result.byUserId["234"]).toEqual(expect.any("table"))
				expect(result.byUserId["123"].username).toBe("original")
				expect(result.byUserId["234"].username).toBe("name")
			end)
		end)
	end)
end
