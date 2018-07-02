local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent.Parent.Components
local ClientMemory = require(Components.Memory.ClientMemory)
local ServerMemory = require(Components.Memory.ServerMemory)
local ClientServerButton = require(Components.ClientServerButton)
local SearchBar = require(Components.SearchBar)

local Actions = script.Parent.Parent.Parent.Actions
local ClientMemoryUpdateSearchFilter = require(Actions.ClientMemoryUpdateSearchFilter)
local ServerMemoryUpdateSearchFilter = require(Actions.ServerMemoryUpdateSearchFilter)

local Constants = require(script.Parent.Parent.Parent.Constants)
local MainRowPadding = Constants.GeneralFormatting.MainRowPadding
local buttonWidth = Constants.UtilityBarFormatting.ClientServerButtonWidth
local utilBarHeight = Constants.UtilityBarFormatting.FrameHeight

local MainViewMemory = Roact.Component:extend("MainViewMemory")

function MainViewMemory:init()
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

	self.state = {
		isClientView = true,
	}
end

function MainViewMemory:render()
	local elements = {}
	local size = self.props.size
	local isClientView = self.state.isClientView
	local searchTerm = isClientView and self.props.clientSearchTerm or self.props.serverSearchTerm

	elements["UIListLayout"] = Roact.createElement("UIListLayout", {
		Padding = UDim.new(0, MainRowPadding),
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	elements["UtilBar"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, utilBarHeight),
		BackgroundTransparency = 1,
		LayoutOrder = 1,
	}, {
		ClientServerButton = Roact.createElement(ClientServerButton, {
			isClientView = isClientView,
			onClientButton = self.onClientButton,
			onServerButton = self.onServerButton,
		}),

		SearchBox = Roact.createElement(SearchBar, {
			size = UDim2.new(0, 2 * buttonWidth, 0, utilBarHeight),
			pos = UDim2.new(1, -2 * buttonWidth, 0, 0),
			searchTerm = searchTerm,
			textSize = Constants.DefaultFontSize.UtilBar,
			frameHeight = Constants.UtilityBarFormatting.FrameHeight,
			borderColor = Constants.Color.BorderGray,
			textBoxColor = Constants.Color.UnselectedGray,
			onTextEntered = self.onSearchTermChanged,
		}),
	})

	if isClientView then
		elements["ClientMemory"] = Roact.createElement(ClientMemory, {
			size = UDim2.new(1, 0, 1, -utilBarHeight),
			searchTerm = searchTerm,
			layoutOrder = 2,
		})
	else
		elements["ServerMemory"] = Roact.createElement(ServerMemory, {
			size = UDim2.new(1, 0, 1, -utilBarHeight),
			searchTerm = searchTerm,
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