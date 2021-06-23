local Plugin = script.Parent.Parent.Parent.Parent
-- local Types = require(Plugin.Src.Types) -- Uncomment to access types
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization
local TextService = game:GetService("TextService")

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local SelectInput = UI.SelectInput
local TextLabel = UI.Decoration.TextLabel
local TreeTable = UI.TreeTable

local main = script.Parent.Parent.Parent.Parent
local Components = main.Src.Components
local CallstackRow = require(Components.Callstack.CallstackRow)
local CallstackComponent = Roact.PureComponent:extend("CallstackComponent")
local SelectInputField = Roact.PureComponent:extend("SelectInputField")

-- Constants
local ICON_SIZE = UDim2.new(0, 14, 0, 14)
local ICON_PATH = "rbxasset://textures/Debugger/debugger_arrow.png"
local HEADER_HEIGHT = 40
local TEST_ROW_NO_IMAGE = {
	ArrowColumn = "",
	FrameColumn = "a",
	WhatColumn = "b",
	FunctionNameColumn = "c",
	LineNumberColumn = "d",
	SourceColumn = "e",
}
local TEST_ROW_IMAGE = {
	ArrowColumn = {
		Value = "",
		LeftIcon = {
			Image = ICON_PATH,
			Size = ICON_SIZE
		},
	},
	FrameColumn = "a",
	WhatColumn = "b",
	FunctionNameColumn = "c",
	LineNumberColumn = "d",
	SourceColumn = "e",
}

function SelectInputField:init()
	self.state = {
		currentIndex = nil,
	}
	self.selectItem = function(_, index)
		self:setState({
			currentIndex = index,
		})
	end
end

function SelectInputField:render()
	return Roact.createElement(SelectInput, {
		Size = self.props.Size,
		Items = self.props.Items,
		PlaceholderText = self.props.PlaceholderText,
		SelectedIndex = self.state.currentIndex,
		OnItemActivated = self.selectItem,
	})
end

local function calculateTextSize(text, textSize, font)
	local frameNoWrapping = Vector2.new(0, 0)
	return TextService:GetTextSize(text, textSize, font, frameNoWrapping)
end

local function generateSampleTable(numRows)
	local tab = {}
	for i = 1,numRows,1 do 
		if (i % 2 == 0) then 
			table.insert(tab, CallstackRow.fromData(TEST_ROW_NO_IMAGE)) 
		else 
			table.insert(tab, CallstackRow.fromData(TEST_ROW_IMAGE))
		end
	end
	return tab
end

function CallstackComponent:init()
	self.getTreeChildren = function(item)
		return item.children or {}
	end
end

function CallstackComponent:render()
	local props = self.props
	local localization = props.Localization
	local style = self.props.Stylizer
	
	local selectInputItems = {
		"Script 1",
		"Script 2",
		"Script 3",
		"Script 4",
		"Script 5",
		"Script 6",
		"Script 7",
		"Script 8",
		"Script 9",
		"Script 10",
	}
	local tableColumns = {
		{
			Name = "",
			Key = "ArrowColumn",
		},
		{
			Name = localization:getText("Callstack", "FrameColumn"),
			Key = "FrameColumn",
		}, {
			Name = localization:getText("Callstack", "WhatColumn"),
			Key = "WhatColumn",
		}, {
			Name = localization:getText("Callstack", "FunctionNameColumn"),
			Key = "FunctionNameColumn",
		}, {
			Name = localization:getText("Callstack", "LineNumberColumn"),
			Key = "LineNumberColumn",
		}, {
			Name = localization:getText("Callstack", "SourceColumn"),
			Key = "SourceColumn",
		}
	}
	local tableRows = generateSampleTable(20)
	local textSize = calculateTextSize(localization:getText("Callstack", "CurrentScriptTitle"), style.TextSize, style.Font)
		
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
					Items = selectInputItems,
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
				RootItems = tableRows,
				Columns = tableColumns,
				Stylizer = style,
				Expansion = {},
				GetChildren = self.getTreeChildren,
			})
		}),
	})
end

ContextServices.mapToProps(CallstackComponent, {
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})

return CallstackComponent
