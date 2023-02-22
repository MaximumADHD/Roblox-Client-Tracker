local Squads = script:FindFirstAncestor("Squads")
local Constants = require(Squads.FloatingActionButton.Common.Constants)
local SquadEnums = require(Squads.FloatingActionButton.Common.Enums)
local dependencies = require(Squads.dependencies)
local devDependencies = require(Squads.devDependencies)

local SocialLibraries = dependencies.SocialLibraries
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

local RhodiumHelpers = devDependencies.RhodiumHelpers()
local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = devDependencies.createTreeWithProviders
local FabContainer = require(Squads.FloatingActionButton.Components.FabContainer)

it("SHOULD mount and unmount", function()
	local element = createTreeWithProviders(FabContainer, {
		props = {
			users = {},
			squadState = SquadEnums.SquadState.Idle.rawValue(),
		},
	})
	runWhileMounted(element, function(parent)
		jestExpect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD not highlight border when idle state", function()
	local element = createTreeWithProviders(FabContainer, {
		props = {
			users = {},
			squadState = SquadEnums.SquadState.Idle.rawValue(),
		},
	})
	runWhileMounted(element, function(parent)
		local border = RhodiumHelpers.findFirstInstance(parent, { Name = "Border" })
		jestExpect(border).never.toBeNil()
		jestExpect(border.Color).toBe(Constants.CONTAINER_DEFAULT_BORDER_COLOR)
	end)
end)

it("SHOULD highlight border when game invite state", function()
	local element = createTreeWithProviders(FabContainer, {
		props = {
			users = {},
			squadState = SquadEnums.SquadState.GameInvite.rawValue(),
			experienceName = "Driving Simulator",
			inviter = {
				id = "1111111111",
				name = "user1",
			},
		},
	})
	runWhileMounted(element, function(parent)
		local border = RhodiumHelpers.findFirstInstance(parent, { Name = "Border" })
		jestExpect(border).never.toBeNil()
		jestExpect(border.Color).toBe(Constants.CONTAINER_HIGHLIGHT_BORDER_COLOR)
	end)
end)

it("SHOULD highlight border when game pending state", function()
	local element = createTreeWithProviders(FabContainer, {
		props = {
			users = {},
			squadState = SquadEnums.SquadState.GamePending.rawValue(),
			experienceName = "Driving Simulator",
		},
	})
	runWhileMounted(element, function(parent)
		local border = RhodiumHelpers.findFirstInstance(parent, { Name = "Border" })
		jestExpect(border).never.toBeNil()
		jestExpect(border.Color).toBe(Constants.CONTAINER_HIGHLIGHT_BORDER_COLOR)
	end)
end)

it("SHOULD highlight border and show joined user when game pending state", function()
	local element = createTreeWithProviders(FabContainer, {
		props = {
			users = {},
			squadState = SquadEnums.SquadState.UserJoin.rawValue(),
			newJoinedUser = {
				id = "1111111111",
				name = "user1",
			},
		},
	})
	runWhileMounted(element, function(parent)
		local border = RhodiumHelpers.findFirstInstance(parent, { Name = "Border" })
		jestExpect(border).never.toBeNil()
		jestExpect(border.Color).toBe(Constants.CONTAINER_HIGHLIGHT_BORDER_COLOR)

		local facePile =
			RhodiumHelpers.findFirstInstance(parent, { Image = SocialLibraries.User.getUserAvatarImage("1111111111") })
		jestExpect(facePile).never.toBeNil()
	end)
end)
