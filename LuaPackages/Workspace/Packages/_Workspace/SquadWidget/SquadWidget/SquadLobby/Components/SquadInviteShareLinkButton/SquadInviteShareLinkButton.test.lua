local SquadWidget = script:FindFirstAncestor("SquadWidget")
local devDependencies = require(SquadWidget.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local createTreeWithProviders = devDependencies.createTreeWithProviders
local runWhileMounted = UnitTestHelpers.runWhileMounted
local SquadInviteShareLinkButton =
	require(SquadWidget.SquadLobby.Components.SquadInviteShareLinkButton.SquadInviteShareLinkButton)

it("SHOULD mount and unmount", function()
	local element = createTreeWithProviders(SquadInviteShareLinkButton, {
		props = {
			shareLinkUrl = "http://roblox.com/this_is_a_really_long_url_that_should_be_truncated_because_it_is_too_long",
		},
	})

	runWhileMounted(element, function(parent)
		jestExpect(#parent:GetChildren()).toBe(1)
	end)
end)
