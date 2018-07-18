local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent.Parent.Components
local ClientNetwork = require(Components.Network.ClientNetwork)
local ServerNetwork = require(Components.Network.ServerNetwork)
local UtilAndTab = require(Components.UtilAndTab)

local Actions = script.Parent.Parent.Parent.Actions
local ClientNetworkUpdateSearchFilter = require(Actions.ClientNetworkUpdateSearchFilter)
local ServerNetworkUpdateSearchFilter = require(Actions.ServerNetworkUpdateSearchFilter)

local Constants = require(script.Parent.Parent.Parent.Constants)
local PADDING = Constants.GeneralFormatting.MainRowPadding

local MainViewNetwork = Roact.Component:extend("MainViewNetwork")

function MainViewNetwork:init()
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
			self.props.dispatchClientNetworkUpdateSearchFilter(newSearchTerm, {})
		else
			self.props.dispatchServerNetworkUpdateSearchFilter(newSearchTerm, {})
		end
	end

	self.utilRef = Roact.createRef()

	self.state = {
		utilTabHeight = 0,
		isClientView = true,
	}
end

function MainViewNetwork:didMount()
	local utilSize = self.utilRef.current.Size
	self:setState({
		utilTabHeight = utilSize.Y.Offset
	})
end

function MainViewNetwork:didUpdate()
	local utilSize = self.utilRef.current.Size
	if utilSize.Y.Offset ~= self.state.utilTabHeight then
		self:setState({
			utilTabHeight = utilSize.Y.Offset
		})
	end
end

function MainViewNetwork:render()
	local elements = {}
	local size = self.props.size
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList

	local utilTabHeight = self.state.utilTabHeight
	local isClientView = self.state.isClientView
	local searchTerm = isClientView and self.props.clientSearchTerm or self.props.serverSearchTerm

	elements["UIListLayout"] = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, PADDING),
	})

	elements ["UtilAndTab"] = Roact.createElement(UtilAndTab,{
		windowWidth = size.X.Offset,
		formFactor = formFactor,
		tabList = tabList,
		isClientView = isClientView,
		searchTerm = searchTerm,
		layoutOrder = 1,

		refForParent = self.utilRef,

		onHeightChanged = self.onUtilTabHeightChanged,
		onClientButton = self.onClientButton,
		onServerButton = self.onServerButton,
		onSearchTermChanged = self.onSearchTermChanged,
	})

	if utilTabHeight > 0  then
		if isClientView then
			elements["ClientNetwork"] = Roact.createElement(ClientNetwork, {
				size = UDim2.new(1, 0, 1, -utilTabHeight),
				searchTerm = searchTerm,
				layoutOrder = 2,
			})
		else
			elements["ServerNetwork"] = Roact.createElement(ServerNetwork, {
				size = UDim2.new(1, 0, 1, -utilTabHeight),
				searchTerm = searchTerm,
				layoutOrder = 2,
			})
		end
	end

	return Roact.createElement("Frame",{
		Size = size,
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
		LayoutOrder = 3,

	}, elements)
end

local function mapStateToProps(state, props)
	return {
		clientSearchTerm = state.NetworkData.clientSearchTerm,
		serverSearchTerm = state.NetworkData.serverSearchTerm,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchClientNetworkUpdateSearchFilter = function(searchTerm, filters)
			dispatch(ClientNetworkUpdateSearchFilter(searchTerm, filters))
		end,

		dispatchServerNetworkUpdateSearchFilter = function(searchTerm, filters)
			dispatch(ServerNetworkUpdateSearchFilter(searchTerm, filters))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MainViewNetwork)