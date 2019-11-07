--[[
	Controls which ToolButtons show for each tab and sizes its frame appropriately
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local UILibrary = Plugin.Packages.UILibrary
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local TabId = TerrainEnums.TabId
local ToolId = TerrainEnums.ToolId

local Components = Plugin.Src.Components
local ToolButton = require(Components.ToolButton)

local Actions = Plugin.Src.Actions
local ChangeTool = require(Actions.ChangeTool)

local FFlagTerrainToolsRefactorTabsAndTools = game:GetFastFlag("TerrainToolsRefactorTabsAndTools")

local ToolManager = Roact.PureComponent:extend(script.Name)

local tabLookup
if FFlagTerrainToolsRefactorTabsAndTools then
	tabLookup = {
		[TabId.Create] = {ToolId.Generate, ToolId.Import, ToolId.Clear},
		[TabId.Build] = {ToolId.Add, ToolId.Subtract},
		[TabId.Region] = {ToolId.Select, ToolId.Move, ToolId.Resize, ToolId.Rotate,
			ToolId.Copy, ToolId.Paste, ToolId.Delete, ToolId.Fill},
		[TabId.Sculpt] = {ToolId.Grow, ToolId.Erode, ToolId.Smooth, ToolId.Flatten},
		[TabId.Paint] = {ToolId.Paint},
	}

	if settings():GetFFlag("TerrainToolsSeaLevel") then
		-- Insert sea level between import and clear
		-- When removing flag, put this straight into the tabLookup table
		table.insert(tabLookup[TabId.Create], 3, ToolId.SeaLevel)
	end
else
	tabLookup = {
		Create = {"Generate", "Import", "Clear"},
		Build = {"Add", "Subtract"},
		Region = {"Select", "Move", "Resize", "Rotate", "Copy", "Paste", "Delete", "Fill"},
		Sculpt = {"Grow", "Erode", "Smooth", "Flatten"},
		Paint = {"Paint"},
	}
	local FFlagTerrainToolsSeaLevel = settings():GetFFlag("TerrainToolsSeaLevel")
	if FFlagTerrainToolsSeaLevel then
		-- insert sealevel tool between import and clear
		tabLookup["Create"][3] = "SeaLevel"
		tabLookup["Create"][4] = "Clear"
	end
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
	return withLocalization(function(localization)
		local currentTab = self.props.CurrentTab or TabId.Create
		local currentTool = self.props.currentTool
		local layoutOrder = self.props.LayoutOrder

		local tools = {}

		if FFlagTerrainToolsRefactorTabsAndTools then
			for i, toolId in ipairs(tabLookup[currentTab]) do
				tools[toolId] = Roact.createElement(ToolButton, {
					ToolId = toolId,
					LayoutOrder = i,
					OnClick = self.props.dispatchChangeTool,
					IsCurrentTool = currentTool == toolId,
				})
			end
		else
			for i, v in ipairs(tabLookup[currentTab]) do
				tools[v] = Roact.createElement(ToolButton, {
					Name = localization:getText("ToolName", v),
					LayoutOrder = i,
					OnClick = function()
						self.props.dispatchChangeTool(v)
					end,
					currentTool = currentTool,
				})
			end
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
	end)
end

local function MapStateToProps (state, props)
	return {
		currentTool = state.Tools.currentTool,
	}
end

local function MapDispatchToProps (dispatch)
	return {
		dispatchChangeTool = function (toolName)
			dispatch(ChangeTool(toolName))
		end
	}
end

return RoactRodux.connect(MapStateToProps, MapDispatchToProps)(ToolManager)
