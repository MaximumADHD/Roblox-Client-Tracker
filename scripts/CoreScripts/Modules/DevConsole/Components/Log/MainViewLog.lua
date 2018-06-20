local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent.Parent.Components
local ClientLog = require(Components.Log.ClientLog)
local ServerLog = require(Components.Log.ServerLog)
local ClientServerButton = require(Components.ClientServerButton)
local CheckBoxContainer = require(Components.CheckBoxContainer)
local SearchBar = require(Components.SearchBar)

local Actions = script.Parent.Parent.Parent.Actions
local ClientLogUpdateSearchFilter = require(Actions.ClientLogUpdateSearchFilter)
local ServerLogUpdateSearchFilter = require(Actions.ServerLogUpdateSearchFilter)

local Constants = require(script.Parent.Parent.Parent.Constants)
local MainRowPadding = Constants.GeneralFormatting.MainRowPadding
local buttonWidth = Constants.UtilityBarFormatting.ClientServerButtonWidth
local utilBarHeight = Constants.UtilityBarFormatting.FrameHeight

local MsgTypeNamesOrdered = Constants.MsgTypeNamesOrdered

local MainViewLog = Roact.PureComponent:extend("MainViewLog")

function MainViewLog:init()
	self.onClientButton = function()
		self:setState({isClientView = true})
	end

	self.onServerButton = function()
		self:setState({isClientView = false})
	end

	self.onCheckBoxesChanged = function(newFilters)
		if self.state.isClientView then
			self.props.dispatchClientLogUpdateSearchFilter(nil, newFilters)
		else
			self.props.dispatchServerLogUpdateSearchFilter(nil, newFilters)
		end
	end

	self.onSearchTermChanged = function(newSearchTerm)
		if self.state.isClientView then
			self.props.dispatchClientLogUpdateSearchFilter(newSearchTerm, {})
		else
			self.props.dispatchServerLogUpdateSearchFilter(newSearchTerm, {})
		end
	end

	self.state = {
		isClientView = true
	}
end

function MainViewLog:render()
	local elements = {}
	local size = self.props.size
	local isClientView = self.state.isClientView
	local searchTerm = isClientView and self.props.clientSearchTerm or self.props.serverSearchTerm

	-- we create the util bar here rather than make it it's own component because
	-- each tab has different requirements for the util bar
	local utilBar = {}
	utilBar["ClientServerButton"] = Roact.createElement(ClientServerButton, {
		isClientView = isClientView,
		onClientButton = self.onClientButton,
		onServerButton = self.onServerButton,
	})

	utilBar["FilterCheckBoxes"] = Roact.createElement(CheckBoxContainer, {
		boxNames = MsgTypeNamesOrdered,
		size = UDim2.new(.5, 0, 0, utilBarHeight),
		pos = UDim2.new(0, 2 * (buttonWidth) + MainRowPadding, 0, 0),
		onCheckBoxesChanged = self.onCheckBoxesChanged,
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
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, MainRowPadding),
	})

	elements["UtilBar"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, utilBarHeight),
		BackgroundTransparency = 1,
		LayoutOrder = 1,
	}, utilBar)

	if isClientView then
		elements["ClientLog"] = Roact.createElement(ClientLog, {
			Size = UDim2.new(1, 0, 1, -utilBarHeight),
			layoutOrder = 2,
		})
	else
		elements["ServerLog"] = Roact.createElement(ServerLog, {
			Size = UDim2.new(1, 0, 1, -utilBarHeight),
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
		clientSearchTerm = state.LogData.clientSearchTerm,
		clientTypeFilters = state.LogData.clientTypeFilters,
		serverSearchTerm = state.LogData.serverSearchTerm,
		serverTypeFilters = state.LogData.serverTypeFilters,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchClientLogUpdateSearchFilter = function(searchTerm, filters)
			dispatch(ClientLogUpdateSearchFilter(searchTerm, filters))
		end,

		dispatchServerLogUpdateSearchFilter = function(searchTerm, filters)
			dispatch(ServerLogUpdateSearchFilter(searchTerm, filters))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MainViewLog)