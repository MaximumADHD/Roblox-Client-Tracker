local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = require(Plugin.Src.ContextItems)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

local ToolSelectionListener = Roact.PureComponent:extend(script.Name)

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

function ToolSelectionListener:render()
	assert(not self.props[Roact.Children], "ToolSelectionListener can't have children")
	return nil
end


ToolSelectionListener = withContext({
	Analytics = ContextServices.Analytics,
	PluginActivationController = ContextItems.PluginActivationController,
})(ToolSelectionListener)



local function mapStateToProps(state, props)
	return {
		currentTab = state.Tools.currentTab,
		currentTool = state.Tools.currentTool,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(ToolSelectionListener)
