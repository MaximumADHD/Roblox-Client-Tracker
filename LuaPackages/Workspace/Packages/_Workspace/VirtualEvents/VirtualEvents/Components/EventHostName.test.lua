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
local EventHostName = require(script.Parent.EventHostName)

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

it("should create EventHostName and not display an emoji", function()
	local element = withMockProviders({
		EventHostName = React.createElement(EventHostName, {
			hostId = 1,
		}),
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	local emojiNameTextLabel = container:FindFirstChild("EmojiName", true)
	local emoji = emojiNameTextLabel:FindFirstChild("Emoji")

	expect(emoji).toEqual(nil)
end)

it("should create EventHostName with hasVerifiedBadge to display an emoji", function()
	local element = withMockProviders({
		EventHostName = React.createElement(EventHostName, {
			hostId = 1,
			hasVerifiedBadge = true,
		}),
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	local emojiNameTextLabel = container:FindFirstChild("EmojiName", true)
	local emoji = emojiNameTextLabel:FindFirstChild("Emoji")

	expect(emoji.ClassName).toEqual("TextLabel")
end)

return {}
