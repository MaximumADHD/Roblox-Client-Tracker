local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local TextService = game:GetService("TextService")

local SetActiveTab = require(script.Parent.Parent.Actions.SetActiveTab)

local TabRowButton = require(script.Parent.TabRowButton)
local FullScreenDropDownButton = require(script.Parent.FullScreenDropDownButton)

local Constants = require(script.Parent.Parent.Constants)
local DROP_DOWN_WIDTH = Constants.TabRowFormatting.TabDropDownWidth

local TabRowContainer = Roact.Component:extend("TabRowContainer")

function TabRowContainer:init()
	local tabs = self.props.tabList
	local textWidths = {}
	local totalLength = 0
	local count = 0

	if tabs then
		for ind, tab in ipairs(tabs) do
			local textVector = TextService:GetTextSize(
				tab.label,
				Constants.DefaultFontSize.TabBar,
				Constants.Font.TabBar,
				Vector2.new(0, 0)
			)
			textWidths[ind] = textVector.X
			totalLength = totalLength + textVector.X
			count = count + 1
		end
	end

	self.state = {
		textWidths = textWidths,
		totalTextLength = totalLength,
		totalTabCount = count,
		currContainerWidth = 0
	}

	self.onTabButtonClicked = function(tabIndex)
		self.props.dispatchSetActiveTab(tabIndex)
	end
end

function TabRowContainer:render()
	local tabs = self.props.tabList
	local currTabIndex = self.props.currTabIndex
	local formFactor = self.props.formFactor
	local currWindowWidth = self.props.windowWidth
	local frameHeight = self.props.frameHeight
	local layoutOrder = self.props.layoutOrder

	local textWidths = self.state.textWidths
	local totalTextLength = self.state.totalTextLength
	local totalTabCount = self.state.totalTabCount

	local nodes = {}

	local padding = (currWindowWidth - totalTextLength)  / totalTabCount

	if (formFactor ~= Constants.FormFactor.Large) or
		(padding < 0 and currWindowWidth > 0) then
		local names = {}
		for ind,tab in ipairs(tabs) do
			names[ind] = tab.label
		end

		return Roact.createElement(FullScreenDropDownButton, {
			buttonSize = UDim2.new(0, DROP_DOWN_WIDTH, 0, frameHeight),
			dropDownList = names,
			selectedIndex = currTabIndex,
			onSelection = self.onTabButtonClicked,
			layoutOrder = layoutOrder,
		})
	end

	if tabs then
		for ind,tab in ipairs(tabs) do
			nodes[ind] = Roact.createElement(TabRowButton, {
				index = ind,
				name = tab.label,
				padding = padding,
				textWidth = textWidths[ind],
				isSelected = (ind == currTabIndex),
				LayoutOrder = ind,

				onTabButtonClicked = self.onTabButtonClicked,
			})
		end
	end

	nodes["UIListLayout"] = Roact.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		FillDirection = Enum.FillDirection.Horizontal,
	})

	return Roact.createElement("Frame",{
		Size = UDim2.new(1, 0, 0, frameHeight),
		Transparency = 1,
		LayoutOrder = layoutOrder,
	}, nodes)
end

local function mapStateToProps(state, props)
	return {
		currTabIndex = state.MainView.currTabIndex,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetActiveTab = function(index)
			dispatch(SetActiveTab(index))
		end
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(TabRowContainer)