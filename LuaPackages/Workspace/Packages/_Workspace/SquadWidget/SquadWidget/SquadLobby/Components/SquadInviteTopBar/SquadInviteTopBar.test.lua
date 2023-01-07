local SquadWidget = script:FindFirstAncestor("SquadWidget")
local devDependencies = require(SquadWidget.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local createTreeWithProviders = devDependencies.createTreeWithProviders
local findImageSet = devDependencies.findImageSet
local jest = devDependencies.jest
local runWhileMounted = UnitTestHelpers.runWhileMounted
local Constants = require(SquadWidget.SquadLobby.Common.Constants)
local SquadInviteTopBar = require(SquadWidget.SquadLobby.Components.SquadInviteTopBar.SquadInviteTopBar)

it("SHOULD mount and unmount", function()
	local mockNavigateBackFn = jest.fn()
	local mockAddClickFn = jest.fn()
	local element = createTreeWithProviders(SquadInviteTopBar, {
		props = {
			addUsers = function()
				mockAddClickFn()
			end,
			navigateBack = function()
				mockNavigateBackFn()
			end,
			isAddButtonDisabled = false,
		},
	})

	runWhileMounted(element, function(parent)
		jestExpect(#parent:GetChildren()).toBe(1)
	end)
end)

-- TODO (COEXP-799): Add test-cases for checking member count
describe("Center frame", function()
	it("SHOULD show center frame", function()
		local mockNavigateBackFn = jest.fn()
		local mockAddClickFn = jest.fn()
		local element = createTreeWithProviders(SquadInviteTopBar, {
			props = {
				addUsers = function()
					mockAddClickFn()
				end,
				navigateBack = function()
					mockNavigateBackFn()
				end,
				isAddButtonDisabled = false,
			},
		})

		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)

			local centerContent = RhodiumHelpers.findFirstInstance(parent, {
				Name = "centerContent",
			})

			jestExpect(centerContent).toEqual(jestExpect.any("Instance"))
		end)
	end)
end)

describe("Right frame", function()
	it("SHOULD show an add cta button", function()
		local mockNavigateBackFn = jest.fn()
		local mockAddClickFn = jest.fn()
		local element = createTreeWithProviders(SquadInviteTopBar, {
			props = {
				addUsers = function()
					mockAddClickFn()
				end,
				navigateBack = function()
					mockNavigateBackFn()
				end,
				isAddButtonDisabled = false,
			},
		})

		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)

			local addCTAButton = RhodiumHelpers.findFirstInstance(parent, {
				Name = "rightContent",
			})

			jestExpect(addCTAButton).toEqual(jestExpect.any("Instance"))
		end)
	end)

	it("SHOULD fire add callback when clicked", function()
		local mockNavigateBackFn = jest.fn()
		local mockAddClickFn = jest.fn()
		local element = createTreeWithProviders(SquadInviteTopBar, {
			props = {
				addUsers = function()
					mockAddClickFn()
				end,
				navigateBack = function()
					mockNavigateBackFn()
				end,
				isAddButtonDisabled = false,
			},
		})

		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)

			local addCTAButton = RhodiumHelpers.findFirstInstance(parent, {
				Name = "textLabel",
			})

			RhodiumHelpers.clickInstance(addCTAButton)
			jestExpect(addCTAButton).toEqual(jestExpect.any("Instance"))
			jestExpect(mockAddClickFn).toHaveBeenCalled()
		end)
	end)
end)

describe("Left frame", function()
	it("SHOULD show a push back button", function()
		local mockNavigateBackFn = jest.fn()
		local mockAddClickFn = jest.fn()
		local element = createTreeWithProviders(SquadInviteTopBar, {
			props = {
				addUsers = function()
					mockAddClickFn()
				end,
				navigateBack = function()
					mockNavigateBackFn()
				end,
				isAddButtonDisabled = false,
			},
		})

		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)

			local pushBackButton =
				RhodiumHelpers.findFirstInstance(parent, findImageSet(Constants.PUSH_BACK_BUTTON_IMAGE))

			jestExpect(pushBackButton).toEqual(jestExpect.any("Instance"))
		end)
	end)

	it("SHOULD call navigateBack callback", function()
		local mockNavigateBackFn = jest.fn()
		local mockAddClickFn = jest.fn()
		local element = createTreeWithProviders(SquadInviteTopBar, {
			props = {
				addUsers = function()
					mockAddClickFn()
				end,
				navigateBack = function()
					mockNavigateBackFn()
				end,
				isAddButtonDisabled = false,
			},
		})

		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)

			local pushBackButton =
				RhodiumHelpers.findFirstInstance(parent, findImageSet(Constants.PUSH_BACK_BUTTON_IMAGE))

			RhodiumHelpers.clickInstance(pushBackButton)
			jestExpect(mockNavigateBackFn).toHaveBeenCalled()
		end)
	end)
end)
