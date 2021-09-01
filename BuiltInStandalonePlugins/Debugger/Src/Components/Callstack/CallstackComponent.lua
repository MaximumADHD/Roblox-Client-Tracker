local Plugin = script.Parent.Parent.Parent.Parent
-- local Types = require(Plugin.Src.Types) -- Uncomment to access types
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization
local PluginActions = ContextServices.PluginActions
local TextService = game:GetService("TextService")

local Stylizer = Framework.Style.Stylizer

local Util = Framework.Util
local deepCopy = Util.deepCopy

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel
local TreeTable = UI.TreeTable
local SelectInputField = require(script.Parent.SelectInputField)

local Actions = Plugin.Src.Actions
local SetCurrentFrameNumber = require(Actions.Callstack.SetCurrentFrameNumber)

local Models = Plugin.Src.Models
local CallstackRow = require(Models.CallstackRow)

local CallstackComponent = Roact.PureComponent:extend("CallstackComponent")

local Constants = require(Plugin.Src.Util.Constants)

-- Local Functions
local function calculateTextSize(text, textSize, font)
	local frameNoWrapping = Vector2.new(0, 0)
	return TextService:GetTextSize(text, textSize, font, frameNoWrapping)
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
	self:addAction(pluginActions:get(Constants.ActionIds.CopySelected), self.copySelectedRow)
	self:addAction(pluginActions:get(Constants.ActionIds.DeleteSelected), self.deleteSelectedRow)
	self:addAction(pluginActions:get(Constants.ActionIds.SelectAll), self.selectAll)
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
	self.getTreeChildren = function(item)
		return item.children or {}
	end
	
	self.onSelectionChange = function(selection)
		local props = self.props
		for rowInfo in pairs(selection) do
			local threadId = props.CurrentThreadId
			local frameNumber = rowInfo.frameColumn
			props.setCurrentFrameNumber(threadId, frameNumber)
		end
	end

	self.copySelectedRow = function()
		print('Todo RIDE-5594')
	end

	self.deleteSelectedRow = function ()
		print('Todo RIDE-5596')
	end
	
	self.selectAll = function ()
		print('Todo RIDE-5595')
	end
end

function CallstackComponent:render()
	local props = self.props
	local localization = props.Localization
	local style = self.props.Stylizer
	
	local textSize = calculateTextSize(localization:getText("Callstack", "CurrentScriptTitle"), style.TextSize, style.Font)
	local tableColumns = {
		{
			Name = "",
			Key = "arrowColumn",
		},
		{
			Name = localization:getText("Callstack", "FrameColumn"),
			Key = "frameColumn",
		}, {
			Name = localization:getText("Callstack", "LayerColumn"),
			Key = "layerColumn",
		}, {
			Name = localization:getText("Callstack", "SourceColumn"),
			Key = "sourceColumn",
		}, {
			Name = localization:getText("Callstack", "FunctionColumn"),
			Key = "functionColumn",
		}, {
			Name = localization:getText("Callstack", "LineColumn"),
			Key = "lineColumn",
		}
	}
	
	return Roact.createElement(Pane, {
		Size = UDim2.fromScale(1, 1),
		Style = "Box",
		Layout = Enum.FillDirection.Vertical,
		Padding = 5,
	}, {
		HeaderView = Roact.createElement(Pane, {
			Padding = 5,
			Spacing = 10,
			Size = UDim2.new(1, 0, 0, Constants.HEADER_HEIGHT),
			Style = "Box",
			Layout = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}, {
			TextViewWrapper = Roact.createElement(Pane, {
				Size = UDim2.new(0, textSize.X, 1, 0),
				LayoutOrder = 1,
			}, {
				TextView = Roact.createElement(TextLabel, {
					Size = UDim2.new(1, 0, 1, 0),
					Text = localization:getText("Callstack", "CurrentScriptTitle"),
				})
			}),
			SelectInputViewWrapper = Roact.createElement(Pane, {
				Size = UDim2.new(1, -textSize.X, 1, 0),
				LayoutOrder = 2,
				Style = "BorderBox",
				Padding = 2,
				BorderColor = style.BorderColor,
			}, {
				SelectInputView = Roact.createElement(SelectInputField, {
					Size = UDim2.new(1, 0, 1, 0),
					PlaceholderText = localization:getText("Callstack", "SelectInputPlaceholderText"),
				})
			}),
		}),

		BodyView = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 1, -1 * Constants.HEADER_HEIGHT),
			Padding = 5,
			Style = "Box",
		}, {
			TableView = Roact.createElement(TreeTable, {
				Scroll = true,  
				Size = UDim2.fromScale(1, 1),
				Columns = tableColumns,
				RootItems = props.RootItems,
				Stylizer = style,
				Expansion = {},
				GetChildren = self.getTreeChildren,
				DisableTooltip = false,
				OnSelectionChange = self.onSelectionChange,
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
			local currentThreadId = state.Common.currentThreadId
			local currentFrameNumber = state.Common.threadIdToCurrentFrameNumber[currentThreadId]
			
			local address = state.Common.debuggerStateTokenHistory[#state.Common.debuggerStateTokenHistory]
			local callstackVars = state.Callstack.stateTokenToCallstackVars[address]
			local frameList = callstackVars and callstackVars.threadIdToFrameList and callstackVars.threadIdToFrameList[currentThreadId]
			
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
				RootItems = frameListCopy or {},
				CurrentThreadId = currentThreadId,
			}
		end
	end,

	function(dispatch)
		return {
			setCurrentFrameNumber = function(threadId, frameNumber)
				return dispatch(SetCurrentFrameNumber(threadId, frameNumber))
			end,
		}
	end
)(CallstackComponent)

return CallstackComponent
