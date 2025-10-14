local main = script:FindFirstAncestor("MaterialFramework")
local Packages = main.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)

local it = JestGlobals.it

local mockContext = require(main.TestHelpers.mockContext)

local ViewTypeSelector = require(main.Components.ViewTypeSelector)
local ViewType = require(main.Enums.ViewType)

local DEFAULT_GRID_SIZE = 100
local DEFAULT_VIEW_TYPE = ViewType.Grid

local function createTestElement(props: {}?)
	local ViewTypeSelectorProps: ViewTypeSelector.Props = Dash.join({
		OnGridSizeChanged = function(size) end,
		OnViewTypeSelected = function(viewType) end,
		ViewType = DEFAULT_VIEW_TYPE,
		GridSize = DEFAULT_GRID_SIZE,
	}, props or {})

	return mockContext({
		ViewTypeSelector = React.createElement(ViewTypeSelector, ViewTypeSelectorProps),
	})
end

it("should render correctly", function()
	local container = Instance.new("Folder")
	local element = createTestElement({})

	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)
end)
