local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local Components = script.Parent.Parent.Parent.Components
local ActionBindingsChart = require(Components.ActionBindings.ActionBindingsChart)
local UtilAndTab = require(Components.UtilAndTab)

local Actions = script.Parent.Parent.Parent.Actions
local ActionBindingsUpdateSearchFilter = require(Actions.ActionBindingsUpdateSearchFilter)

local Constants = require(script.Parent.Parent.Parent.Constants)
local PADDING = Constants.GeneralFormatting.MainRowPadding

local MainViewActionBindings = Roact.Component:extend("MainViewActionBindings")

function MainViewActionBindings:init()
	self.onUtilTabHeightChanged = function(utilTabHeight)
		self:setState({
			utilTabHeight = utilTabHeight,
		})
	end

	self.onSearchTermChanged = function(newSearchTerm)
		self.props.dispatchActionBindingsUpdateSearchFilter(newSearchTerm, {})
	end

	self.utilRef = Roact.createRef()

	self.state = {
		utilTabHeight = 0,
	}
end

function MainViewActionBindings:didMount()
	local utilSize = self.utilRef.current.Size
	self:setState({
		utilTabHeight = utilSize.Y.Offset,
	})
end

function MainViewActionBindings:didUpdate()
	local utilSize = self.utilRef.current.Size
	if utilSize.Y.Offset ~= self.state.utilTabHeight then
		self:setState({
			utilTabHeight = utilSize.Y.Offset,
		})
	end
end

function MainViewActionBindings:render()
	local size = self.props.size
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList
	local searchTerm = self.props.bindingsSearchTerm

	local utilTabHeight = self.state.utilTabHeight

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
			searchTerm = searchTerm,
			layoutOrder = 1,

			refForParent = self.utilRef,

			onHeightChanged = self.onUtilTabHeightChanged,
			onSearchTermChanged = self.onSearchTermChanged,
		}),

		ActionBindings = utilTabHeight > 0 and Roact.createElement(ActionBindingsChart, {
			size = UDim2.new(1, 0, 1, -utilTabHeight),
			searchTerm = searchTerm,
			layoutOrder = 2,
		}),
	})
end

local function mapStateToProps(state, props)
	return {
		bindingsSearchTerm = state.ActionBindingsData.bindingsSearchTerm,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchActionBindingsUpdateSearchFilter = function(searchTerm, filters)
			dispatch(ActionBindingsUpdateSearchFilter(searchTerm, filters))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MainViewActionBindings)
