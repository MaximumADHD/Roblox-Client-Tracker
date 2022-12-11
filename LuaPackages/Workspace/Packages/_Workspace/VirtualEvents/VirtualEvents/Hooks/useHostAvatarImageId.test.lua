local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local TEST_IMAGE_ID = "10295417977"

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
local useHostAvatarImageId = require(script.Parent.useHostAvatarImageId)
local jest = JestGlobals.jest

local container
local root
local store
local element
local avatarImageId

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})
local mockPlayers = {
	GetUserThumbnailAsync = jest.fn(),
}

local function TestHook()
	avatarImageId = useHostAvatarImageId(1, nil, nil, mockPlayers)

	return nil
end

beforeEach(function()
	mockPlayers.GetUserThumbnailAsync.mockReturnValue(TEST_IMAGE_ID)

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
	jest.resetAllMocks()
	root:unmount()
	container:Destroy()
end)

it("should set avatarImageId to TEST_IMAGE_ID", function()
	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(avatarImageId).toEqual(TEST_IMAGE_ID)
end)

return {}
