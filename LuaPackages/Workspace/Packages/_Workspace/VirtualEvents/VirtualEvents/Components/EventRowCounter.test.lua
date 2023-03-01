local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local ReactTestingLibrary = require(VirtualEvents.Parent.Dev.ReactTestingLibrary)
local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventRowCounter = require(script.Parent.EventRowCounter)

local render = ReactTestingLibrary.render

it("should only render the counter when it is non-zero", function()
	local element = withMockProviders({
		EventRowCounter1 = React.createElement(EventRowCounter, {
			icon = "",
			counter = 0,
		}),

		EventRowCounter2 = React.createElement(EventRowCounter, {
			icon = "",
			counter = 1000,
		}),
	})

	local result = render(element)

	expect(#result.container:GetChildren()).toBe(1)
end)
