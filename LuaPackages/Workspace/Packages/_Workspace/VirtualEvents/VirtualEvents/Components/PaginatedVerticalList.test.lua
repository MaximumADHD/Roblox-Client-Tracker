local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local ReactTestingLibrary = require(VirtualEvents.Parent.Dev.ReactTestingLibrary)
local Rhodium = require(VirtualEvents.Parent.Dev.Rhodium)
local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local PaginatedVerticalList = require(script.Parent.PaginatedVerticalList)

local act = ReactTestingLibrary.act
local render = ReactTestingLibrary.render

local function createMockItems(numItems: number)
	local items = {}
	for i = 1, numItems do
		table.insert(
			items,
			React.createElement("TextLabel", {
				Text = i,
				Size = UDim2.fromOffset(100, 100),
			})
		)
	end
	return items
end

it("should show 3 items when first rendered", function()
	local result = render(withMockProviders({
		PaginatedVerticalList = React.createElement(PaginatedVerticalList, {
			items = createMockItems(6),
		}),
	}))

	expect(result.queryByText("3")).toBeDefined()
	expect(result.queryByText("4")).toBeUndefined()
	expect(result.queryByText("See More")).toBeDefined()
end)

it("should hide the See More button when there are no items to load", function()
	local result = render(withMockProviders({
		PaginatedVerticalList = React.createElement(PaginatedVerticalList, {
			items = createMockItems(2),
			initialItemsShown = 3,
		}),
	}))

	expect(result.queryByText("See More")).toBeUndefined()
end)

it("should show See More if there are more items to load", function()
	local result = render(withMockProviders({
		PaginatedVerticalList = React.createElement(PaginatedVerticalList, {
			items = createMockItems(4),
			initialItemsShown = 3,
		}),
	}))

	expect(result.queryByText("See More")).toBeDefined()
end)

it("should show 5 more items when clicking See More", function()
	local result = render(withMockProviders({
		PaginatedVerticalList = React.createElement(PaginatedVerticalList, {
			items = createMockItems(9),
			initialItemsShown = 3,
		}),
	}))

	local seeMore = result.getByText("See More")

	expect(result.queryByText("4")).toBeUndefined()

	act(function()
		Rhodium.Element.new(seeMore):click()
	end)

	expect(result.queryByText("8")).toBeDefined()
	expect(result.queryByText("9")).toBeNil()
end)

it("should trigger onSeeMore when clicking See More", function()
	local onSeeMore = jest.fn()

	local result = render(withMockProviders({
		PaginatedVerticalList = React.createElement(PaginatedVerticalList, {
			items = createMockItems(6),
			initialItemsShown = 3,
			onSeeMore = onSeeMore,
		}),
	}))

	local seeMore = result.getByText("See More")

	act(function()
		Rhodium.Element.new(seeMore):click()
	end)

	expect(onSeeMore).toHaveBeenCalled()
	expect(result.queryByText("6")).toBeDefined()
end)

it("should trigger onSeeMore when tapping See More", function()
	local onSeeMore = jest.fn()

	local result = render(withMockProviders({
		PaginatedVerticalList = React.createElement(PaginatedVerticalList, {
			items = createMockItems(6),
			initialItemsShown = 3,
			onSeeMore = onSeeMore,
		}),
	}))

	local seeMore = result.getByText("See More")

	act(function()
		Rhodium.Element.new(seeMore):tap()
		task.wait()
	end)

	expect(onSeeMore).toHaveBeenCalled()
	expect(result.queryByText("6")).toBeDefined()
end)
