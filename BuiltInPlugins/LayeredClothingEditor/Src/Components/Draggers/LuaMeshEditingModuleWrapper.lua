--[[
	Wrapper around DraggerToolComponent for the editor. Maps necesssary data from store to dragger context.
	Studio dragger functionality is overriden to support dragging vertices while this component is active.
	Sets up it's own undo/redo stack since manipulating vertices isn't supported by studio undo/redo.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local LuaMeshEditingModule = require(Plugin.Packages.LuaMeshEditingModule)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local MeshEditingComponent = require(LuaMeshEditingModule.Components.MeshEditingComponent)
local LuaMeshEditingModuleContext = AvatarToolsShared.Contexts.LuaMeshEditingModuleContext

local SetControlsPanelBlockerActivity = require(Plugin.Src.Actions.SetControlsPanelBlockerActivity)
local SetControlsPanelBlockerMessage = require(Plugin.Src.Actions.SetControlsPanelBlockerMessage)

local ChangeHistoryService = game:GetService("ChangeHistoryService")

local LuaMeshEditingModuleWrapper = Roact.PureComponent:extend("LuaMeshEditingModuleWrapper")

local draggerTypes = {
	Enum.RibbonTool.Select,
	Enum.RibbonTool.Move,
	Enum.RibbonTool.Scale,
	Enum.RibbonTool.Rotate,
}

local draggerTypeMap = {}
for index, draggerTypeEnum in ipairs(draggerTypes) do
	draggerTypeMap[draggerTypeEnum] = index
end

function LuaMeshEditingModuleWrapper:didMount()
	local props = self.props

	local plugin = props.Plugin:get()
	plugin:Activate(true)

	self.toolChangedHandle = self.props.LuaMeshEditingModuleContext:getToolChangedSignal():Connect(function()
		-- force a re-render
		self:setState({temp = {}})
	end)

	-- If we deactivated because the user selected a ribbon tool,
	-- it is likely they were trying to use move/rotate in the editor.
	-- Use it to switch the current tool.
	self.onToolSelected = function(tool)
		local vertexToolBase = self.props.LuaMeshEditingModuleContext:getCurrentTool()
		-- have to check specifically for these because Enum.RibbonTool has other items we do not want
		if tool == Enum.RibbonTool.Select
			or tool == Enum.RibbonTool.Rotate
			or tool == Enum.RibbonTool.Move
			or tool == Enum.RibbonTool.Scale then

			task.delay(0, function()
				plugin:Activate(true)
			end)
			if vertexToolBase then
				vertexToolBase:setCurrentHandle(tool)
			end
			return true
		end
	end

	self.deactivationListener = plugin.Deactivation:Connect(function()
		local tool = plugin:GetSelectedRibbonTool()
		if tool ~= Enum.RibbonTool.None then
			if next(game:GetService("Selection"):Get()) == nil then
				if self.onToolSelected(tool) then
					return
				end
			else
				self.props.LuaMeshEditingModuleContext:suspend()
				self.props.SetControlsPanelBlockerMessage(self.props.Localization:getText("Editor", "ResumeEditing"))
				self.props.SetControlsPanelBlockerActivity(true)
			end
		end
	end)

	local undoAction = props.PluginActions:get("Undo")
	if undoAction then
		undoAction.Enabled = true
		self.undoHandle = undoAction.Triggered:Connect(function()
			local vertexToolBase = self.props.LuaMeshEditingModuleContext:getCurrentTool()
			if vertexToolBase then
				vertexToolBase:undo()
			end
		end)
	end

	local redoAction = props.PluginActions:get("Redo")
	if redoAction then
		redoAction.Enabled = true
		self.redoHandle = redoAction.Triggered:Connect(function()
			local vertexToolBase = self.props.LuaMeshEditingModuleContext:getCurrentTool()
			if vertexToolBase then
				vertexToolBase:redo()
			end
		end)
	end

	ChangeHistoryService:SetEnabled(false)
end

function LuaMeshEditingModuleWrapper:render()
	local props = self.props

	local mouse = props.Mouse:get()
	local plugin = props.Plugin:get()
	local vertexToolBase = props.LuaMeshEditingModuleContext:getCurrentTool()

	if vertexToolBase ~= nil then
		return Roact.createElement(MeshEditingComponent, {
			Mouse = mouse,
			Plugin = plugin,
			VertexToolBase = vertexToolBase,
		})
	else
		return nil
	end
end

function LuaMeshEditingModuleWrapper:willUnmount()
	local props = self.props

	local undoAction = props.PluginActions:get("Undo")
	local redoAction = props.PluginActions:get("Redo")

	if undoAction then
		undoAction.Enabled = false
	end

	if redoAction then
		redoAction.Enabled = false
	end

	if self.deactivationListener then
		self.deactivationListener:Disconnect()
	end

	if self.undoHandle then
		self.undoHandle:Disconnect()
	end

	if self.redoHandle then
		self.redoHandle:Disconnect()
	end

	if self.toolChangedHandle then
		self.toolChangedHandle:Disconnect()
	end

	ChangeHistoryService:SetEnabled(true)
end

local function mapStateToProps(state, props)
	local selectItem = state.selectItem

	return {
		EditingCage = selectItem.editingCage,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetControlsPanelBlockerActivity = function(isActive)
			dispatch(SetControlsPanelBlockerActivity(isActive))
		end,

		SetControlsPanelBlockerMessage = function(message)
			dispatch(SetControlsPanelBlockerMessage(message))
		end,
	}
end

LuaMeshEditingModuleWrapper = withContext({
	Plugin = ContextServices.Plugin,
	PluginActions = ContextServices.PluginActions,
	Localization = ContextServices.Localization,
	LuaMeshEditingModuleContext = LuaMeshEditingModuleContext,
	Mouse = ContextServices.Mouse,
})(LuaMeshEditingModuleWrapper)

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(LuaMeshEditingModuleWrapper)
