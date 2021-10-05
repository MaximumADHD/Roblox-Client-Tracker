local PluginFolder = script.Parent.Parent.Parent.Parent
local Roact = require(PluginFolder.Packages.Roact)
local RoactRodux = require(PluginFolder.Packages.RoactRodux)
local Framework = require(PluginFolder.Packages.Framework)

local CallstackDropdownField = require(script.Parent.CallstackDropdownField)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization
local PluginActions = ContextServices.PluginActions
local Plugin = ContextServices.Plugin

local Stylizer = Framework.Style.Stylizer

local Util = Framework.Util
local deepCopy = Util.deepCopy

local UI = Framework.UI
local Pane = UI.Pane
local TreeTable = UI.TreeTable

local StudioUI = Framework.StudioUI
local showContextMenu = StudioUI.showContextMenu

local UtilFolder = PluginFolder.Src.Util
local MakePluginActions = require(UtilFolder.MakePluginActions)

local Actions = PluginFolder.Src.Actions
local SetCurrentFrameNumber = require(Actions.Callstack.SetCurrentFrameNumber)
local SetCurrentThread = require(Actions.Callstack.SetCurrentThread)

local Models = PluginFolder.Src.Models
local CallstackRow = require(Models.Callstack.CallstackRow)

local CallstackComponent = Roact.PureComponent:extend("CallstackComponent")

local Constants = require(PluginFolder.Src.Util.Constants)

local FFlagDevFrameworkAddRightClickEventToPane = game:GetFastFlag("DevFrameworkAddRightClickEventToPane")
local FFlagDevFrameworkTableAddFullSpanFunctionality = game:GetFastFlag("DevFrameworkTableAddFullSpanFunctionality")

local StudioService = game:GetService("StudioService")

local columnNameToKey = {
	FrameColumn = "frameColumn",
	LayerColumn = "layerColumn",
	SourceColumn = "sourceColumn",
	FunctionColumn = "functionColumn",
	LineColumn = "lineColumn",
}

-- Local Functions
local function makeCallstackRootItem(threadInfo, common, callstackVars)
	local displayString = threadInfo.displayString
	local threadId = threadInfo.threadId
	local currentFrameNumber = common.threadIdToCurrentFrameNumber[threadId]
			
	local frameList = callstackVars.threadIdToFrameList and callstackVars.threadIdToFrameList[threadId]
	
	local frameListCopy = deepCopy(frameList)
	for index, frameData in ipairs(frameListCopy) do
		if (index == 1) then
			frameListCopy[index].arrowColumn = CallstackRow.ICON_FRAME_TOP
		elseif (frameData.frameColumn == currentFrameNumber) then
			frameListCopy[index].arrowColumn = CallstackRow.ICON_CURRENT_FRAME
		else
			frameListCopy[index].arrowColumn = ""
		end
	end

	return {
		arrowColumn = displayString,
		threadId = threadId,
		children = frameListCopy,
	}
end

function CallstackComponent:addAction(action, func)
	if action then
		action.Enabled = true
		table.insert(self.shortcuts, action)
		table.insert(self.connections , action.Triggered:Connect(func))
	end
end

function CallstackComponent:didMount()
	local pluginActions = self.props.PluginActions
	self.connections  = {}
	self.shortcuts = {}
	self:addAction(pluginActions:get(Constants.CallstackActionIds.CopySelected), self.copySelectedRow)
	self:addAction(pluginActions:get(Constants.CallstackActionIds.SelectAll), self.selectAll)
end

function CallstackComponent:willUnmount()
	if self.connections  then
		for _, connection in ipairs(self.connections ) do
			connection:Disconnect()
		end
		self.connections  = {}
	end
	if self.shortcuts then
		for _, action in ipairs(self.shortcuts) do
			action.Enabled = false
		end
		self.shortcuts = {}
	end
end

-- CallstackComponent
function CallstackComponent:init()
	self.selectedRow = nil
	
	self.getTreeChildren = function(item)
		return item.children or {}
	end
	
	self.onSelectionChange = function(selection)
		local props = self.props
		for rowInfo in pairs(selection) do
			self.selectedRow = {["item"] = rowInfo}
			local threadId = props.CurrentThreadId
			local frameNumber = rowInfo.frameColumn
			props.setCurrentFrameNumber(threadId, frameNumber)
		end
	end

	self.copySelectedRow = function(row)
		-- If row is nil, then Ctrl+C shortcut was activated for selected row
		if row == nil then
			if self.selectedRow == nil then
				return
			end
			row = self.selectedRow
		end
		local rowString = ""
		for _, v in pairs(self.props.ColumnFilter) do
			rowString = rowString .. row.item[columnNameToKey[v]] .. '\t'
		end
		StudioService:CopyToClipboard(rowString)
	end
	
	self.selectAll = function ()
		print('Todo RIDE-5595')
	end
	
	self.onMenuActionSelected = function(actionId, extraParameters)
		local row = extraParameters.row
		if actionId == Constants.CallstackActionIds.CopySelected then
			self.copySelectedRow(row)
		elseif actionId == Constants.CallstackActionIds.SelectAll then
			self.selectAll()
		end
	end
	
	if FFlagDevFrameworkAddRightClickEventToPane then
		self.onRightClick = function(row)
			local props = self.props
			local localization = props.Localization
			local plugin = props.Plugin:get()
			local actions = MakePluginActions.getCallstackActions(localization)
			showContextMenu(plugin, "Call Stack", actions, self.onMenuActionSelected, {row = row})
		end
	end

	self.onExpansionChange = function(newExpansion)
		for row, expandedBool in pairs(newExpansion) do
			self.props.onExpansionClicked(row.threadId)
		end
	end
	
	self.getTreeChildren = function(item)
		return item.children or {}
	end
end

function CallstackComponent:render()
	local props = self.props
	local localization = props.Localization
	local style = self.props.Stylizer
	local visibleColumns = props.ColumnFilter or {}
	
	local tableColumns = {
		{
			Name = "",
			Key = "arrowColumn",
		},
	}
	
	for _, v in pairs(visibleColumns) do
		local currCol = {
			Name = localization:getText("Callstack", v),
			Key = columnNameToKey[v],
		}
		table.insert(tableColumns, currCol)
	end

	return Roact.createElement(Pane, {
		Size = UDim2.fromScale(1, 1),
		Style = "Box",
		Layout = Enum.FillDirection.Vertical,
		Padding = 5,
	}, {
		HeaderView = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 0, Constants.HEADER_HEIGHT),
			Padding = 5,
			Spacing = 10,
			LayoutOrder = 1,
			Style = "Box",
			Layout = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
		}, {			
			ColumnDropdown = Roact.createElement(CallstackDropdownField, {
				LayoutOrder = 1,
				AutomaticSize = Enum.AutomaticSize.X,
			})
		}),
		BodyView = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 1, -1 * Constants.HEADER_HEIGHT),
			Padding = 5,
			LayoutOrder = 2,
			Style = "Box",
		}, {
			TableView = Roact.createElement(TreeTable, {
				Scroll = false,  
				Size = UDim2.fromScale(1, 1),
				Columns = tableColumns,
				RootItems = props.RootItems,
				Stylizer = style,
				Expansion = props.ExpansionTable,
				GetChildren = self.getTreeChildren,
				DisableTooltip = false,
				OnSelectionChange = self.onSelectionChange,
				RightClick = FFlagDevFrameworkAddRightClickEventToPane and self.onRightClick,
				OnExpansionChange = self.onExpansionChange,
				FullSpan = FFlagDevFrameworkTableAddFullSpanFunctionality and true,
			})
		}),
	})
end

-- RoactRodux Connection
CallstackComponent = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
	PluginActions = PluginActions,
	Plugin = Plugin,
})(CallstackComponent)

CallstackComponent = RoactRodux.connect(
	function(state, props)
		if state.Common.currentThreadId == -1 then
			return {
				RootItems = {},
				CurrentThreadId = nil,
			}
		else
			
			assert(#state.Common.debuggerStateTokenHistory >= 1)
			local common = state.Common
			local callstack = state.Callstack
			local currentThreadId = common.currentThreadId
			local address = common.debuggerStateTokenHistory[#common.debuggerStateTokenHistory]
			local callstackVars = callstack.stateTokenToCallstackVars[address]
			assert(callstackVars)
			local threadList = callstackVars.threadList

			local rootList = {}
			local expansionTable = nil
			for _, threadInfo in ipairs(threadList) do
				local rootItem = makeCallstackRootItem(threadInfo, common, callstackVars)
				table.insert(rootList, rootItem)
				if (threadInfo.threadId == currentThreadId) then
					expansionTable = {[rootItem] = true}
				end
			end

			return {
				RootItems = rootList,
				CurrentThreadId = currentThreadId,
				ExpansionTable = expansionTable,
				ColumnFilter = callstack.listOfEnabledColumns,
			}
		end
	end,

	function(dispatch)
		return {
			setCurrentFrameNumber = function(threadId, frameNumber)
				return dispatch(SetCurrentFrameNumber(threadId, frameNumber))
			end,
			onExpansionClicked = function(threadId)
				return dispatch(SetCurrentThread(threadId))
			end,
		}
	end
)(CallstackComponent)

return CallstackComponent
