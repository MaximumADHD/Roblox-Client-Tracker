return function()
	local FFlagDevFrameworkResponsiveGrid2 = game:GetFastFlag("DevFrameworkResponsiveGrid2")
	if not FFlagDevFrameworkResponsiveGrid2 then
		return
	end

	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)

	local Util = require(Framework.Util)
	local TestHelpers = require(Framework.TestHelpers)
	local Math = Util.Math

	local Dash = require(Framework.packages.Dash)
	local join = Dash.join

	local ResponsiveGrid = require(script.Parent)

	local DEFAULT_PROPS = {
		CutOffs = {
			{
				MinWidth = 0,
				ColumnCount = 1,
			},
			{
				MinWidth = 100,
				ColumnCount = 5,
			},
		},
		ItemHeight = UDim.new(0, 10),
	}

	local function createResponsiveGrid(props)
		props = join(DEFAULT_PROPS, props)

		return TestHelpers.provideMockContext(nil, {
			ExpandablePane = Roact.createElement(ResponsiveGrid, props),
		})
	end

	it("should create and destroy without errors", function()
		local element = createResponsiveGrid()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should show the correct larger column count", function()
		local expectedColumnCount = 2
		local element = createResponsiveGrid({
			CutOffs = {
				{
					MinWidth = 0,
					ColumnCount = expectedColumnCount,
				},
				{
					MinWidth = 100,
					ColumnCount = 5,
				},
			},
			Size = UDim2.new(0, 50, 0, 0)
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)
		local uiGridLayout = container:FindFirstChild("UIGridLayout", true)
		local cellSize = uiGridLayout.CellSize

		expect(cellSize.X.Scale).to.equal(1/expectedColumnCount)

		Roact.unmount(instance)
	end)

	it("should show the correct smaller column count", function()
		local expectedColumnCount = 5
		local element = createResponsiveGrid({
			CutOffs = {
				{
					MinWidth = 0,
					ColumnCount = 1,
				},
				{
					MinWidth = 100,
					ColumnCount = expectedColumnCount,
				},
			},
			Size = UDim2.new(0, 150, 0, 0)
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)
		local uiGridLayout = container:FindFirstChild("UIGridLayout", true)
		local cellSize = uiGridLayout.CellSize

		local cellXScale = Math.round(cellSize.X.Scale, 2)
		expect(cellXScale).to.equal(1/expectedColumnCount)

		Roact.unmount(instance)
	end)
end