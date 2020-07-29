local GridRoot = script.Parent
local AppRoot = GridRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent
local UIBloxConfig = require(UIBloxRoot.UIBloxConfig)

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)

local GridView = require(GridRoot.GridView)

-- Used to snapshot grid items for updating unit tests.
-- luacheck: ignore unused function snapshotGridItems
local function snapshotGridItems(grid)
	local records = {}
	for _, child in ipairs(grid:GetChildren()) do
		table.insert(records, {
			item = child.Content.Text,
			relativePosition = child.AbsolutePosition - grid.AbsolutePosition,
		})
	end

	table.sort(records, function(a, b)
		return tonumber(a.item) < tonumber(b.item)
	end)

	local buffer = { "{\n" }
	for _, record in ipairs(records) do
		table.insert(buffer, "\t{ relativePosition = Vector2.new(")
		table.insert(buffer, record.relativePosition.X)
		table.insert(buffer, ", ")
		table.insert(buffer, record.relativePosition.Y)
		table.insert(buffer, "), content = \"")
		table.insert(buffer, record.item)
		table.insert(buffer, "\" },\n")
	end
	table.insert(buffer, "}")
	print(table.concat(buffer, ""))
end

local function validateSnapshot(grid, snapshot)
	local textToItemMap = {}
	-- Grid views don't guarantee that child names are stable in any way,
	-- particularly with windowing - the name of a grid item does not
	-- reflect the index of the list item it was created for.
	for _, child in ipairs(grid:GetChildren()) do
		textToItemMap[child.Content.Text] = child
	end

	assert(#snapshot == #grid:GetChildren(),
		("wrong number of children: %d present in grid, but %d in snapshot"):format(
			#grid:GetChildren(),
			#snapshot
		)
	)

	for _, record in ipairs(snapshot) do
		local item = textToItemMap[record.content]
		local relativePosition = item.AbsolutePosition - grid.AbsolutePosition
		assert(relativePosition.X == record.relativePosition.X and relativePosition.Y == record.relativePosition.Y,
			("item %s: relative positions did not match: {%g, %g} ~= {%g, %g}"):format(
				record.content,
				relativePosition.X,
				relativePosition.Y,
				record.relativePosition.X,
				record.relativePosition.Y
			)
		)
	end
end

return function()
	HACK_NO_XPCALL()

	it("should lay items out sequentially", function()
		-- This is a fairly unidiomatic test to verify that the grid view lays
		-- out items correctly. It tears apart the rendered Roact tree, using
		-- knowledge of GridView's internals, and determines if the grid items'
		-- positions match what they should be. The values used in this test are
		-- designed to test several edge cases of the grid view layout system.
		local expectedRelativePositions = {
			Vector2.new(0, 0),
			Vector2.new(112, 0),
			Vector2.new(224, 0),
			-- The fourth item is expected to wrap because it can't completely
			-- fit in the empty space on the first row after the third item.
			Vector2.new(0, 112),
		}

		local tree = Roact.createElement("Frame", {
			Size = UDim2.new(0, 350, 0, 200),
		}, {
			Grid = Roact.createElement(GridView, {
				renderItem = function(i)
					return Roact.createElement("TextLabel", {
						Text = i,
					})
				end,
				items = { 1, 2, 3, 4 },
				itemPadding = Vector2.new(12, 12),
				itemSize = Vector2.new(100, 100),
			}),
		})

		local container = Instance.new("ScreenGui")
		local handle = Roact.mount(tree, container, "GridTest")
		local grid = container.GridTest.Grid

		-- Grids expand to fill their parent on the X axis, and expand to fit
		-- the total number of items in the grid on the Y axis.
		expect(grid.AbsoluteSize.X).to.equal(350)
		expect(grid.AbsoluteSize.Y).to.equal(212)

		local textToItemMap = {}
		-- Grid views don't guarantee that child names are stable in any way,
		-- particularly with windowing - the name of a grid item does not
		-- reflect the index of the list item it was created for.
		for _, child in ipairs(grid:GetChildren()) do
			textToItemMap[child.Content.Text] = child
		end

		for itemValue, expectedRelativePosition in ipairs(expectedRelativePositions) do
			local item = textToItemMap[tostring(itemValue)]
			assert(item ~= nil, "couldn't find item for index " .. itemValue)

			local relativePosition = item.AbsolutePosition - grid.AbsolutePosition
			expect(relativePosition.X).to.equal(expectedRelativePosition.X)
			expect(relativePosition.Y).to.equal(expectedRelativePosition.Y)
		end

		-- Grids don't use a layout object, so this check will work for ensuring
		-- that all the items were rendered.
		expect(#grid:GetChildren()).to.equal(#expectedRelativePositions)
		Roact.unmount(handle)
	end)

	it("should window items if windowHeight is specified", function()
		local itemCount = 100
		local items = {}
		for i = 1, itemCount do
			table.insert(items, i)
		end

		local tree = Roact.createElement("Frame", {
			Size = UDim2.new(0, 100, 0, (itemCount / 4) * 25),
		}, {
			Grid = Roact.createElement(GridView, {
				renderItem = function(i)
					return Roact.createElement("TextLabel", {
						Text = i,
					})
				end,
				items = items,
				itemPadding = Vector2.new(7, 7),
				itemSize = Vector2.new(46, 38),
				windowHeight = 127,
			}),
		})

		local container = Instance.new("ScreenGui")
		local handle = Roact.mount(tree, container, "GridTest")
		local grid = container.GridTest.Grid

		-- Grids expand to fill their parent on the X axis, and expand to fit
		-- the total number of items in the grid on the Y axis. When windowing,
		-- they will still size themselves to fit _all_ the grids, even if
		-- they're not all rendered!
		expect(grid.AbsoluteSize.X).to.equal(100)

		local initialSnapshot = {
			{ relativePosition = Vector2.new(0, 0), content = "1" },
			{ relativePosition = Vector2.new(53, 0), content = "2" },
			{ relativePosition = Vector2.new(0, 45), content = "3" },
			{ relativePosition = Vector2.new(53, 45), content = "4" },
			{ relativePosition = Vector2.new(0, 90), content = "5" },
			{ relativePosition = Vector2.new(53, 90), content = "6" },
			{ relativePosition = Vector2.new(0, 135), content = "7" },
			{ relativePosition = Vector2.new(53, 135), content = "8" },
		}

		if UIBloxConfig.enableExperimentalGamepadSupport then
			initialSnapshot = Cryo.List.join(initialSnapshot, {
				{ relativePosition = Vector2.new(0, 180), content = "9" },
				{ relativePosition = Vector2.new(53, 180), content = "10" },
			})
		end

		-- snapshotGridItems(grid)
		validateSnapshot(grid, initialSnapshot)

		-- If we move the grid, it will relayout itself and render a different
		-- set of items.
		grid.Position = UDim2.new(0, 0, 0, -250)
		-- Dummy read necessary to force the windowing to update. In the test
		-- scenario that we have, absolute position will not update until the
		-- property is read somewhere in the tree.
		local _ = grid.AbsolutePosition

		local afterMoveSnapshot = {
			{ relativePosition = Vector2.new(0, 225), content = "11" },
			{ relativePosition = Vector2.new(53, 225), content = "12" },
			{ relativePosition = Vector2.new(0, 270), content = "13" },
			{ relativePosition = Vector2.new(53, 270), content = "14" },
			{ relativePosition = Vector2.new(0, 315), content = "15" },
			{ relativePosition = Vector2.new(53, 315), content = "16" },
			{ relativePosition = Vector2.new(0, 360), content = "17" },
			{ relativePosition = Vector2.new(53, 360), content = "18" },
		}

		if UIBloxConfig.enableExperimentalGamepadSupport then
			afterMoveSnapshot = Cryo.List.join(afterMoveSnapshot, {
				{ relativePosition = Vector2.new(0, 405), content = "19" },
				{ relativePosition = Vector2.new(53, 405), content = "20" },
			})
		end

		wait()

		-- snapshotGridItems(grid)
		validateSnapshot(grid, afterMoveSnapshot)

		Roact.unmount(handle)
	end)
end