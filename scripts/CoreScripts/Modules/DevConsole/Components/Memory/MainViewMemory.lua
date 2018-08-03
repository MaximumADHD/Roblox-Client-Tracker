local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent.Parent.Components
local ClientMemory = require(Components.Memory.ClientMemory)
local ServerMemory = require(Components.Memory.ServerMemory)
local UtilAndTab = require(Components.UtilAndTab)

local Actions = script.Parent.Parent.Parent.Actions
local ClientMemoryUpdateSearchFilter = require(Actions.ClientMemoryUpdateSearchFilter)
local ServerMemoryUpdateSearchFilter = require(Actions.ServerMemoryUpdateSearchFilter)

local Constants = require(script.Parent.Parent.Parent.Constants)
local MAIN_ROW_PADDING = Constants.GeneralFormatting.MainRowPadding

local MainViewMemory = Roact.Component:extend("MainViewMemory")

function MainViewMemory:init()
	self.onUtilTabHeightChanged = function(utilTabHeight)
		self:setState({
			utilTabHeight = utilTabHeight
		})
	end

	self.onClientButton = function()
		self:setState({isClientView = true})
	end

	self.onServerButton = function()
		self:setState({isClientView = false})
	end

	self.onSearchTermChanged = function(newSearchTerm)
		if self.state.isClientView then
			self.props.dispatchClientMemoryUpdateSearchFilter(newSearchTerm, {})
		else
			self.props.dispatchServerMemoryUpdateSearchFilter(newSearchTerm, {})
		end
	end

	self.utilRef = Roact.createRef()

	self.state = {
		utilTabHeight = 0,
		isClientView = true,
	}
end

function MainViewMemory:didMount()
	local utilSize = self.utilRef.current.Size
	self:setState({
		utilTabHeight = utilSize.Y.Offset,
	})
end

function MainViewMemory:didUpdate()
	local utilSize = self.utilRef.current.Size
	local height = utilSize.Y.Offset

	if height ~= self.state.utilTabHeight then
		self:setState({
			utilTabHeight = height,
		})
	end
end

function MainViewMemory:render()
	local elements = {}
	local size = self.props.size
	local isdeveloperView = self.props.isdeveloperView
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList

	local utilTabHeight = self.state.utilTabHeight
	local isClientView = self.state.isClientView
	local searchTerm = isClientView and self.props.clientSearchTerm or self.props.serverSearchTerm

	elements["UIListLayout"] = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, MAIN_ROW_PADDING),
	})

	elements ["UtilAndTab"] = Roact.createElement(UtilAndTab, {
		windowWidth = size.X.Offset,
		formFactor = formFactor,
		tabList = tabList,
		isClientView = isClientView,
		searchTerm = searchTerm,
		layoutOrder = 1,

		refForParent = self.utilRef,

		onHeightChanged = self.onUtilTabHeightChanged,
		onClientButton = isdeveloperView and self.onClientButton,
		onServerButton = isdeveloperView and self.onServerButton,
		onSearchTermChanged = self.onSearchTermChanged,
	})


	if utilTabHeight > 0 then
		if isClientView then
			elements["ClientMemory"] = Roact.createElement(ClientMemory, {
				size = UDim2.new(1, 0, 1, -utilTabHeight),
				searchTerm = searchTerm,
				layoutOrder = 2,
			})
		else
			elements["ServerMemory"] = Roact.createElement(ServerMemory, {
				size = UDim2.new(1, 0, 1, -utilTabHeight),
				searchTerm = searchTerm,
				layoutOrder = 2,
			})
		end
	end

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
		LayoutOrder = 3,
	}, elements)
end

local function mapStateToProps(state, props)
	return {
		clientSearchTerm = state.MemoryData.clientSearchTerm,
		clientTypeFilters = state.MemoryData.clientTypeFilters,
		serverSearchTerm = state.MemoryData.serverSearchTerm,
		serverTypeFilters = state.MemoryData.serverTypeFilters,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchClientMemoryUpdateSearchFilter = function(searchTerm, filters)
			dispatch(ClientMemoryUpdateSearchFilter(searchTerm, filters))
		end,

		dispatchServerMemoryUpdateSearchFilter = function(searchTerm, filters)
			dispatch(ServerMemoryUpdateSearchFilter(searchTerm, filters))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MainViewMemory)