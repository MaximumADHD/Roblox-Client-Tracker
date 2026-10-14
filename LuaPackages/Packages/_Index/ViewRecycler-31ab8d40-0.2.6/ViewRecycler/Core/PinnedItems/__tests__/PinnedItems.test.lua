local Src = script:FindFirstAncestor("ViewRecycler")
local JestGlobals = require(Src.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local DataSource = require(Src.Core.DataSource)
local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local IdentityKind = require(Src.Core.Enums.IdentityKind)
local Layout = require(Src.Core.Layout)
local PinnedPosition = require(Src.Core.Enums.PinnedPosition)
local createPinnedItemPlanner = require(Src.Core.PinnedItems.createPinnedItemPlanner)
local createStickyIndexResolver = require(Src.Core.PinnedItems.StickyIndexResolver)

type Item = { id: string, sticky: boolean? }

local function source(items: { Item })
	return DataSource.sequence(items, function(item)
		return item.id
	end)
end

describe("PinnedItems", function()
	it("resolves sticky indices only after Virtualizer delivers an ordered change", function()
		local dataSource = source({ { id = "a", sticky = true }, { id = "b" } })
		local resolver = createStickyIndexResolver(dataSource, function(item)
			return item.sticky == true
		end)
		expect(resolver.resolve()).toEqual({ 1 })

		dataSource.insert(1, { id = "x" })
		expect(resolver.resolve()).toEqual({ 1 })
		resolver.applyDataSourceChange({
			changes = { { type = DataSourceChangeType.Insert, index = 1, keys = { "x" } } },
			previousItemCount = 2,
			itemCount = 3,
		})
		expect(resolver.resolve()).toEqual({ 2 })
	end)

	it("builds logical-start sticky push-off and accepts current pinned measurements", function()
		local dataSource = source({
			{ id = "header-a", sticky = true },
			{ id = "row" },
			{ id = "header-b", sticky = true },
		})
		local layout = Layout.uniform({ itemLength = 10 })
		local planner = createPinnedItemPlanner(dataSource, {
			isItemStickyHeader = function(item)
				return item.sticky == true
			end,
			pinnedStartItem = {
				key = "$start",
				value = { id = "$start" },
				itemViewType = "pin",
			},
		})
		local function update(offset)
			return planner.update({
				dataSource = dataSource,
				layout = layout,
				scrollOffset = offset,
				viewportLength = 20,
				contentStartOffset = planner.getContentInsets().start,
			})
		end

		local initial = update(15)
		expect(initial.placements["header-a"].mainAxisOffset).toBe(-5)
		expect(initial.additionalAssignments[1].identity).toEqual({
			kind = IdentityKind.Pinned,
			position = PinnedPosition.Start,
			revision = 1,
		})
		expect(planner.updatePinnedMeasurement(PinnedPosition.Start, "$start", 0, 5)).toBeNil()
		expect(planner.updatePinnedMeasurement(PinnedPosition.Start, "$start", 1, 5)).toEqual({ start = 5, finish = 0 })
		expect(update(15).placements["header-a"].mainAxisOffset).toBe(0)

		layout.destroy()
	end)
end)
