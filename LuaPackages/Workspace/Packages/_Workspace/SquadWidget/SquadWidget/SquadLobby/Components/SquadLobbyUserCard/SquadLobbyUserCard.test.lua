local SquadWidget = script:FindFirstAncestor("SquadWidget")
local devDependencies = require(SquadWidget.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local findImageSet = devDependencies.findImageSet
local createTreeWithProviders = devDependencies.createTreeWithProviders
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local runWhileMounted = UnitTestHelpers.runWhileMounted
local SquadLobbyUserCard = require(SquadWidget.SquadLobby.Components.SquadLobbyUserCard.SquadLobbyUserCard)
local Constants = require(SquadWidget.SquadLobby.Common.Constants)

it("SHOULD mount and unmount", function()
	local element = createTreeWithProviders(SquadLobbyUserCard, {
		props = {
			user = {
				id = 1111111111,
				name = "user1",
			},
			isBlocked = false,
		},
	})
	runWhileMounted(element, function(parent)
		jestExpect(#parent:GetChildren()).toBe(1)
	end)
end)

describe("Blocked status", function()
	it("SHOULD show blocked icon for blocked users", function()
		local element = createTreeWithProviders(SquadLobbyUserCard, {
			props = {
				user = {
					id = 1111111111,
					name = "user1",
				},
				isBlocked = true,
			},
		})

		runWhileMounted(element, function(parent)
			local BlockedIcon = RhodiumHelpers.findFirstInstance(parent, findImageSet(Constants.BLOCKED_ICON_IMAGE))

			jestExpect(BlockedIcon).toEqual(jestExpect.any("Instance"))
		end)
	end)

	it("SHOULD not show blocked icon for not blocked users", function()
		local element = createTreeWithProviders(SquadLobbyUserCard, {
			props = {
				user = {
					id = 1111111111,
					name = "user1",
				},
				isBlocked = false,
			},
		})

		runWhileMounted(element, function(parent)
			local BlockedIcon = RhodiumHelpers.findFirstInstance(parent, findImageSet(Constants.BLOCKED_ICON_IMAGE))

			jestExpect(BlockedIcon).toBeNil()
		end)
	end)
end)

describe("User card experience status", function()
	it("SHOULD show online if user is not in an experience", function()
		local element = createTreeWithProviders(SquadLobbyUserCard, {
			props = {
				user = {
					id = 1111111111,
					name = "user1",
				},
				isBlocked = true,
			},
		})

		runWhileMounted(element, function(parent)
			local OnlineStatusDot = RhodiumHelpers.findFirstInstance(parent, {
				Name = "OnlineStatusDot",
			})

			jestExpect(OnlineStatusDot).toEqual(jestExpect.any("Instance"))
		end)
	end)

	it("SHOULD show not show online status if user is in an experience", function()
		local element = createTreeWithProviders(SquadLobbyUserCard, {
			props = {
				user = {
					id = 1111111111,
					name = "user1",
				},
				experienceName = "Funky Friday",
				isBlocked = true,
			},
		})

		runWhileMounted(element, function(parent)
			local OnlineStatusDot = RhodiumHelpers.findFirstInstance(parent, {
				Name = "OnlineStatusDot",
			})

			jestExpect(OnlineStatusDot).toBeNil()
		end)
	end)
end)
