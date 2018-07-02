local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent.Parent.Components
local ServerStatsChart = require(Components.ServerStats.ServerStatsChart)
local SearchBar = require(Components.SearchBar)

local Actions = script.Parent.Parent.Parent.Actions
local ServerStatsUpdateSearchFilter = require(Actions.ServerStatsUpdateSearchFilter)

local Constants = require(script.Parent.Parent.Parent.Constants)
local MainRowPadding = Constants.GeneralFormatting.MainRowPadding
local buttonWidth = Constants.UtilityBarFormatting.ClientServerButtonWidth
local utilBarHeight = Constants.UtilityBarFormatting.FrameHeight

local MainViewServerStats = Roact.Component:extend("MainViewServerStats")

function MainViewServerStats:init()
	self.onSearchTermChanged = function(newSearchTerm)
		self.props.dispatchServerStatsUpdateSearchFilter(newSearchTerm, {})
	end
end

function MainViewServerStats:render()
	local size = self.props.size
	local searchTerm = self.props.statsSearchTerm

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
			SearchBox = Roact.createElement(SearchBar, {
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

		ServerStats = Roact.createElement(ServerStatsChart, {
			size = UDim2.new(1, 0, 1, -utilBarHeight),
			searchTerm = searchTerm,
			layoutOrder = 2,
		})
	})
end

local function mapStateToProps(state, props)
	return {
		statsSearchTerm = state.ServerStatsData.statsSearchTerm,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchServerStatsUpdateSearchFilter = function(searchTerm, filters)
			dispatch(ServerStatsUpdateSearchFilter(searchTerm, filters))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MainViewServerStats)