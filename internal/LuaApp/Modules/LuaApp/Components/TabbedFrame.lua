local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local FitChildren = require(Modules.LuaApp.FitChildren)
local Constants = require(Modules.LuaApp.Constants)
local LocalizedTextButton = require(Modules.LuaApp.Components.LocalizedTextButton)

local TabbedFrame = Roact.Component:extend("TabbedFrame")

local NO_TABS = "Tabbed frame has no tabs. If this functionality is desired, use a Frame."
local NO_CONTENT = "Content function didn't return a table. If no content is desired, return an empty table."

function TabbedFrame:render()
	local tabs = self.props.tabs
	local props = self.props.props or {}
	local selectedTabIndex = self.state.selectedTabIndex or 1

	assert(#tabs > 0, NO_TABS)
	props[Roact.Children] = tabs[selectedTabIndex].content()
	assert(type(props[Roact.Children]) == "table", NO_CONTENT)

	local tabButtonSize = UDim2.new(1/#tabs, 0, 1, 0)
	local tabBarChildren = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
		}),
	}

	for tabIndex, tab in ipairs(tabs) do
		local component, name
		if type(tab.label) == "table" then
			component = LocalizedTextButton
			name = tab.label[1]
		else
			component = "TextButton"
			name = tab.label
		end

		local selectedLine
		if selectedTabIndex == tabIndex then
			selectedLine = Roact.createElement("Frame", {
				BackgroundColor3 = Constants.Color.BLUE_PRIMARY,
				Size = UDim2.new(1, 0, 0, 2),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 0, 1, -2),
			})
		end

		tabBarChildren[name] = Roact.createElement(component, {
			Text = tab.label,
			BackgroundColor3 = Constants.Color.WHITE,
			Size = tabButtonSize,
			BorderSizePixel = 0,
			LayoutOrder = tabIndex,
			[Roact.Event.Activated] = function ()
				self:setState({
					selectedTabIndex = tabIndex
				})
			end,
		}, {
			selectedLine
		})
	end

	props[Roact.Children].TabBar = Roact.createElement("Frame", {
		LayoutOrder = 1,
		Size = UDim2.new(1, 0, 0, 30),
		BackgroundColor3 = Constants.Color.WHITE,
		BorderSizePixel = 0,
	}, tabBarChildren)

	return Roact.createElement(FitChildren.FitFrame, props)
end

return TabbedFrame