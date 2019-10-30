--[[
	Controls which ToolButtons show for each tab and sizes its frame appropriately
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local UILibrary = Plugin.Packages.UILibrary
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization

local Components = Plugin.Src.Components
local ToolButton = require(Components.ToolButton)

local StudioPlugin = require(Plugin.Src.ContextServices.StudioPlugin)

local Actions = Plugin.Src.Actions
local ChangeTool = require(Actions.ChangeTool)

local ToolManager = Roact.Component:extend(script.Name)

local tabLookup = {
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
		local currentTab = self.props.CurrentTab or "Create"
		local currentTool = self.props.currentTool
		local layoutOrder = self.props.LayoutOrder

		local tools = {}

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