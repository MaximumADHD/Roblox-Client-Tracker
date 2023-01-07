local ShareLinkInvalidModal = script:FindFirstAncestor("ShareLinkInvalidModal")

local dependencies = require(ShareLinkInvalidModal.dependencies)
local Rodux = dependencies.Rodux

local devDependencies = require(ShareLinkInvalidModal.devDependencies)
local Mock = devDependencies.Mock
local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = devDependencies.createTreeWithProviders
local JestGlobals = devDependencies.JestGlobals
local expect = JestGlobals.expect
local it = JestGlobals.it

local ShareLinkInvalidModalContainer = require(script.Parent.ShareLinkInvalidModalContainer)

it("SHOULD mount and unmount", function()
	local mockNavigation = Mock.MagicMock.new()

	local mockState = {
		ScreenSize = Vector2.new(500, 500),
	}

	local mockStore = Rodux.Store.new(function(state)
		return state
	end, mockState, { Rodux.thunkMiddleware })

	local element = createTreeWithProviders(ShareLinkInvalidModalContainer, {
		props = {
			navigation = mockNavigation,
			closeModal = function() end,
		},
		store = mockStore,
	})
	runWhileMounted(element, function(parent)
		expect(#parent:GetChildren()).toBe(1)
	end)
end)
