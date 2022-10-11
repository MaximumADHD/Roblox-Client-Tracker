--[[
	Container for Editor/Tool components

	Props:
		string ToolMode: Determines what tool (Point, Lattice, etc) the plugin is using. Comes from mapStateToProps
		callback SetToolMode: function to change tool, provided via mapDispatchToProps
		table Signals: A Signals ContextItem, which is provided via withContext.
		EnumItem EditingCage: Is the current cage being edited the Inner/Outer cage, or neither. Comes from mapStateToProps
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local SignalsContext = AvatarToolsShared.Contexts.Signals
local LuaMeshEditingModuleContext = AvatarToolsShared.Contexts.LuaMeshEditingModuleContext

local MeshPartTool = require(Plugin.Src.Components.MeshPartTool)
local LuaMeshEditingModuleWrapper = require(Plugin.Src.Components.Draggers.LuaMeshEditingModuleWrapper)

local SetToolMode = require(Plugin.Src.Actions.SetToolMode)

local Constants = require(Plugin.Src.Util.Constants)
local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local EditorToolsManager = Roact.PureComponent:extend("EditorToolsManager")

local WorkspaceEditorControls = require(Plugin.Src.Components.Editor.WorkspaceEditorControls)

local Util = Framework.Util

function EditorToolsManager:init()
	self.editorFrameRef = Roact.createRef()

	self.onToolChange = function(toolMode)
		self.props.SetToolMode(toolMode)
		self.props.Signals:get(Constants.SIGNAL_KEYS.SelectionChanged):Fire()
		self.props.Signals:get(Constants.SIGNAL_KEYS.ToolChanged):Fire()
	end
end

function EditorToolsManager:render()
	local props = self.props
	local toolMode = props.ToolMode
	local size = props.Size
	local editingCage = props.EditingCage
	local layoutOrder = props.LayoutOrder

	local meshPartMode = editingCage == Constants.EDIT_MODE.Mesh
	local isEditing = editingCage ~= nil and not meshPartMode
	local isTesting = DebugFlags.RunRhodiumTests() or DebugFlags.RunTests()

	return Roact.createFragment({
		WorkspaceEditorControls = Roact.createElement(WorkspaceEditorControls),
		MeshPartTool = meshPartMode and Roact.createElement(MeshPartTool),
		LuaMeshEditingModuleWrapper = not isTesting and isEditing and Roact.createElement(LuaMeshEditingModuleWrapper) or nil,
	})
end

function EditorToolsManager:willUpdate(nextProps)
	local toolChanged = false
	local context = self.props.LuaMeshEditingModuleContext
	if nextProps.ToolMode ~= self.props.ToolMode then
		if nextProps.ToolMode == Constants.TOOL_MODE.Point or nextProps.ToolMode == Constants.TOOL_MODE.Lattice then
			context:setCurrentTool(nextProps.ToolMode)
			toolChanged = true
		elseif nextProps.ToolMode ~= Constants.TOOL_MODE.Reset then
			context:setCurrentTool(nil)
			toolChanged = true
		end
	end

	context:changeEditingCage(nextProps.EditingCage)

	if toolChanged then
		if nextProps.ToolMode ~= self.props.ToolMode then
			context:getToolChangedSignal():Fire()
		end
	end
end

function EditorToolsManager:willUnmount()
	local context = self.props.LuaMeshEditingModuleContext
	if context then
		context:setCurrentTool(nil)
	end
end

EditorToolsManager = withContext({
	LuaMeshEditingModuleContext = LuaMeshEditingModuleContext,
	Signals = SignalsContext,
})(EditorToolsManager)



local function mapStateToProps(state, props)
	local status = state.status
	local cageData = state.cageData
	local selectItem = state.selectItem

	return {
		ToolMode = status.toolMode,
		EditingCage = selectItem.editingCage,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetToolMode = function(toolMode)
			dispatch(SetToolMode(toolMode))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(EditorToolsManager)
