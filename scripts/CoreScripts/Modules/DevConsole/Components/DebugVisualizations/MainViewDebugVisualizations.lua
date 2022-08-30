local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent.Parent.Components
local DebugVisualizationsChart = require(Components.DebugVisualizations.DebugVisualizationsChart)
local UtilAndTab = require(Components.UtilAndTab)

local Actions = script.Parent.Parent.Parent.Actions
local DebugVisualizationsUpdateSearchFilter = require(Actions.DebugVisualizationsUpdateSearchFilter)

local Constants = require(script.Parent.Parent.Parent.Constants)
local PADDING = Constants.GeneralFormatting.MainRowPadding

local FILTER_NAMES = {
	"Performance",
	"Behavior",
	"Constraints",
	"Forces",
	"Networking",
	"Collision",
}

local MainViewDebugVisualizations = Roact.Component:extend("MainViewDebugVisualizations")

function MainViewDebugVisualizations:init()
	self.onUtilTabHeightChanged = function(utilTabHeight)
		self:setState({
			utilTabHeight = utilTabHeight
		})
	end

	self.onCheckBoxChanged = function(field, newState)
		local update = {}
		update[field] = newState
		self.props.dispatchDebugVisualizationsUpdateSearchFilter(nil, update)
	end

	self.onSearchTermChanged = function(newSearchTerm)
		self.props.dispatchDebugVisualizationsUpdateSearchFilter(newSearchTerm, {})
	end

	self.utilRef = Roact.createRef()

	self.state = {
		utilTabHeight = 0
	}
end

function MainViewDebugVisualizations:didMount()
	local utilSize = self.utilRef.current.Size
	self:setState({
		utilTabHeight = utilSize.Y.Offset
	})
end

function MainViewDebugVisualizations:didUpdate()
	local utilSize = self.utilRef.current.Size
	if utilSize.Y.Offset ~= self.state.utilTabHeight then
		self:setState({
			utilTabHeight = utilSize.Y.Offset
		})
	end
end

function MainViewDebugVisualizations:render()
	local size = self.props.size
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList
	local searchTerm = self.props.debugVisualizationsSearchTerm
	local typeFilters = self.props.debugVisualizationsTypeFilters

	local utilTabHeight = self.state.utilTabHeight

	local initBoxState = {}
	for i, name in ipairs(FILTER_NAMES) do
		local boxState = typeFilters[name]
		if boxState == nil then
			boxState = false
		end
		initBoxState[i] = {
			name = name,
			state =  boxState,
		}
	end

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
		LayoutOrder = 3,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		UtilAndTab = Roact.createElement(UtilAndTab, {
			windowWidth = size.X.Offset,
			formFactor = formFactor,
			tabList = tabList,
			orderedCheckBoxState = initBoxState,
			searchTerm = searchTerm,
			layoutOrder = 1,
			refForParent = self.utilRef,

			onHeightChanged = self.onUtilTabHeightChanged,
			onCheckBoxChanged = self.onCheckBoxChanged,
			onSearchTermChanged = self.onSearchTermChanged,
		}),

		DebugVisualizations = utilTabHeight > 0  and Roact.createElement(DebugVisualizationsChart, {
			size = UDim2.new(1, 0, 1, -utilTabHeight),
			searchTerm = searchTerm,
			typeFilters = typeFilters,
			layoutOrder = 2,
		}),
	})
end

local function mapStateToProps(state, props)
	return {
		debugVisualizationsSearchTerm = state.DebugVisualizationsData.debugVisualizationsSearchTerm,
		debugVisualizationsTypeFilters = state.DebugVisualizationsData.debugVisualizationsTypeFilters,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchDebugVisualizationsUpdateSearchFilter = function(searchTerm, filters)
			dispatch(DebugVisualizationsUpdateSearchFilter(searchTerm, filters))
		end
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MainViewDebugVisualizations)
