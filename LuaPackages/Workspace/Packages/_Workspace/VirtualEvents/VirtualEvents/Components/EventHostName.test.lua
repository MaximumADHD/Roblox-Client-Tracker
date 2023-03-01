local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local ReactTestingLibrary = require(VirtualEvents.Parent.Dev.ReactTestingLibrary)
local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local withMockProviders = require(VirtualEvents.withMockProviders)
local types = require(VirtualEvents.types)
local EventHostName = require(script.Parent.EventHostName)

local render = ReactTestingLibrary.render
local EmojiEnum = UIBlox.App.Emoji.Enum.Emoji

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

	local result = render(element)

	local _, name = result.findByText(mockHost.hostName):await()
	expect(name).toBeDefined()
	expect(result.queryByText(EmojiEnum.Verified)).toBeNil()
end)

describe("Verified Badge", function()
	it("should render the Verified Badge if hasVerifiedBadge is true", function()
		local element = withMockProviders({
			EventHostName = React.createElement(EventHostName, {
				host = mockHostWithBadge,
			}),
		})

		local result = render(element)
		local _, emoji = result.findByText(EmojiEnum.Verified):await()

		expect(emoji).toBeDefined()
	end)

	it("should render nothing is hasVerifiedBadge is false", function()
		local element = withMockProviders({
			EventHostName = React.createElement(EventHostName, {
				host = mockHost,
			}),
		})

		local result = render(element)

		expect(result.queryByText(EmojiEnum.Verified)).toBeNil()
	end)
end)

return {}
