local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent.Parent.Components
local ActionBindingsChart = require(Components.ActionBindings.ActionBindingsChart)
local SearchBar = require(Components.SearchBar)

local Actions = script.Parent.Parent.Parent.Actions
local ActionBindingsUpdateSearchFilter = require(Actions.ActionBindingsUpdateSearchFilter)

local Constants = require(script.Parent.Parent.Parent.Constants)
local MainRowPadding = Constants.GeneralFormatting.MainRowPadding
local buttonWidth = Constants.UtilityBarFormatting.ClientServerButtonWidth
local utilBarHeight = Constants.UtilityBarFormatting.FrameHeight

local MainViewActionBindings = Roact.Component:extend("MainViewActionBindings")

function MainViewActionBindings:init()
	self.onSearchTermChanged = function(newSearchTerm)
		self.props.dispatchActionBindingsUpdateSearchFilter(newSearchTerm, {})
	end
end

function MainViewActionBindings:render()
	local size = self.props.size
	local searchTerm = self.props.bindingsSearchTerm

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

		ActionBindings = Roact.createElement(ActionBindingsChart, {
			size = UDim2.new(1, 0, 1, -utilBarHeight),
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
		end
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MainViewActionBindings)