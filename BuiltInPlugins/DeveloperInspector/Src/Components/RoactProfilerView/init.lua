--[[
	The top bar of the DeveloperInspector that is always visible.

	Contains the tool buttons and the tabs for different views.
]]
local Main = script.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)
local RoactRodux = require(Main.Packages.RoactRodux)
local Framework = require(Main.Packages.Framework)
local InspectorContext = require(Main.Src.Util.InspectorContext)

local RoactProfilerEventsTable = require(Main.Src.Components.RoactProfilerEventsTable)
local RoactProfilerComponentsTable = require(Main.Src.Components.RoactProfilerComponentsTable)

local DeveloperTools = Framework.DeveloperTools
local RoactInspectorApi = DeveloperTools.RoactInspectorApi

local Actions = Main.Src.Actions
local ClearProfileData = require(Actions.RoactInspector.ClearProfileData)
local SetProfileSearchTerm = require(Actions.RoactInspector.SetProfileSearchTerm)
local SetProfileFilter = require(Actions.RoactInspector.SetProfileFilter)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Util = Framework.Util
local StyleModifier = Util.StyleModifier

local UI = Framework.UI
local Pane = UI.Pane
local Tooltip = UI.Tooltip
local Button = UI.Button
local Image = UI.Decoration.Image
local SearchBar = Framework.StudioUI.SearchBar

local RoactProfilerView = Roact.PureComponent:extend("RoactProfilerView")

function RoactProfilerView:init()
	self.onSearchTable = function(searchTerm: string)
		self.props.setProfileSearchTerm(searchTerm)
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		if RoactInspectorApi.isInstance(api) then
			api:setProfileSearchTerm(searchTerm)
			api:getProfileData()
		end
	end
	self.onViewComponent = function()
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		local path = self:getSelectedPath()
		if RoactInspectorApi.isInstance(api) and path then
			-- Open the path
			api:openPath(path)
		end
	end
	self.onClearTable = function()
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		if RoactInspectorApi.isInstance(api) then
			api:clearProfileData()
		end
		self.props.clearTable()
	end
	self.onToggleFilter = function()
		local filter = self.props.Filter
		local nextFilter = #filter > 0 and {} or {
			"Consumer",
			"Provider",
			"RoduxConnection"
		}
		self.props.setProfileFilter(nextFilter)
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		if RoactInspectorApi.isInstance(api) then
			api:setProfileFilter(nextFilter)
			api:getProfileData()
		end
	end
end

function RoactProfilerView:getSelectedPath()
	local tableData = self.props.TableData
	if not tableData.selectedRow then
		return nil
	end
	local pageOffset = (tableData.pageIndex - 1) * tableData.pageSize
	local rowIndex = tableData.selectedRow - pageOffset
	local row = tableData.pageRows[rowIndex]
	return row and row.path or nil
end

function RoactProfilerView:render()
	local props = self.props
	local style = props.Stylizer
	local path = self:getSelectedPath()

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Horizontal,
	}, {
		Left = Roact.createElement(Pane, {
			Size = UDim2.fromScale(0.5, 1),
			LayoutOrder = 1,
			Layout = Enum.FillDirection.Vertical,
		}, {
			Tools = Roact.createElement(Pane, {
				Padding = style.Padding,
				LayoutOrder = 1,
				Layout = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Size = UDim2.new(1, 0, 0, 32),
			}, {
				Search = Roact.createElement(SearchBar, {
					LayoutOrder = 1,
					ShowSearchIcon = true,
					ShowSearchButton = false,
					OnTextChanged = self.onSearchTable,
					Width = 300,
				}),
				Filter = Roact.createElement(Button, {
					Style = #self.props.Filter > 0 and "RoundPrimary" or "RoundSubtle",
					Size = UDim2.new(0, style.ButtonSize, 1, 0),
					LayoutOrder = 2,
					OnClick = self.onToggleFilter,
				}, {
					Tooltip = Roact.createElement(Tooltip, {
						Text = "Exclude higher-order components"
					}),
					Icon = Roact.createElement(Image, {
						Size = UDim2.fromOffset(style.IconSize, style.IconSize),
						Position = UDim2.fromScale(0.5, 0.5),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Image = "rbxasset://textures/DeveloperInspector/Filter.png"
					}),
				}),
				Clear = Roact.createElement(Button, {
					Style = "RoundSubtle",
					Size = UDim2.new(0, style.ButtonSize, 1, 0),
					LayoutOrder = 3,
					OnClick = self.onClearTable,
				}, {
					Tooltip = Roact.createElement(Tooltip, {
						Text = "Clear the table"
					}),
					Icon = Roact.createElement(Image, {
						Size = UDim2.fromOffset(style.IconSize, style.IconSize),
						Position = UDim2.fromScale(0.5, 0.5),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Image = "rbxasset://textures/DeveloperInspector/Bin.png"
					}),
				}),
			}),
			Table = Roact.createElement(Pane, {
				Padding = style.Padding,
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 1, -32),
			}, {
				Child = Roact.createElement(RoactProfilerComponentsTable),
			}),
		}),
		Right = Roact.createElement(Pane, {
			Size = UDim2.fromScale(0.5, 1),
			LayoutOrder = 2,
			Layout = Enum.FillDirection.Vertical,
		}, {
			Tools = Roact.createElement(Pane, {
				Padding = style.Padding,
				LayoutOrder = 1,
				Layout = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				Size = UDim2.new(1, 0, 0, 32),
			}, {
				View = Roact.createElement(Button, {
					Style = "Round",
					Text = "View Component",
					Size = UDim2.new(0, 130, 1, 0),
					OnClick = self.onViewComponent,
					StyleModifier = path == nil and StyleModifier.Disabled or nil,
				}),
			}),
			Table = Roact.createElement(Pane, {
				Padding = style.Padding,
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 1, -32),
			}, {
				Child = Roact.createElement(RoactProfilerEventsTable),
			}),
		}),
	})
end

RoactProfilerView = withContext({
	Inspector = InspectorContext,
	Stylizer = ContextServices.Stylizer,
})(RoactProfilerView)

return RoactRodux.connect(
	function(state)
		return {
			Tabs = state.Targets.tabs,
			TableData = state.RoactInspector.profileComponents,
			SearchTerm = state.RoactInspector.profileSearchTerm,
			Filter = state.RoactInspector.profileFilter,
		}
	end,
	function(dispatch)
		return {
			clearTable = function()
				dispatch(ClearProfileData())
			end,
			setProfileSearchTerm = function(searchTerm: string)
				dispatch(SetProfileSearchTerm(searchTerm))
			end,
			setProfileFilter = function(filter: string)
				dispatch(SetProfileFilter(filter))
			end,
		}
	end
)(RoactProfilerView)
