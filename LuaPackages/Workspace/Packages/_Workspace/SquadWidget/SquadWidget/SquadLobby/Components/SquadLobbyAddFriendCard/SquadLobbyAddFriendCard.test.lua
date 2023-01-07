local SquadWidget = script:FindFirstAncestor("SquadWidget")
local devDependencies = require(SquadWidget.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = devDependencies.createTreeWithProviders
local SquadLobbyAddFriendCard =
	require(SquadWidget.SquadLobby.Components.SquadLobbyAddFriendCard.SquadLobbyAddFriendCard)

it("SHOULD mount and unmount", function()
	local element = createTreeWithProviders(SquadLobbyAddFriendCard, {
		props = {},
	})
	runWhileMounted(element, function(parent)
		jestExpect(#parent:GetChildren()).toBe(1)
	end)
end)
