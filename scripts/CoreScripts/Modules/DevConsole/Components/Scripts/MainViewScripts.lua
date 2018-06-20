local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent.Parent.Components
local ServerScripts = require(Components.Scripts.ServerScripts)
local ClientServerButton = require(Components.ClientServerButton)
local CheckBoxContainer = require(Components.CheckBoxContainer)
local SearchBar = require(Components.SearchBar)

local Actions = script.Parent.Parent.Parent.Actions
local ServerScriptsUpdateSearchFilter = require(Actions.ServerScriptsUpdateSearchFilter)

local Constants = require(script.Parent.Parent.Parent.Constants)
local MainRowPadding = Constants.GeneralFormatting.MainRowPadding
local buttonWidth = Constants.UtilityBarFormatting.ClientServerButtonWidth
local utilBarHeight = Constants.UtilityBarFormatting.FrameHeight

local BOX_NAMES = {
	"Active",
	"Inactive"
}

local MainViewScripts = Roact.PureComponent:extend("MainViewScripts")

function MainViewScripts:init()
	self.onClientButton = function()
		self:setState({isClientView = true})
	end

	self.onServerButton = function()
		self:setState({isClientView = false})
	end

	self.onCheckBoxesChanged = function(newFilters)
		self.props.dispatchServerScriptsUpdateSearchFilter(nil, newFilters)
	end

	self.onSearchTermChanged = function(newSearchTerm)
		self.props.dispatchServerScriptsUpdateSearchFilter(newSearchTerm, {})
	end

	self.state = {
		isClientView = true,
	}
end

function MainViewScripts:render()
	local size = self.props.size
	local isClientView = self.state.isClientView
	local searchTerm = isClientView and self.props.clientSearchTerm or self.props.serverSearchTerm

	return Roact.createElement("Frame",{
		Size = size,
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
		LayoutOrder = 3,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, MainRowPadding),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		UtilBar = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, utilBarHeight),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}, {
			ClientServerButton = Roact.createElement(ClientServerButton, {
				isClientView = isClientView,
				onClientButton = self.onClientButton,
				onServerButton = self.onServerButton,
			}),

			FilterCheckBoxes = Roact.createElement(CheckBoxContainer, {
				boxNames = BOX_NAMES,
				size = UDim2.new(.5, 0, 0, utilBarHeight),
				pos = UDim2.new(0, 2 * (buttonWidth) + MainRowPadding, 0, 0),
				onCheckBoxesChanged = self.onCheckBoxesChanged,
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
		}),

		ServerScripts = Roact.createElement(ServerScripts, {
			size = UDim2.new(1, 0, 1, -utilBarHeight),
			layoutOrder = 2,
		}),
	})
end

local function mapStateToProps(state, props)
	return {
		serverSearchTerm = state.ScriptsData.serverSearchTerm,
		serverTypeFilters = state.ScriptsData.serverTypeFilters,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchServerScriptsUpdateSearchFilter = function(searchTerm, filters)
			dispatch(ServerScriptsUpdateSearchFilter(searchTerm, filters))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MainViewScripts)