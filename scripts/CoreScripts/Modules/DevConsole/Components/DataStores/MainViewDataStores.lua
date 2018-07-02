local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent.Parent.Components
local DataStoresChart = require(Components.DataStores.DataStoresChart)
local SearchBar = require(Components.SearchBar)

local Actions = script.Parent.Parent.Parent.Actions
local DataStoresUpdateSearchFilter = require(Actions.DataStoresUpdateSearchFilter)

local Constants = require(script.Parent.Parent.Parent.Constants)
local MainRowPadding = Constants.GeneralFormatting.MainRowPadding
local buttonWidth = Constants.UtilityBarFormatting.ClientServerButtonWidth
local utilBarHeight = Constants.UtilityBarFormatting.FrameHeight

local MainViewDataStores = Roact.PureComponent:extend("MainViewDataStores")

function MainViewDataStores:init()
	self.onSearchTermChanged = function(newSearchTerm)
		self.props.dispatchDataStoresUpdateSearchFilter(newSearchTerm, {})
	end
end

function MainViewDataStores:render()
	local size = self.props.size
	local searchTerm = self.props.storesSearchTerm

	return Roact.createElement("Frame",{
		Size = size,
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
		LayoutOrder = 3,
	}, {
		UIListLayout = 	Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, MainRowPadding),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		UtilBar = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, utilBarHeight),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}, {
			Roact.createElement(SearchBar, {
				size = UDim2.new(0, 2 * buttonWidth, 0, utilBarHeight),
				pos = UDim2.new(1, -2 * buttonWidth, 0, 0),
				searchTerm = searchTerm,
				textSize = Constants.DefaultFontSize.UtilBar,
				frameHeight = Constants.UtilityBarFormatting.FrameHeight,
				borderColor = Constants.Color.BorderGray,
				textBoxColor = Constants.Color.UnselectedGray,
				onTextEntered = self.onSearchTermChanged,
			})
		}),

		DataStores = Roact.createElement(DataStoresChart, {
			size = UDim2.new(1, 0, 1, -utilBarHeight),
			searchTerm = searchTerm,
			layoutOrder = 2,
		})
	})
end

local function mapStateToProps(state, props)
	return {
		storesSearchTerm = state.DataStoresData.storesSearchTerm,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchDataStoresUpdateSearchFilter = function(searchTerm, filters)
			dispatch(DataStoresUpdateSearchFilter(searchTerm, filters))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MainViewDataStores)