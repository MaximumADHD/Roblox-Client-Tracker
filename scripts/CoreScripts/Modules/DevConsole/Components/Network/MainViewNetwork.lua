local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent.Parent.Components
local ClientNetwork = require(Components.Network.ClientNetwork)
local ServerNetwork = require(Components.Network.ServerNetwork)
local ClientServerButton = require(Components.ClientServerButton)
local SearchBar = require(Components.SearchBar)

local Actions = script.Parent.Parent.Parent.Actions
local ClientNetworkUpdateSearchFilter = require(Actions.ClientNetworkUpdateSearchFilter)
local ServerNetworkUpdateSearchFilter = require(Actions.ServerNetworkUpdateSearchFilter)

local Constants = require(script.Parent.Parent.Parent.Constants)
local MainRowPadding = Constants.GeneralFormatting.MainRowPadding
local buttonWidth = Constants.UtilityBarFormatting.ClientServerButtonWidth
local utilBarHeight = Constants.UtilityBarFormatting.FrameHeight

local MainViewNetwork = Roact.Component:extend("MainViewNetwork")

function MainViewNetwork:init()
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

	self.state = {
		isClientView = true,
	}
end

function MainViewNetwork:render()
	local elements = {}
	local size = self.props.size
	local isClientView = self.state.isClientView
	local searchTerm = isClientView and self.props.clientSearchTerm or self.props.serverSearchTerm

	local utilBar = {}
	utilBar["ClientServerButton"] = Roact.createElement(ClientServerButton, {
		isClientView = isClientView,
		onClientButton = self.onClientButton,
		onServerButton = self.onServerButton,
	})

	utilBar["SearchBox"] = Roact.createElement(SearchBar, {
		size = UDim2.new(0, 2 * buttonWidth, 0, utilBarHeight),
		pos = UDim2.new(1, -2 * buttonWidth, 0, 0),
		searchTerm = searchTerm,
		textSize = Constants.DefaultFontSize.UtilBar,
		frameHeight = Constants.UtilityBarFormatting.FrameHeight,
		borderColor = Constants.Color.BorderGray,
		textBoxColor = Constants.Color.UnselectedGray,
		onTextEntered = self.onSearchTermChanged,
	})

	elements["UIListLayout"] = Roact.createElement("UIListLayout", {
		Padding = UDim.new(0, MainRowPadding),
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	elements["UtilBar"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, utilBarHeight),
		BackgroundTransparency = 1,
		LayoutOrder = 1,
	}, utilBar)

	if isClientView then
		elements["ClientNetwork"] = Roact.createElement(ClientNetwork, {
			size = UDim2.new(1, 0, 1, -utilBarHeight),
			layoutOrder = 2,
		})
	else
		elements["ServerNetwork"] = Roact.createElement(ServerNetwork, {
			size = UDim2.new(1, 0, 1, -utilBarHeight),
			layoutOrder = 2,
		})
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