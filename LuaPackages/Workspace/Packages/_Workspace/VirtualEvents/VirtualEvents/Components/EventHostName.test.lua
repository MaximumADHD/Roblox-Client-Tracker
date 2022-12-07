local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local CoreGui = game:GetService("CoreGui")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local React = require(VirtualEvents.Parent.React)
local ReactRoblox = require(VirtualEvents.Parent.ReactRoblox)
local withMockProviders = require(VirtualEvents.withMockProviders)
local types = require(VirtualEvents.types)
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

local mockHost = {
	hostId = 1,
	hostName = "Roblox",
	hostType = "user",
	hasVerifiedBadge = false,
} :: types.Host

local mockHostWithBadge = {
	hostId = 2,
	hostName = "OnlyTwentyCharacters",
	hostType = "user",
	hasVerifiedBadge = true,
} :: types.Host

it("should display the host's name", function()
	local element = withMockProviders({
		EventHostName = React.createElement(EventHostName, {
			host = mockHost,
		}),
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	local emojiNameTextLabel = container:FindFirstChild("EmojiName", true) :: TextLabel
	expect(emojiNameTextLabel).toBeDefined()
	expect(emojiNameTextLabel.Text).toBe(mockHost.hostName)

	local emoji = emojiNameTextLabel:FindFirstChild("Emoji")
	expect(emoji).toBeNil()
end)

describe("Verified Badge", function()
	it("should render the Verified Badge if hasVerifiedBadge is true", function()
		local element = withMockProviders({
			EventHostName = React.createElement(EventHostName, {
				host = mockHostWithBadge,
			}),
		})

		ReactRoblox.act(function()
			root:render(element)
		end)

		local emojiNameTextLabel = container:FindFirstChild("EmojiName", true)
		local emoji = emojiNameTextLabel:FindFirstChild("Emoji")
		expect(emoji).toBeDefined()
	end)

	it("should render nothing is hasVerifiedBadge is false", function()
		local element = withMockProviders({
			EventHostName = React.createElement(EventHostName, {
				host = mockHost,
			}),
		})

		ReactRoblox.act(function()
			root:render(element)
		end)

		local emojiNameTextLabel = container:FindFirstChild("EmojiName", true)
		local emoji = emojiNameTextLabel:FindFirstChild("Emoji")
		expect(emoji).toBeNil()
	end)
end)

return {}
