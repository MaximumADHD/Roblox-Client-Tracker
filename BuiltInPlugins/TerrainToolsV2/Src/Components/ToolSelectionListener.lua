local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

local TerrainInterface = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.TerrainInterface)
	or nil

local ToolSelectionListener = Roact.PureComponent:extend(script.Name)

if FFlagTerrainToolsUseDevFramework then
	function ToolSelectionListener:didUpdate(previousProps, previousState)
		if previousProps.currentTab ~= self.props.currentTab then
			self.props.Analytics:report("changeTab", self.props.currentTab)
		end
		if previousProps.currentTool ~= self.props.currentTool and self.props.currentTool ~= ToolId.None then
			self.props.Analytics:report("changeTool", self.props.currentTool)
		end

		if self.props.currentTool == ToolId.None then
			self.props.PluginActivationController:deselectTool()
		else
			self.props.PluginActivationController:activateTool(self.props.currentTool)
		end
	end

else
	function ToolSelectionListener:init()
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
end

function ToolSelectionListener:render()
	assert(not self.props[Roact.Children], "ToolSelectionListener can't have children")
	return nil
end

if FFlagTerrainToolsUseDevFramework then
	ContextServices.mapToProps(ToolSelectionListener, {
		Analytics = ContextServices.Analytics,
		PluginActivationController = ContextItems.PluginActivationController,
	})
end

local function mapStateToProps(state, props)
	return {
		currentTab = state.Tools.currentTab,
		currentTool = state.Tools.currentTool,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(ToolSelectionListener)
