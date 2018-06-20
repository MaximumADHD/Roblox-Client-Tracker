local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local TextService = game:GetService("TextService")

local SetActiveTab = require(script.Parent.Parent.Actions.SetActiveTab)

local TabRowButton = require(script.Parent.Parent.Components.TabRowButton)

local Constants = require(script.Parent.Parent.Constants)
local tabBarHeight = Constants.TabRowFormatting.FrameHeight

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

	self.attachListener = function(ref)
		if not self.absSizeListener then
			local signal = ref:GetPropertyChangedSignal("AbsoluteSize")
			self.absSizeListener = signal:Connect( function()
				self.onSizeChanged(ref.AbsoluteSize)
			end)
		elseif ref == nil then
			self.absSizeListener:Disconnect()
		end
	end

	self.onSizeChanged = function(abs)
		self:setState({
			currContainerWidth = abs.X
		})
	end
end

function TabRowContainer:render()
	local tabs = self.props.tabList
	local currTabIndex = self.props.currTabIndex

	local textWidths = self.state.textWidths
	local totalTextLength = self.state.totalTextLength
	local totalTabCount = self.state.totalTabCount
	local currContainerWidth = self.state.currContainerWidth

	local nodes = {}

	local padding = (currContainerWidth - totalTextLength)  / totalTabCount

	if padding < 0 then
		-- do drop down menus
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

		[Roact.Ref] = self.attachListener,
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