--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local TextService = game:GetService("TextService")

local SetActiveTab = require(script.Parent.Parent.Actions.SetActiveTab)

local TabRowButton = require(script.Parent.TabRowButton)
local DropDown = require(script.Parent.DropDown)
local FullScreenDropDownButton = require(script.Parent.FullScreenDropDownButton)

local Constants = require(script.Parent.Parent.Constants)
local DROP_DOWN_WIDTH = Constants.TabRowFormatting.TabDropDownWidth
local TAB_OVERALAP_THESHOLD = Constants.TabRowFormatting.TabOverlapThreshold

local TabRowContainer = Roact.Component:extend("TabRowContainer")

local function initTabList(tabList)
	local textWidths = {}
	local totalLength = 0
	local count = 0
	for name, _ in pairs(tabList) do
		local textVector =
			TextService:GetTextSize(name, Constants.DefaultFontSize.TabBar, Constants.Font.TabBar, Vector2.new(0, 0))
		textWidths[name] = textVector.X
		totalLength = totalLength + textVector.X
		count = count + 1
	end
	return textWidths, totalLength, count
end

function TabRowContainer:init()
	local tabList = self.props.tabList

	local textWidths, totalLength, count = initTabList(tabList)

	self.state = {
		textWidths = textWidths,
		totalTextLength = totalLength,
		totalTabCount = count,
		currContainerWidth = 0,
	}

	self.onTabButtonClicked = function(tabIndex)
		for name, tab in pairs(self.props.tabList) do
			if tab.layoutOrder == tabIndex then
				self.props.dispatchSetActiveTab(name, tab.hasClientServer)
				return
			end
		end
	end
end

function TabRowContainer:didUpdate(previousProps, previousState)
	if previousProps.tabList ~= self.props.tabList then
		local textWidths, totalLength, count = initTabList(self.props.tabList)
		self:setState({
			textWidths = textWidths,
			totalTextLength = totalLength,
			totalTabCount = count,
		})
	end
end

function TabRowContainer:render()
	local tabList = self.props.tabList
	local currTabIndex = self.props.currTabIndex
	local formFactor = self.props.formFactor
	local currWindowWidth = self.props.windowWidth
	local frameHeight = self.props.frameHeight
	local layoutOrder = self.props.layoutOrder

	local textWidths = self.state.textWidths
	local totalTextLength = self.state.totalTextLength
	local totalTabCount = self.state.totalTabCount
	local nodes = {}

	local padding = (currWindowWidth - totalTextLength) / totalTabCount

	-- the remainder is used to center the row of tabList so the
	-- snap when crossing integer boundaries is less noticeable
	local remainder = (padding % 1) * totalTabCount / 2

	local useDropDown = padding < TAB_OVERALAP_THESHOLD and currWindowWidth > 0
	local useFullScreenDropDown = formFactor == Constants.FormFactor.Small

	if tabList then
		if useDropDown or useFullScreenDropDown then
			local names = {}
			local selectedIndex = tabList[currTabIndex].layoutOrder

			for name, tab in pairs(tabList) do
				names[tab.layoutOrder] = name
			end

			if useFullScreenDropDown then
				return Roact.createElement(FullScreenDropDownButton, {
					buttonSize = UDim2.new(0, DROP_DOWN_WIDTH, 0, frameHeight),
					dropDownList = names,
					selectedIndex = selectedIndex,
					onSelection = self.onTabButtonClicked,
					layoutOrder = layoutOrder,
				})
			elseif useDropDown then
				return Roact.createElement(DropDown, {
					buttonSize = UDim2.new(0, DROP_DOWN_WIDTH, 0, frameHeight),
					dropDownList = names,
					selectedIndex = selectedIndex,
					onSelection = self.onTabButtonClicked,
				})
			end
		else
			for name, tab in pairs(tabList) do
				if textWidths[name] then
					nodes[name] = Roact.createElement(TabRowButton, {
						index = tab.layoutOrder,
						name = name,
						padding = padding,
						textWidth = useDropDown and DROP_DOWN_WIDTH or textWidths[name],
						isSelected = (name == currTabIndex),
						layoutOrder = tab.layoutOrder,

						onTabButtonClicked = self.onTabButtonClicked,
					})
				end
			end
		end

		nodes["UIListLayout"] = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			FillDirection = Enum.FillDirection.Horizontal,
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, frameHeight),
		Position = UDim2.new(0, remainder, 0, 0),
		Transparency = 1,
		LayoutOrder = layoutOrder,
	}, nodes)
end

local function mapStateToProps(state, props)
	return {
		tabList = state.MainView.tabList,
		currTabIndex = state.MainView.currTabIndex,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetActiveTab = function(index, hasClientServer)
			dispatch(SetActiveTab(index, hasClientServer))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(TabRowContainer)
