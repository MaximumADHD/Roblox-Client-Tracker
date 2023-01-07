local SquadWidget = script:FindFirstAncestor("SquadWidget")
local devDependencies = require(SquadWidget.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local createTreeWithProviders = devDependencies.createTreeWithProviders
local jest = devDependencies.jest
local runWhileMounted = UnitTestHelpers.runWhileMounted
local SquadLobbyTopBar = require(SquadWidget.SquadLobby.Components.SquadLobbyTopBar.SquadLobbyTopBar)

it("SHOULD mount and unmount", function()
	local mockFn = jest.fn()
	local element = createTreeWithProviders(SquadLobbyTopBar, {
		props = {
			navigateBack = function()
				mockFn()
			end,
		},
	})

	runWhileMounted(element, function(parent)
		jestExpect(#parent:GetChildren()).toBe(1)
	end)
end)

-- TODO (COEXP-799): Add test-cases for checking member count
describe("Leave Button", function()
	it("SHOULD show a leave cta button", function()
		local element = createTreeWithProviders(SquadLobbyTopBar, {
			props = {
				title = "test title",
			},
		})

		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)

			local leaveCTAButton = RhodiumHelpers.findFirstInstance(parent, {
				Name = "ButtonContent",
			})

			jestExpect(leaveCTAButton).toEqual(jestExpect.any("Instance"))
		end)
	end)

	-- it("SHOULD fire when clicked", function()
	-- 	-- TODO (COEXP-793): Define leave callback
	-- 	local mockFn = jest.fn()
	-- 	local element = createTreeWithProviders(SquadLobbyTopBar, {
	-- 		props = {
	-- 			title = "test title"
	-- 		},
	-- 	})

	-- 	runWhileMounted(element, function(parent)
	-- 		jestExpect(#parent:GetChildren()).toBe(1)

	-- 		local leaveCTAButton = RhodiumHelpers.findFirstInstance(parent, {
	-- 			Name = "ButtonContent",
	-- 		})

	-- 		RhodiumHelpers.clickInstance(leaveCTAButton)
	-- 		jestExpect(leaveCTAButton).toEqual(jestExpect.any("Instance"))
	-- 		-- TODO (COEXP-797): Add check for network request callback when network request is available
	-- 		jestExpect(mockFn).toHaveBeenCalled()
	-- 	end)
	-- end)
end)

describe("Title", function()
	it("SHOULD show a title", function()
		local element = createTreeWithProviders(SquadLobbyTopBar, {
			props = {
				title = "test title",
			},
		})

		runWhileMounted(element, function(parent)
			local TitleText = RhodiumHelpers.findFirstInstance(parent, {
				Name = "TitleText",
			})

			jestExpect(TitleText).toEqual(jestExpect.any("Instance"))
		end)
	end)
end)
