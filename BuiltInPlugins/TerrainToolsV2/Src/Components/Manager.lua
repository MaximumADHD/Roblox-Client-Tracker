--[[
	This component connects Rodux to the ui and manages its layout. It is
	composed of 3 frames: tabs, tools, and then tool components.
]]
local FFlagTerrainToolsV2WithContext = game:GetFastFlag("TerrainToolsV2WithContext")

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = require(Plugin.Src.ContextItems)

local Actions = Plugin.Src.Actions
local ChangeTab = require(Actions.ChangeTab)

local Components = Plugin.Src.Components
local Tab = require(Components.Tab)
local ToolManager = require(Components.ToolManager)
local ToolRenderer = require(Components.ToolRenderer)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local TabId = TerrainEnums.TabId

local PADDING = 14

local TabOrder = {
	TabId.Create,
	TabId.Region,
	TabId.Edit,
}

local Manager = Roact.PureComponent:extend(script.Name)

function Manager:init()
	self.state = {
		upperContentYSize = 0,
	}

	self.updateRenderToolContentSize = function(rbx)
		if rbx then
			self:setState({
				upperContentYSize = rbx.AbsoluteContentSize.Y
			})
		end
	end
end

-- Separate because of weird UIListLayout behavior - just creates top tab layer
local function createTabs(props)
	local dispatchChangeTab = props.dispatchChangeTab
	local currTab = props.currentTab

	local buttonSize = UDim2.new(1 / #TabOrder, 0, 1, 0)

	local fragment = {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center
		}),
	}

	for i, tabId in ipairs(TabOrder) do
		fragment[tabId] = Roact.createElement(Tab, {
			TabId = tabId,
			Size = buttonSize,
			OnClick = dispatchChangeTab,
			IsCurrent = currTab == tabId,
			LayoutOrder = i,
		})
	end

	return Roact.createFragment(fragment)
end

function Manager:render()
	local theme = self.props.Theme:get()

	local currentTab = self.props.currentTab

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = theme.backgroundColor,
	}, {
		UILayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder
		}),

		Upper = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, self.state.upperContentYSize),
			BackgroundTransparency = 1,
			[Roact.Ref] = self.upperFrame,
		}, {
			UILayout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, PADDING),
				SortOrder = Enum.SortOrder.LayoutOrder,

				[Roact.Change.AbsoluteContentSize] = self.updateRenderToolContentSize,
			}),

			Tabs = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 29),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, createTabs(self.props)),

			ToolBar = Roact.createElement(ToolManager, {
				CurrentTab = currentTab,
				LayoutOrder = 2,
			}),
		}),

		ToolPanel = Roact.createElement(ToolRenderer, {
			UpperContentYSize = self.state.upperContentYSize + PADDING,
			LayoutOrder = 3,
		}),
	})
end

if FFlagTerrainToolsV2WithContext then
	Manager = withContext({
		Theme = ContextItems.UILibraryTheme,
	})(Manager)
else
	ContextServices.mapToProps(Manager, {
		Theme = ContextItems.UILibraryTheme,
	})
end


local function mapStateToProps(state, props)
	return {
		currentTab = state.Tools.currentTab,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchChangeTab = function (tabName)
			dispatch(ChangeTab(tabName))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Manager)
