local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local TextService = game:GetService("TextService")

local SetActiveTab = require(script.Parent.Parent.Actions.SetActiveTab)

local TabRowButton = require(script.Parent.TabRowButton)
local TabDropDown = require(script.Parent.TabDropDown)

local Constants = require(script.Parent.Parent.Constants)
local tabBarHeight = Constants.TabRowFormatting.FrameHeight
local tabDropDownWidth = Constants.TabRowFormatting.TabDropDownWidth
local tabDropDownHeight = Constants.TabRowFormatting.TabDropDownHeight

local TabRowContainer = Roact.Component:extend("TabRowContainer")

function TabRowContainer:onTabButtonClicked(tabIndex)
	self.props.dispatchSetActiveTab(tabIndex)
end

function TabRowContainer:init()
	local tabs = self.props.tabList
	local textWidths = {}
	local totalLength = 0
	local count = 0

	if tabs then
		for ind, tab in pairs(tabs) do
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
end

function TabRowContainer:render()
	local tabs = self.props.tabList
	local currTabIndex = self.props.currTabIndex

	local textWidths = self.state.textWidths
	local totalTextLength = self.state.totalTextLength
	local totalTabCount = self.state.totalTabCount

	local formFactor = self.props.formFactor
	local currWindowWidth = self.props.windowWidth

	local nodes = {}

	local padding = (currWindowWidth - totalTextLength)  / totalTabCount

	if (formFactor ~= Constants.FormFactor.Large) or
		(padding < 0 and currWindowWidth > 0) then
		local dropdownSize = UDim2.new()
		if formFactor == Constants.FormFactor.Large then
			dropdownSize = UDim2.new(0, tabDropDownWidth, 0, tabDropDownHeight)
		end
		-- hacky way to reformat ui for mobile
		return Roact.createElement("Frame",{
			Size = dropdownSize,
			Transparency = 1,
			LayoutOrder = 2,
		}, {
			button = Roact.createElement(TabDropDown, {
				tabList = tabs,
				currTabIndex = currTabIndex,
				textWidths = textWidths,
				onTabButtonClicked = function(tabIndex)
					self:onTabButtonClicked(tabIndex)
				end
			})
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

				onTabButtonClicked = function(tabIndex)
					self:onTabButtonClicked(tabIndex)
				end
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
		Size = UDim2.new(1, 0, 0, tabBarHeight),
		Transparency = 1,
		LayoutOrder = 2,
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