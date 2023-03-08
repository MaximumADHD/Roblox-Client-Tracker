local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local ReactTestingLibrary = require(VirtualEvents.Parent.Dev.ReactTestingLibrary)
local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventsGridLayout = require(script.Parent.EventsGridLayout)

local render = ReactTestingLibrary.render

local function createMockItems(numItems: number)
	local items = {}
	for i = 1, numItems do
		items[i] = React.createElement("TextLabel", {
			Text = i,
			Size = UDim2.fromOffset(100, 100),
		})
	end
	return items
end

it("should show the right number of items when first rendered", function()
	local result = render(withMockProviders({
		EventsGridLayout = React.createElement(EventsGridLayout, {
			items = createMockItems(4),
			numItemsShown = 3,
		}),
	}))
	expect(result.queryByText("1")).toBeDefined()
	expect(result.queryByText("2")).toBeDefined()
	expect(result.queryByText("3")).toBeDefined()
	expect(result.queryByText("4")).toBeUndefined()
end)

it("should show the second row below the first", function()
	local result = render(withMockProviders({
		EventsGridLayout = React.createElement(EventsGridLayout, {
			items = createMockItems(4),
			numItemsShown = 3,
		}),
	}))
	local firstRowPosition = result.queryByText("1").AbsolutePosition
	local secondRowPoisition = result.queryByText("3").AbsolutePosition
	expect(firstRowPosition.Y < secondRowPoisition.Y).toBe(true)
end)
