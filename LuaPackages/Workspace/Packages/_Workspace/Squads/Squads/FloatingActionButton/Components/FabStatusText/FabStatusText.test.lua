local Squads = script:FindFirstAncestor("Squads")
local SquadEnums = require(Squads.FloatingActionButton.Common.Enums)
local devDependencies = require(Squads.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

local RhodiumHelpers = devDependencies.RhodiumHelpers()
local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = devDependencies.createTreeWithProviders
local FabStatusText = require(Squads.FloatingActionButton.Components.FabStatusText)

it("SHOULD mount and unmount", function()
	local element = createTreeWithProviders(FabStatusText, {
		props = {
			squadState = SquadEnums.SquadState.Idle.rawValue(),
		},
	})
	runWhileMounted(element, function(parent)
		jestExpect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD match idle state with corresponding text", function()
	local element = createTreeWithProviders(FabStatusText, {
		props = {
			squadState = SquadEnums.SquadState.Idle.rawValue(),
		},
	})
	runWhileMounted(element, function(parent)
		local title = RhodiumHelpers.findFirstInstance(parent, { Name = "Title" })
		jestExpect(title).never.toBeNil()
		jestExpect(title.Text).toBe("Feature.Squads.Label.LetsPlay")
		local description = RhodiumHelpers.findFirstInstance(parent, { Name = "Description" })
		jestExpect(description).never.toBeNil()
		jestExpect(description.Text).toBe("Feature.Squads.Action.PickAnExperience")
	end)
end)

it("SHOULD match game invite state with corresponding text", function()
	local element = createTreeWithProviders(FabStatusText, {
		props = {
			squadState = SquadEnums.SquadState.GameInvite.rawValue(),
			experienceName = "Driving Simulator",
			inviter = {
				id = "1111111111",
				name = "user1",
			},
		},
	})
	runWhileMounted(element, function(parent)
		local title = RhodiumHelpers.findFirstInstance(parent, { Name = "Title" })
		jestExpect(title).never.toBeNil()
		jestExpect(title.Text).toBe("Feature.Squads.Label.LetsPlayWithUser")
		local description = RhodiumHelpers.findFirstInstance(parent, { Name = "Description" })
		jestExpect(description).never.toBeNil()
		jestExpect(description.Text).toBe("Driving Simulator")
	end)
end)

it("SHOULD match game pending state with corresponding text", function()
	local element = createTreeWithProviders(FabStatusText, {
		props = {
			squadState = SquadEnums.SquadState.GamePending.rawValue(),
			experienceName = "Driving Simulator",
		},
	})
	runWhileMounted(element, function(parent)
		local title = RhodiumHelpers.findFirstInstance(parent, { Name = "Title" })
		jestExpect(title).never.toBeNil()
		jestExpect(title.Text).toBe("Feature.Squads.Label.PreparingExperience")
		local description = RhodiumHelpers.findFirstInstance(parent, { Name = "Description" })
		jestExpect(description).never.toBeNil()
		jestExpect(description.Text).toBe("Driving Simulator")
	end)
end)

it("SHOULD match user join state with corresponding text", function()
	local element = createTreeWithProviders(FabStatusText, {
		props = {
			squadState = SquadEnums.SquadState.UserJoin.rawValue(),
			joinedUser = {
				id = "1111111111",
				name = "user1",
			},
		},
	})
	runWhileMounted(element, function(parent)
		local title = RhodiumHelpers.findFirstInstance(parent, { Name = "Title" })
		jestExpect(title).never.toBeNil()
		jestExpect(title.Text).toBe("user1")
		local description = RhodiumHelpers.findFirstInstance(parent, { Name = "Description" })
		jestExpect(description).never.toBeNil()
		jestExpect(description.Text).toBe("Feature.Squads.Label.JoinedTheSquad")
	end)
end)
