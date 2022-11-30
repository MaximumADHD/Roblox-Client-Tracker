local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local expect = JestGlobals.expect
local it = JestGlobals.it
local React = require(VirtualEvents.Parent.React)
local ReactRoblox = require(VirtualEvents.Parent.ReactRoblox)
local RoactRodux = require(VirtualEvents.Parent.RoactRodux)
local Rodux = require(VirtualEvents.Parent.Rodux)
local installReducer = require(VirtualEvents.installReducer)
local network = require(VirtualEvents.network)
local RoduxNetworking = network.RoduxNetworking
local NetworkingGames = network.NetworkingGames
local ExperienceDetailsModel = require(VirtualEvents.Models.ExperienceDetailsModel)
local useExperienceDetails = require(script.Parent.useExperienceDetails)

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})

local mockUniverseId = 3531439676
local mockDetailsResponse = ExperienceDetailsModel.mock(mockUniverseId)

local container
local root
local store
local element
local details
local fetchingStatus

local function TestHook()
	details, fetchingStatus = useExperienceDetails(mockUniverseId)
	return nil
end

beforeEach(function()
	container = Instance.new("ScreenGui")
	root = ReactRoblox.createRoot(container)

	store = Rodux.Store.new(reducer, nil, {
		Rodux.thunkMiddleware,
	})

	element = React.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		TestHook = React.createElement(TestHook),
	})
end)

afterEach(function()
	root:unmount()
	container:Destroy()

	NetworkingGames.GetExperiencesDetails.Mock.clear()
end)

it("should return nil before fetching", function()
	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(details).toBeNil()
	expect(fetchingStatus).toBe(RoduxNetworking.Enum.NetworkStatus.NotStarted)
end)

it("should return an experiences's details", function()
	NetworkingGames.GetExperiencesDetails.Mock.reply({
		responseBody = {
			data = {
				mockDetailsResponse,
			},
		},
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	ReactRoblox.act(function()
		store:flush()
	end)

	expect(details).toEqual(mockDetailsResponse)
	expect(fetchingStatus).toBe(RoduxNetworking.Enum.NetworkStatus.Done)
end)

return {}
