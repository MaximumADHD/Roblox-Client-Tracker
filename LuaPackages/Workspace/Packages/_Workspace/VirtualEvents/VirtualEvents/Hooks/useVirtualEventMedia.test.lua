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
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local ExperienceMediaModel = require(VirtualEvents.Models.ExperienceMediaModel)
local useVirtualEventMedia = require(script.Parent.useVirtualEventMedia)

local container
local root
local store
local element
local media
local fetchingStatus

local mockVirtualEvent = VirtualEventModel.mock("1")
mockVirtualEvent.universeId = 3531439676

local mockMediaResponse = ExperienceMediaModel.mock()

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})

local function TestHook()
	media, fetchingStatus = useVirtualEventMedia(mockVirtualEvent)
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

	NetworkingGames.GetExperienceMedia.Mock.clear()
end)

it("should return nil before fetching", function()
	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(media).toBeNil()
	expect(fetchingStatus).toBe(RoduxNetworking.Enum.NetworkStatus.NotStarted)
end)

it("should return a VirtualEvents's media", function()
	NetworkingGames.GetExperienceMedia.Mock.reply({
		responseBody = {
			data = {
				mockMediaResponse,
			},
		},
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	ReactRoblox.act(function()
		store:flush()
	end)

	expect(media).toEqual({ mockMediaResponse })
	expect(fetchingStatus).toBe(RoduxNetworking.Enum.NetworkStatus.Done)
end)

return {}
