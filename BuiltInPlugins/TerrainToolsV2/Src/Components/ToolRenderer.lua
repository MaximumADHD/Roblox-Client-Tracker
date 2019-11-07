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

local Tools = script.Parent.Tools
local Generate = require(Tools.Generate)
local Import = require(Tools.Import)
local SeaLevel = require(Tools.SeaLevel)
local Clear = require(Tools.Clear)
local Region = require(Tools.Region)
local Fill = require(Tools.Fill)
local Add = require(Tools.Add)
local Subtract = require(Tools.Subtract)
local Grow = require(Tools.Grow)
local Erode = require(Tools.Erode)
local Smooth = require(Tools.Smooth)
local Flatten = require(Tools.Flatten)
local Paint = require(Tools.Paint)

local Actions = Plugin.Src.Actions
local ChangeTool = require(Actions.ChangeTool)

local Functions = Plugin.Src.Components.Functions
local TerrainGeneration = require(Functions.TerrainGeneration)
local TerrainRegionEditor = require(Functions.TerrainRegionEditor)
local TerrainImporter = require(Functions.TerrainImporter)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

local toolToScript = {
	[ToolId.Generate] = TerrainGeneration,
	[ToolId.Import] = TerrainImporter,
	[ToolId.Clear] = TerrainGeneration,

	[ToolId.Select] = TerrainRegionEditor,
	[ToolId.Move] = TerrainRegionEditor,
	[ToolId.Resize] = TerrainRegionEditor,
	[ToolId.Rotate] = TerrainRegionEditor,
	[ToolId.Copy] = TerrainRegionEditor,
	[ToolId.Paste] = TerrainRegionEditor,
	[ToolId.Delete] = TerrainRegionEditor,
	[ToolId.Fill] = TerrainRegionEditor,
}

local toolComponent = {
	[ToolId.Generate] = Generate,
	[ToolId.Import] = Import,
	[ToolId.SeaLevel] = SeaLevel,
	[ToolId.Clear] = Clear,

	[ToolId.Select] = Region,
	[ToolId.Move] = Region,
	[ToolId.Resize] = Region,
	[ToolId.Rotate] = Region,
	[ToolId.Copy] = Region,
	[ToolId.Paste] = Region,
	[ToolId.Delete] = Region,
	[ToolId.Fill] = Fill,

	[ToolId.Add] = Add,
	[ToolId.Subtract] = Subtract,

	[ToolId.Grow] = Grow,
	[ToolId.Erode] = Erode,
	[ToolId.Smooth] = Smooth,
	[ToolId.Flatten] = Flatten,

	[ToolId.Paint] = Paint,
}

local function ToggleTool(toolName, mouse, plugin, theme, localization)
	local currentToolScript = toolToScript[toolName]
	if currentToolScript ~= TerrainRegionEditor then
		TerrainRegionEditor.Close()
	end

	-- brushes are handled in base brush, the scripts really should be factored out of this
	if toolName == ToolId.None then
		return
	end

	-- ensures only the plugin uses the mouse
	plugin:Activate(true)

	if toolName and toolName ~= ToolId.None then
		if currentToolScript then
			coroutine.wrap(function()
				currentToolScript.Init(toolName, mouse)
			end)()
		end
	end
end


local ToolRenderer = Roact.PureComponent:extend(script.Name)
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
	if self.props.currentTool == ToolId.Delete or
		self.props.currentTool == ToolId.Paste or
		self.props.currentTool == ToolId.Copy then
		self.props.dispatchChangeTool(previousProps.currentTool)
	end
end

function ToolRenderer:render()
	local currentTool = self.props.currentTool
	local layoutOrder = self.props.LayoutOrder
	local roactElement = toolComponent[currentTool]

	return withLocalization(function(localization)
		return withTheme(function(theme)
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
				Tool = roactElement and Roact.createElement(roactElement),
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
