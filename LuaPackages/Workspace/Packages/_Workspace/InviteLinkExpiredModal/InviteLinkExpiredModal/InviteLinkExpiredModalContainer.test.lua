local InviteLinkExpiredModal = script:FindFirstAncestor("InviteLinkExpiredModal")

local dependencies = require(InviteLinkExpiredModal.dependencies)
local Rodux = dependencies.Rodux
local NetworkingGames = dependencies.NetworkingGames

local devDependencies = require(InviteLinkExpiredModal.devDependencies)
local Mock = devDependencies.Mock
local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = devDependencies.createTreeWithProviders
local JestGlobals = devDependencies.JestGlobals
local afterEach = JestGlobals.afterEach
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local InviteLinkExpiredModalContainer = require(script.Parent.InviteLinkExpiredModalContainer)

it("SHOULD mount and unmount", function()
	local mockNavigation = Mock.MagicMock.new()
	local getExperiencesDetails = jest.fn()
	NetworkingGames.GetExperiencesDetails.Mock.reply(function(url)
		getExperiencesDetails(url)
		return { responseBody = { data = {} } }
	end)

	local mockState = {
		InviteLinkExpiredModal = {
			Games = { byGameId = { ["456"] = { name = "Squid Game" } } },
			NetworkStatus = Mock.MagicMock.new(),
		},
		ScreenSize = Vector2.new(500, 500),
	}

	local mockStore = Rodux.Store.new(function(state)
		return state
	end, mockState, { Rodux.thunkMiddleware })

	local element = createTreeWithProviders(InviteLinkExpiredModalContainer, {
		props = {
			navigation = mockNavigation,
			launchGame = function() end,
			closeModal = function() end,
			universeId = "456",
			linkStatus = "Expired",
		},
		store = mockStore,
	})
	runWhileMounted(element, function(parent)
		expect(#parent:GetChildren()).toBe(1)
		expect(getExperiencesDetails).toHaveBeenCalledTimes(1)
		expect(getExperiencesDetails).toHaveBeenCalledWith("https://games.roblox.com//v1/games?universeIds=456")
	end)
end)

afterEach(function()
	NetworkingGames.GetExperiencesDetails.Mock.clear()
end)
