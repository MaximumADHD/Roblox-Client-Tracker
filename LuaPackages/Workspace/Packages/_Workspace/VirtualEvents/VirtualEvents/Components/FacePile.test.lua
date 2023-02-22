local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local CoreGui = game:GetService("CoreGui")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local expect = JestGlobals.expect
local it = JestGlobals.it
local React = require(VirtualEvents.Parent.React)
local ReactRoblox = require(VirtualEvents.Parent.ReactRoblox)
local withMockProviders = require(VirtualEvents.withMockProviders)
local FacePile = require(script.Parent.FacePile)

local MOCK_USER_IDS = {
	"1343930",
	"1668748746",
	"1893522417",
	"29819622",
	"308199922",
	"35392",
	"4416634",
	"957765952",
}

local root
local container

beforeEach(function()
	container = Instance.new("ScreenGui")
	container.Parent = CoreGui

	root = ReactRoblox.createRoot(container)
end)

afterEach(function()
	root:unmount()
	container:Destroy()
end)

it("should put the client at the front of the list", function()
	local desiredFirstUserId = "957765952"
	local element = withMockProviders({
		FacePile = React.createElement(FacePile, {
			userIds = MOCK_USER_IDS,
			desiredFirstUserId = desiredFirstUserId,
		}),
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	local facePile = container:FindFirstChild("FacePile") :: Frame

	-- Each face is named after the userId which makes it easy to search for the
	-- client's face
	local face = facePile:FindFirstChild(desiredFirstUserId) :: ImageLabel

	expect(face.LayoutOrder).toBe(1)
end)
