--[[
	Controls which Tool is shown in the tool frame
	Handles all the bindings between the ui and the tool functionality
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local UILibrary = Plugin.Packages.UILibrary
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local StudioPlugin = require(Plugin.Src.ContextServices.StudioPlugin)

local ToolLookup = require(Plugin.Src.Components.ToolLookup)

local Actions = Plugin.Src.Actions
local InitializeActivator = require(Actions.InitializeActivator)
local ChangeTool = require(Actions.ChangeTool)

local ToolRenderer = Roact.Component:extend(script.Name)

local Functions = Plugin.Src.Components.Functions
local TerrainBrush = require(Functions.TerrainBrush)
local TerrainGeneration = require(Functions.TerrainGeneration)
local TerrainRegionEditor = require(Functions.TerrainRegionEditor)
local TerrainImporter = require(Functions.TerrainImporter)
local TerrainSmoother = require(Functions.TerrainSmoother)

local FFlagTerrainToolMetrics = settings():GetFFlag("TerrainToolMetrics")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local StudioService = game:GetService("StudioService")

local SCROLL_TOP_IMAGE = "rbxasset://textures/StudioToolbox/ScrollBarTop.png"
local SCROLL_MID_IMAGE = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"
local SCROLL_BOT_IMAGE = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png"

local toolToScript = {
	Generate = TerrainGeneration,
	Import = TerrainImporter,
	Clear = TerrainGeneration,

	Select = TerrainRegionEditor,
	Move = TerrainRegionEditor,
	Resize = TerrainRegionEditor,
	Rotate = TerrainRegionEditor,
	Copy = TerrainRegionEditor,
	Paste = TerrainRegionEditor,
	Delete = TerrainRegionEditor,
	Fill = TerrainRegionEditor,

	Add = TerrainBrush,
	Subtract = TerrainBrush,

	Grow = TerrainBrush,
	Erode = TerrainBrush,
	Smooth = TerrainBrush,
	Flatten = TerrainBrush,

	Paint = TerrainBrush,
}

local function ToggleTool(toolName, mouse, plugin, theme, localization)
	local currentToolScript = toolToScript[toolName]
	if currentToolScript ~= TerrainRegionEditor then
		TerrainRegionEditor.Close()
	end
	if currentToolScript ~= TerrainBrush then
		TerrainBrush.Close()
	end

	if toolName == "None" then
		return
	end

	-- ensures only the plugin uses the mouse
	plugin:Activate(true)

	if toolName and toolName ~= "None" then
		coroutine.wrap(function()
			currentToolScript.Init(toolName, mouse)
		end)()
	end

	if FFlagTerrainToolMetrics and AnalyticsService and StudioService then
		AnalyticsService:SendEventDeferred("studio", "TerrainEditorV2", "RegionTool", {
			userId = StudioService:GetUserId(),
			buttonName = toolName,
		})
	end
end

------------------------------
function ToolRenderer:init(initialProps)
	local plugin = StudioPlugin.getPlugin(self)
	self.state = {
		mouse = plugin:GetMouse()
	}

	self.scrollingRef = Roact.createRef()
	self.layoutRef = Roact.createRef()

	self.onContentSizeChanged = function()
		local scrollingFrame = self.scrollingRef.current
		local layout = self.layoutRef.current

		if scrollingFrame and layout then
			scrollingFrame.CanvasSize = UDim2.new(1, 0, 0, layout.AbsoluteContentSize.Y)
		end
	end
end

function ToolRenderer:willUpdate(nextProps, nextState)
	local plugin = StudioPlugin.getPlugin(self)
	-- this only toggles whether the tool's workspace ui is visible
	-- the initial paramters are passed the the modules in the
	-- components since each component knows how to retrieve its data
	-- from the Rodux store
	ToggleTool(nextProps.currentTool, self.state.mouse, plugin)
end

function ToolRenderer:didUpdate(previousProps, previousState)
	-- we use this to enable the use of these buttons as
	-- buttons and not as tools for the regions tools
	if self.props.currentTool == "Delete" or
		self.props.currentTool == "Paste" or
		self.props.currentTool == "Copy" then
		self.props.dispatchChangeTool(previousProps.currentTool)
	end
end

function ToolRenderer:render()
	local currentTool = self.props.currentTool
	local layoutOrder = self.props.LayoutOrder
	local roactElement = ToolLookup[currentTool]

	return withLocalization(function(localization)
		return withTheme(function(theme)
			--local plugin = StudioPlugin.getPlugin(self)
			--ToggleTool(currentTool, self.state.mouse, plugin, theme, localization)

			local toolRenderTheme = theme.toolRenderTheme
			return Roact.createElement("ScrollingFrame", {
				Size = UDim2.new(1, 0, 1, -140),
				CanvasSize = UDim2.new(),
				BackgroundTransparency = 1,
				LayoutOrder = layoutOrder,

				TopImage = toolRenderTheme.scrollTopImage,
				MidImage = toolRenderTheme.scrollMidImage,
				BottomImage = toolRenderTheme.scrollBotImage,
				VerticalScrollBarInset = toolRenderTheme.verticalScrollBarInset,
				BorderSizePixel = 0,

				[Roact.Ref] = self.scrollingRef,
			},{
				UIListLayout = Roact.createElement("UIListLayout", {
					[Roact.Ref] = self.layoutRef,
					[Roact.Change.AbsoluteContentSize] = self.onContentSizeChanged,
				}),
				Tool = roactElement,
			})
		end)
	end)
end

local function MapStateToProps (state, props)
	return {
		currentTool = state.Tools.currentTool,
	}
end
local function MapDispatchToProps(dispatch)
	return {
		dispatchChangeTool = function(tool)
			dispatch(ChangeTool(tool))
		end
	}
end

return RoactRodux.connect(MapStateToProps, MapDispatchToProps)(ToolRenderer)