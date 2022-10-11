--[[
	A paginated table displaying the events for a specific component selected in the left-hand side
	during the profiling session.
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

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local PaginatedTable = UI.PaginatedTable
local Pane = UI.Pane

local RoactProfilerEventsTable = Roact.Component:extend("RoactProfilerEventsTable")

local columns = {
	{
		Name = "At (s)",
		Key = "startTime",
		Width = UDim.new(0.1, 0),
	},
	{
		Name = "Render Time (ms)",
		Key = "renderTime",
		Width = UDim.new(0.2, 0),
	},
	{
		Name = "Deep Time (ms)",
		Key = "time",
		Width = UDim.new(0.2, 0),
	},
	{
		Name = "Cause",
		Key = "cause",
		TooltipKey = "log",
		Width = UDim.new(0.15, 0),
	},
	{
		Name = "Details",
		Key = "details",
		TooltipKey = "detailsTip",
		Width = UDim.new(0.35, 0),
	},
}

function RoactProfilerEventsTable:init()
	self.onPageChange = function(pageIndex: number)
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		self.props.setPageIndex(pageIndex)
		if RoactInspectorApi.isInstance(api) then
			if not api.setProfileEventsPageIndex then
				return
			end
			api:setProfileEventsPageIndex(pageIndex)
			api:getProfileData()
		end
	end
	self.onSizeChange = function(pageSize: number)
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		self.props.setPageSize(pageSize)
		if RoactInspectorApi.isInstance(api) then
			if not api.setProfileEventsPageSize then
				return
			end
			api:setProfileEventsPageSize(pageSize)
			api:getProfileData()
		end
	end
	self.onSortChange = function(index: number, order: Enum.SortDirection)
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		self.props.setSort(index, order)
		if RoactInspectorApi.isInstance(api) then
			if not api.setProfileEventsPageIndex then
				return
			end
			api:sortProfileData(TableIds.EVENTS, index, order)
			api:getProfileData()
		end
	end
end

function RoactProfilerEventsTable:render()
	local props = self.props
	local profileData = props.ProfileData
	local tableData = props.TableData

	return Roact.createElement(PaginatedTable, {
		Columns = columns,
		Rows = tableData.pageRows,
		SortIndex = tableData.sortIndex,
		SortOrder = tableData.sortOrder,
		PageIndex = tableData.pageIndex,
		PageSize = tableData.pageSize,
		PageCount = math.ceil(profileData.instanceEventCount / tableData.pageSize),
		OnPageChange = self.onPageChange,
		OnPageSizeChange = self.onSizeChange,
		OnSortChange = self.onSortChange,
		Footer = Roact.createElement(Pane, {
			Padding = 5,
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}),
	})
end

RoactProfilerEventsTable = withContext({
	Inspector = InspectorContext,
	Stylizer = ContextServices.Stylizer,
})(RoactProfilerEventsTable)

return RoactRodux.connect(function(state)
	return {
		ProfileData = state.RoactInspector.profileData,
		TableData = state.RoactInspector[TableIds.EVENTS],
	}
end, function(dispatch)
	return {
		setSort = function(index: number, order: Enum.SortDirection)
			dispatch(SortProfileData(TableIds.EVENTS, index, order))
		end,
		setPageSize = function(pageSize: number)
			dispatch(SetProfilePageSize(TableIds.EVENTS, pageSize))
		end,
		setPageIndex = function(pageIndex: number)
			dispatch(SetProfilePageIndex(TableIds.EVENTS, pageIndex))
		end,
	}
end)(RoactProfilerEventsTable)
