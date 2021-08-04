local Plugin = script.Parent.Parent.Parent.Parent
-- local Types = require(Plugin.Src.Types) -- Uncomment to access types
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization
local TextService = game:GetService("TextService")

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel
local TreeTable = UI.TreeTable
local SelectInputField = require(script.Parent.SelectInputField)

local Actions = Plugin.Src.Actions
local SetCurrentFrameNumber = require(Actions.Callstack.SetCurrentFrameNumber)

local CallstackComponent = Roact.PureComponent:extend("CallstackComponent")

-- Constants
local HEADER_HEIGHT = 40

-- Local Functions
local function calculateTextSize(text, textSize, font)
	local frameNoWrapping = Vector2.new(0, 0)
	return TextService:GetTextSize(text, textSize, font, frameNoWrapping)
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
			Name = localization:getText("Callstack", "WhatColumn"),
			Key = "whatColumn",
		}, {
			Name = localization:getText("Callstack", "FunctionNameColumn"),
			Key = "functionNameColumn",
		}, {
			Name = localization:getText("Callstack", "LineNumberColumn"),
			Key = "lineNumberColumn",
		}, {
			Name = localization:getText("Callstack", "SourceColumn"),
			Key = "sourceColumn",
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
			Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
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
			}, {
				SelectInputView = Roact.createElement(SelectInputField, {
					Size = UDim2.new(1, 0, 1, 0),
					PlaceholderText = localization:getText("Callstack", "SelectInputPlaceholderText"),
				})
			}),
		}),

		BodyView = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 1, -1 * HEADER_HEIGHT),
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
			local address = state.Common.debuggerStateTokenHistory[#state.Common.debuggerStateTokenHistory]
			local callstackVars = state.Callstack.stateTokenToCallstackVars[address]
			local frameList = callstackVars and callstackVars.threadIdToFrameList and callstackVars.threadIdToFrameList[currentThreadId]
			return {
				RootItems = frameList or {},
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
