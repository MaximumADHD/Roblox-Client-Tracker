--[[
	A paginated table displaying rows of components that have had events (render/mount/update)
	during the profile session.
]]
local Main = script.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)
local RoactRodux = require(Main.Packages.RoactRodux)
local Framework = require(Main.Packages.Framework)
local InspectorContext = require(Main.Src.Util.InspectorContext)
local TableIds = require(Main.Src.Util.TableIds)

local DeveloperTools = Framework.DeveloperTools
local RoactInspectorApi = DeveloperTools.RoactInspectorApi

local Actions = Main.Src.Actions
local SetProfilePageSize = require(Actions.RoactInspector.SetProfilePageSize)
local SetProfilePageIndex = require(Actions.RoactInspector.SetProfilePageIndex)
local SortProfileData = require(Actions.RoactInspector.SortProfileData)
local SelectProfileRow = require(Actions.RoactInspector.SelectProfileRow)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local PaginatedTable = UI.PaginatedTable
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local RoactProfilerComponentsTable = Roact.Component:extend("RoactProfilerComponentsTable")

local columns = {
	{
		Name = "Component",
		Key = "instanceName",
		TooltipKey = "pathString",
		Width = UDim.new(0.3, 0),
	}, {
		Name = "Depth",
		Key = "depth",
		Width = UDim.new(0.15, 0),
	}, {
		Name = "Renders",
		Key = "count",
		Width = UDim.new(0.15, 0),
	}, {
		Name = "Render Time (ms)",
		Key = "renderTime",
		Width = UDim.new(0.2, 0),
	}, {
		Name = "Deep Time (ms)",
		Key = "time",
		Width = UDim.new(0.2, 0),
	}
}

function RoactProfilerComponentsTable:init()
	self.onPageChange = function(pageIndex: number)
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		self.props.setPageIndex(pageIndex)
		if RoactInspectorApi.isInstance(api) then
			if not api.setProfileComponentsPageIndex then
				return
			end
			api:setProfileComponentsPageIndex(pageIndex)
			api:getProfileData()
		end
	end
	self.onHover = function(_row, index: number)
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		local tableData = self.props.TableData
		local row = tableData.pageRows[index]
		if row and row.path then
			if RoactInspectorApi.isInstance(api) then
				api:highlight(row.path)
			end
		end
	end
	self.onMouseLeave = function()
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		if RoactInspectorApi.isInstance(api) then
			api:dehighlight()
		end
	end
	self.onSizeChange = function(pageSize: number)
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		self.props.setPageSize(pageSize)
		if RoactInspectorApi.isInstance(api) then
			if not api.setProfileComponentsPageSize then
				return
			end
			api:setProfileComponentsPageSize(pageSize)
			api:getProfileData()
		end
	end
	self.onSortChange = function(index: number, order: Enum.SortDirection)
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		self.props.setSort(index, order)
		if RoactInspectorApi.isInstance(api) then
			if not api.sortProfileData then
				return
			end
			api:sortProfileData('profileComponents', index, order)
			api:getProfileData()
		end
	end
	self.onSelectRow = function(_row, index: number)
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		local tableData = self.props.TableData
		local pageOffset = (tableData.pageIndex - 1) * tableData.pageSize
		local dataIndex = index + pageOffset
		local row = tableData.pageRows[index]
		if row then
			local instanceId = row.instanceId
			self.props.selectRow(dataIndex)
			if RoactInspectorApi.isInstance(api) then
				api:selectProfileInstance(instanceId)
				api:setProfileEventsPageIndex(1)
				api:getProfileData()
			end
		end
	end
end

function RoactProfilerComponentsTable:render()
	local props = self.props
	local profileData = props.ProfileData
	local tableData = props.TableData

	return Roact.createElement(PaginatedTable, {
		Columns = columns,
		Rows = tableData.pageRows,
		SelectedRow = tableData.selectedRow,
		SortIndex = tableData.sortIndex,
		SortOrder = tableData.sortOrder,
		PageIndex = tableData.pageIndex,
		PageSize = tableData.pageSize,
		PageCount = math.ceil(profileData.rowCount / tableData.pageSize),
		OnHoverRow = self.onHover,
		OnMouseLeave = self.onMouseLeave,
		OnSelectRow = self.onSelectRow,
		OnPageChange = self.onPageChange,
		OnPageSizeChange = self.onSizeChange,
		OnSortChange = self.onSortChange,
		Footer = Roact.createElement(Pane, {
			Padding = 5,
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}, {
			Label = Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.XY,
				Text = ("%s Events from %s Components"):format(profileData.eventCount, profileData.rowCount),
			}),
		}),
	})
end

RoactProfilerComponentsTable = withContext({
	Inspector = InspectorContext,
	Stylizer = ContextServices.Stylizer,
})(RoactProfilerComponentsTable)

return RoactRodux.connect(
	function(state)
		return {
			ProfileData = state.RoactInspector.profileData,
			TableData = state.RoactInspector[TableIds.COMPONENTS]
		}
	end,
	function(dispatch)
		return {
			setSort = function(index: number, order: Enum.SortDirection)
				dispatch(SortProfileData(TableIds.COMPONENTS, index, order))
			end,
			setPageSize = function(pageSize: number)
				dispatch(SetProfilePageSize(TableIds.COMPONENTS, pageSize))
			end,
			setPageIndex = function(pageIndex: number)
				dispatch(SetProfilePageIndex(TableIds.COMPONENTS, pageIndex))
			end,
			selectRow = function(selectedRow: number)
				dispatch(SelectProfileRow(selectedRow))
			end
		}
	end
)(RoactProfilerComponentsTable)


