local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

local TerrainInterface = require(Plugin.Src.ContextServices.TerrainInterface)

local ToolSelectionListener = Roact.PureComponent:extend(script.Name)

function ToolSelectionListener:init(initialProps)
	self.pluginActivationController = TerrainInterface.getPluginActivationController(self)
	assert(self.pluginActivationController, "ToolSelectionListener requires a PluginActivationController from context")
end

function ToolSelectionListener:didUpdate(previousProps, previousState)
	if self.props.currentTool == ToolId.None then
		self.pluginActivationController:deselectTool()
	else
		self.pluginActivationController:activateTool(self.props.currentTool)
	end
end

function ToolSelectionListener:render()
	assert(not self.props[Roact.Children], "ToolSelectionListener can't have children")
	return nil
end

local function mapStateToProps(state, props)
	return {
		currentTool = state.Tools.currentTool,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(ToolSelectionListener)
