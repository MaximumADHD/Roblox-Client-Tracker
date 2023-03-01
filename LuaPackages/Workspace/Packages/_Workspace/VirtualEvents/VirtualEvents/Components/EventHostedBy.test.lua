local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local ReactTestingLibrary = require(VirtualEvents.Parent.Dev.ReactTestingLibrary)
local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventHostedBy = require(script.Parent.EventHostedBy)

local render = ReactTestingLibrary.render
local EmojiEnum = UIBlox.App.Emoji.Enum.Emoji

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

	local result = render(element)

	expect(result.queryByText(EmojiEnum.Verified)).toBeNil()
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

	local result = render(element)
	local _, emoji = result.findByText(EmojiEnum.Verified):await()

	expect(emoji).toBeDefined()
end)

return {}
