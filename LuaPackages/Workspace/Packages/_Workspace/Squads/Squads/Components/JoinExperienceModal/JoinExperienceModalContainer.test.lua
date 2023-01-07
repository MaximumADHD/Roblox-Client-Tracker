local Squads = script:FindFirstAncestor("Squads")

local dependencies = require(Squads.dependencies)
local NetworkingGames = dependencies.NetworkingGames
local Rodux = dependencies.Rodux

local devDependencies = require(Squads.devDependencies)
local Mock = devDependencies.Mock
local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = devDependencies.createTreeWithProviders
local JestGlobals = devDependencies.JestGlobals
local afterEach = JestGlobals.afterEach
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local JoinExperienceModalContainer = require(script.Parent.JoinExperienceModalContainer)

it("SHOULD mount and unmount", function()
	local mockNavigation = Mock.MagicMock.new()
	local getExperiencesDetails = jest.fn()
	local getExperienceMedia = jest.fn()
	NetworkingGames.GetExperiencesDetails.Mock.reply(function(url)
		getExperiencesDetails(url)
		return { responseBody = { data = {} } }
	end)
	NetworkingGames.GetExperienceMedia.Mock.reply(function(url)
		getExperienceMedia(url)
		return { responseBody = { data = {} } }
	end)

	local mockState = {
		SocialModalsSquads = {
			Games = {
				byGameId = { ["456"] = { name = "Super Cool Experience", maxPlayers = 6, rootPlaceId = "123" } },
				mediaByGameId = { ["456"] = { { assetTypeId = 1, imageId = 789 } } },
			},
			NetworkStatus = Mock.MagicMock.new(),
		},
		ScreenSize = Vector2.new(500, 500),
	}

	local mockStore = Rodux.Store.new(function(state)
		return state
	end, mockState, { Rodux.thunkMiddleware })

	local element = createTreeWithProviders(JoinExperienceModalContainer, {
		props = {
			navigation = mockNavigation,
			closeModal = function() end,
			universeId = "456",
			users = { "111" },
		},
		store = mockStore,
	})
	runWhileMounted(element, function(parent)
		expect(#parent:GetChildren()).toBe(1)
		expect(getExperiencesDetails).toHaveBeenCalledTimes(1)
		expect(getExperiencesDetails).toHaveBeenCalledWith("https://games.roblox.com//v1/games?universeIds=456")
		expect(getExperienceMedia).toHaveBeenCalledTimes(1)
		expect(getExperienceMedia).toHaveBeenCalledWith("https://games.roblox.com//v2/games/456/media")
	end)
end)

afterEach(function()
	NetworkingGames.GetExperiencesDetails.Mock.clear()
end)
