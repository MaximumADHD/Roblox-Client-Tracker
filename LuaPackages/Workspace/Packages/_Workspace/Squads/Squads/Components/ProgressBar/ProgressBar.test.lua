local Squads = script:FindFirstAncestor("Squads")

local devDependencies = require(Squads.devDependencies)
local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = devDependencies.createTreeWithProviders
local JestGlobals = devDependencies.JestGlobals
local expect = JestGlobals.expect
local it = JestGlobals.it

local ProgressBar = require(script.Parent.ProgressBar)

it("SHOULD mount and unmount", function()
	local element = createTreeWithProviders(ProgressBar, {
		props = {
			targetElapsedTime = 15,
		},
	})
	runWhileMounted(element, function(parent)
		expect(#parent:GetChildren()).toBe(1)
	end)
end)
