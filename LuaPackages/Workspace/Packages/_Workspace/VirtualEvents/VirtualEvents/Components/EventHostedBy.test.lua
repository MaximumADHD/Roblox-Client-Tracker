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
local EventHostedBy = require(script.Parent.EventHostedBy)

local container
local root

beforeEach(function()
	container = Instance.new("ScreenGui")
	container.Parent = CoreGui

	root = ReactRoblox.createRoot(container)
end)

afterEach(function()
	root:unmount()
	container:Destroy()
end)

it("should create EventHostedBy and emoji should be nil", function()
	local element = withMockProviders({
		EventHostedBy = React.createElement(EventHostedBy, {
			host = {
				hostType = "user",
				hostId = 1,
				hostName = "Roblox",
				hasVerifiedBadge = false,
			},
			size = UDim2.new(1, 0, 0, 56),
		}),
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	local userImageLabel = container:FindFirstChild("UserImage", true)
	local emojiNameTextLabel = container:FindFirstChild("EmojiName", true)
	local emoji = emojiNameTextLabel:FindFirstChild("Emoji")

	expect(userImageLabel).toBeDefined()
	expect(emoji).toBeNil()
end)

it("should create EventHostedBy and expect an emoji", function()
	local element = withMockProviders({
		EventHostedBy = React.createElement(EventHostedBy, {
			host = {
				hostType = "user",
				hostId = 1,
				hostName = "Roblox",
				hasVerifiedBadge = true,
			},
			size = UDim2.new(1, 0, 0, 56),
		}),
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	local userImageLabel = container:FindFirstChild("UserImage", true)
	local emojiNameTextLabel = container:FindFirstChild("EmojiName", true)
	local emoji = emojiNameTextLabel:FindFirstChild("Emoji")

	expect(userImageLabel).toBeDefined()
	expect(emoji).toBeDefined()
end)

return {}
