--[[
	Controls which ToolButtons show for each tab and sizes its frame appropriately
]]

local FFlagTerrainToolsConvertPartTool = game:GetFastFlag("TerrainToolsConvertPartTool")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local TabId = TerrainEnums.TabId
local ToolId = TerrainEnums.ToolId

local Components = Plugin.Src.Components
local ToolButton = require(Components.ToolButton)

local Actions = Plugin.Src.Actions
local ChangeTool = require(Actions.ChangeTool)

local ToolManager = Roact.PureComponent:extend(script.Name)

local tabLookup = {
	[TabId.Create] = {
		ToolId.Generate, ToolId.Import, ToolId.Clear
	},
	[TabId.Region] = {
		ToolId.Select, ToolId.Move, ToolId.Resize, ToolId.Rotate,
		ToolId.Copy, ToolId.Paste, ToolId.Delete, ToolId.Fill
	},
	[TabId.Edit] = {
		ToolId.Add, ToolId.Subtract,
		ToolId.Grow, ToolId.Erode, ToolId.Smooth, ToolId.Flatten,
		ToolId.Paint, ToolId.SeaLevel, ToolId.Replace
	},
}

if FFlagTerrainToolsConvertPartTool then
	-- Put between import and clear
	-- When removing flag, put this straight into the tabLookup table
	table.insert(tabLookup[TabId.Create], 3, ToolId.ConvertPart)
end

function ToolManager:init()
	self.layoutRef = Roact.createRef()
	self.mainFrameRef = Roact.createRef()

	self.onContentSizeChanged = function()
		local mainFrame = self.mainFrameRef.current
		local layout = self.layoutRef.current
		if mainFrame and layout then
			mainFrame.Size = UDim2.new(1, 0, 0, layout.AbsoluteContentSize.Y)
		end
	end
end

function ToolManager:render()
	local currentTab = self.props.CurrentTab or TabId.Create
	local currentTool = self.props.currentTool
	local layoutOrder = self.props.LayoutOrder

	local tools = {}

	for i, toolId in ipairs(tabLookup[currentTab]) do
		tools[toolId] = Roact.createElement(ToolButton, {
			ToolId = toolId,
			LayoutOrder = i,
			OnClick = self.props.dispatchChangeTool,
			IsCurrentTool = currentTool == toolId,
		})
	end

	table.insert(tools,
		Roact.createElement("UIGridLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			CellSize = UDim2.new(0, 55, 0, 55),

			[Roact.Ref] = self.layoutRef,
			[Roact.Change.AbsoluteContentSize] = self.onContentSizeChanged,
		})
	)

	table.insert(tools,
		Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 4),
		})
	)

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 55),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		[Roact.Ref] = self.mainFrameRef,
	}, tools)
end

local function mapStateToProps(state, props)
	return {
		currentTool = state.Tools.currentTool,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchChangeTool = function (toolName)
			dispatch(ChangeTool(toolName))
		end
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ToolManager)
