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
local useHostAvatarUsername = require(script.Parent.useHostAvatarUsername)
local jest = JestGlobals.jest

local container
local root
local store
local element
local avatarUsername
local mockPlayers

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})

local function TestHook()
	avatarUsername = useHostAvatarUsername(1, mockPlayers)

	return nil
end

local TEST_USERNAME = "Roblox"

beforeEach(function()
	mockPlayers = {
		GetNameFromUserIdAsync = jest.fn(),
	}
	mockPlayers.GetNameFromUserIdAsync.mockReturnValueOnce(TEST_USERNAME)

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
end)

it("should set avatarUsername to Roblox given UserId 1", function()
	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(avatarUsername).toEqual("Roblox")
end)

return {}
