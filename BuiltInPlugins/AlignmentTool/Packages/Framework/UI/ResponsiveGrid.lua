--[[
	A grid of flexible-wdith items that changes column count depending on the grid's width.

	Required Props:
		table CutOffs: Table of ResponsiveGridCutOff objects (MinWidth and ColumnCount) to update the grid cells with.
		UDim ItemHeight: The height of each grid item.

	Optional Props:
		table ForwardRef: An optional ref to pass to the underlying Frame.
		Enum.AutomaticSize AutomaticSize: The AutomaticSize of the component.
		Enum.HorizontalAlignment HorizontalAlignment: The HorizontalAlignment of the component.
		integer LayoutOrder: The order this component will display in a UILayout.
		UDim2 Position: The position of the scrolling frame.
		UDim2 Size: The size of the scrolling frame.
		Enum.SortOrder SortOrder: The SortOrder of the component.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
]]
local FFlagDevFrameworkForwardRef = game:GetFastFlag("DevFrameworkForwardRef")
local FFlagDevFrameworkResponsiveGrid2 = game:GetFastFlag("DevFrameworkResponsiveGrid2")

local Framework = script.Parent.Parent

local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Util = require(Framework.Util)
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local Typecheck = Util.Typecheck

local withForwardRef = require(Framework.Wrappers.withForwardRef)

local Dash = require(Framework.packages.Dash)
local join = Dash.join

type ResponsiveGridCutOff = {
    MinWidth: number,
    ColumnCount: number,
};

local ResponsiveGrid = Roact.PureComponent:extend("ResponsiveGrid")
Typecheck.wrap(ResponsiveGrid, script)

ResponsiveGrid.defaultProps = {
	HorizontalAlignment = Enum.HorizontalAlignment.Left,
	ItemHeight = UDim.new(0, 0),
	Size = UDim2.new(1, 0, 0, 0),
	SortOrder = Enum.SortOrder.LayoutOrder,
}

function ResponsiveGrid:init()
	assert(FFlagDevFrameworkResponsiveGrid2, "ResponsiveGrid requires FFlagDevFrameworkResponsiveGrid2")
	assert(THEME_REFACTOR, "ResponsiveGrid not supported in Theme1, please upgrade your plugin to Theme2")

	local props = self.props
	self.ref = (if FFlagDevFrameworkForwardRef then props.ForwardRef else props[Roact.Ref]) or Roact.createRef()
	self.sortedCutOffList = {}

	self.state = {
		currentCutOffKey = nil,
	}

	self.initializeCutOffs = function()
		-- Sort cutoffs
		local cutOffs = self.props.CutOffs
		self.sortedCutOffList = {}

		local keys = {}
		for key, _ in pairs(cutOffs) do
			table.insert(keys, key)
		end
		table.sort(keys, function(keyLhs, keyRhs) return cutOffs[keyLhs].MinWidth < cutOffs[keyRhs].MinWidth end)

		for _,k in pairs(keys) do
			local cutOff: ResponsiveGridCutOff = cutOffs[k]
			table.insert(self.sortedCutOffList, cutOff)
		end

		-- Set intial cutOff
		self:setState(function(prevState)
			local newCurrentCutOffKey = 1
			local currentCutOffKey = 1

			local ref = self.ref and self.ref.current
			local width = ref.AbsoluteSize.X

			for k,v in pairs(self.sortedCutOffList) do
				local cutOffData: ResponsiveGridCutOff = self.sortedCutOffList[k]
				local isCurrentBigger = cutOffData.MinWidth > self.sortedCutOffList[currentCutOffKey].MinWidth
				local isPrevTooBig = self.sortedCutOffList[currentCutOffKey].MinWidth > width
				if (isCurrentBigger or isPrevTooBig) and cutOffData.MinWidth <= width then
					newCurrentCutOffKey = k
				end
			end

			return {
				currentCutOffKey = newCurrentCutOffKey
			}
		end)
	end

	self.updateCurrentCutOff = function()
		self:setState(function(prevState)
			local currentCutOffKey = prevState.currentCutOffKey
			local ref = self.ref.current
			if not currentCutOffKey or not ref then
				return
			end
			local currentCutOff: ResponsiveGridCutOff = self.sortedCutOffList[currentCutOffKey]

			local nextCutOffWidth: ResponsiveGridCutOff?
			if currentCutOffKey + 1 <= #self.sortedCutOffList then
				nextCutOffWidth = self.sortedCutOffList[currentCutOffKey + 1]
			end
			local prevCutOffWidth: ResponsiveGridCutOff?
			if currentCutOffKey > 1 then
				prevCutOffWidth = self.sortedCutOffList[currentCutOffKey - 1]
			end

			local width = ref.AbsoluteSize.X
			local usePrevCutOff = prevCutOffWidth and prevCutOffWidth.MinWidth <= width and currentCutOff.MinWidth > width
			local useNextCutOff = nextCutOffWidth and nextCutOffWidth.MinWidth < width

			if usePrevCutOff then
				return {
					currentCutOffKey = currentCutOffKey - 1
				}
			elseif useNextCutOff then
				return {
					currentCutOffKey = currentCutOffKey + 1
				}
			else
				return
			end
		end)
	end
end

function ResponsiveGrid:didMount()
	self.initializeCutOffs()
end

function ResponsiveGrid:didUpdate(prevProps, _)
	local props = self.props
	if prevProps.CutOffs ~= props.CutOffs then
		self.initializeCutOffs()
	end
end

function ResponsiveGrid:render()
	local props = self.props
	local state = self.state
	local style = props.Stylizer

	local automaticSize = props.AutomaticSize
	local horizontalAlignment = props.HorizontalAlignment
	local itemHeight = props.ItemHeight
	local position = props.Position
	local size = props.Size
	local sortOrder = props.SortOrder

	local currentCutOffKey = state.currentCutOffKey

	local spacing = style.Spacing or 0

	local cellSize
	if currentCutOffKey then
		local currentCutOff = self.sortedCutOffList[currentCutOffKey]
		-- We must adjust how many pixels to decrease the cell-size, so that we can fill the entire space without 
		-- being pushed to the next row. This is necessary because we use scale for cell-size and pixels for spacing-size.
		local adjustmentDueToSpacing = math.ceil(spacing/currentCutOff.ColumnCount*(currentCutOff.ColumnCount-1))
		cellSize = UDim2.new(UDim.new(1/currentCutOff.ColumnCount, -adjustmentDueToSpacing), itemHeight)
	else
		cellSize = UDim2.new(UDim.new(1, -spacing), itemHeight)
	end

	local gridItems = join({
		UIGridLayout = Roact.createElement("UIGridLayout", {
			CellPadding = UDim2.new(0, spacing, 0, spacing),
			CellSize = cellSize,
			HorizontalAlignment = horizontalAlignment,
			SortOrder = sortOrder,
		})
	}, self.props[Roact.Children])

	return Roact.createElement("Frame", {
		AutomaticSize = automaticSize,
		BackgroundTransparency = 1,
		Position = position,
		Size = size,
		[Roact.Change.AbsoluteSize] = self.updateCurrentCutOff,
		[Roact.Ref] = self.ref,
	},
		gridItems
	)
end

ResponsiveGrid = withContext({
	Stylizer = ContextServices.Stylizer,
})(ResponsiveGrid)

return if FFlagDevFrameworkForwardRef then withForwardRef(ResponsiveGrid) else ResponsiveGrid
