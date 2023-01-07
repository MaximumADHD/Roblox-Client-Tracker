local SquadWidget = script:FindFirstAncestor("SquadWidget")
local devDependencies = require(SquadWidget.devDependencies)

local Constants = require(SquadWidget.SquadLobby.Common.Constants)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local RhodiumHelpers = devDependencies.RhodiumHelpers()
local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = devDependencies.createTreeWithProviders
local SquadLobbyUsers = require(SquadWidget.SquadLobby.Components.SquadLobbyUsers.SquadLobbyUsers)

it("SHOULD mount and unmount", function()
	local element = createTreeWithProviders(SquadLobbyUsers, {
		props = {
			users = {},
		},
	})
	runWhileMounted(element, function(parent)
		jestExpect(#parent:GetChildren()).toBe(1)
	end)
end)

describe("SquadLobbyUserCards", function()
	it("SHOULD show 2 user cards and the add friend card", function()
		local mockUsers = {
			{
				id = 1111111111,
				name = "user1",
			},
			{
				id = 2222222222,
				name = "user2",
			},
		}

		local element = createTreeWithProviders(SquadLobbyUsers, {
			props = {
				users = mockUsers,
			},
		})

		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)

			local card1 = RhodiumHelpers.findFirstInstance(parent, {
				Name = "UserCard1",
			})

			local card2 = RhodiumHelpers.findFirstInstance(parent, {
				Name = "UserCard2",
			})

			local addFriendCard = RhodiumHelpers.findFirstInstance(parent, {
				Name = "AddFriendCard",
			})

			jestExpect(card1).toEqual(jestExpect.any("Instance"))
			jestExpect(card2).toEqual(jestExpect.any("Instance"))
			jestExpect(addFriendCard).toEqual(jestExpect.any("Instance"))
		end)
	end)

	it("SHOULD not show Add friends card when there are max players", function()
		local mockUsers = {}
		for i = 1, Constants.SQUAD_MAX_CAPACITY do
			table.insert(mockUsers, {
				id = 1111111111,
				name = "user" .. i,
			})
		end

		local element = createTreeWithProviders(SquadLobbyUsers, {
			props = {
				users = mockUsers,
			},
		})

		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)

			local addFriendCard = RhodiumHelpers.findFirstInstance(parent, {
				Name = "AddFriendCard",
			})

			jestExpect(addFriendCard).toBeNil()
		end)
	end)
end)
