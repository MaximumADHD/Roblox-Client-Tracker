--[[
	Connects to Run and Selection services in order to detect
	when a user has selected an instance in either the Workspace
	Viewport or the Explorer.
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)

local PluginContext = require(Plugin.SrcDeprecated.Context.Plugin)
local getPlugin = PluginContext.getPlugin

local UpdateRootInstance = require(Plugin.SrcDeprecated.Thunks.UpdateRootInstance)
local RigUtils = require(Plugin.SrcDeprecated.Util.RigUtils)
local ErrorDialogContents = require(Plugin.SrcDeprecated.Components.BlockingDialog.ErrorDialogContents)

local showBlockingDialog = require(Plugin.SrcDeprecated.Util.showBlockingDialog)

local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local Selection = game:GetService("Selection")
local InstanceSelector = Roact.PureComponent:extend("InstanceSelector")

local function getModel(instance)
	if not instance or instance == game.Workspace then
		return nil
	end

	if instance:IsA("Model") then
		return instance
	else
		return getModel(instance.Parent)
	end
end

local function isInWorkspace(instance)
	return instance:FindFirstAncestor(game.Workspace.Name) ~= nil
end

local function getSelectedInstance()
	if #Selection:Get() > 0 then
		return Selection:Get()[1]
	end
end

local function getMouseTarget(self)
	return getPlugin(self):GetMouse().Target
end

local function isValidRig(instance)
	return instance and isInWorkspace(instance) and RigUtils.getAnimationController(instance) ~= nil
end

function InstanceSelector:isCurrentRootInstance(instance)
	return instance == self.props.RootInstance
end

function InstanceSelector:selectValidInstance(validFunc, invalidFunc)
	local target = getMouseTarget(self)
	if target ~= nil then
		local model = getModel(target)
		if model and not self:isCurrentRootInstance(model) and isValidRig(model) then
			validFunc(model)
		else
			invalidFunc()
		end
	end
end

function InstanceSelector:showErrorDialogs(plugin, errorList)
	for _, errorEntry in ipairs(errorList) do
		local data = errorEntry.Data or {}
		local names = {}
		for index, dataEntry in ipairs(data) do
			names[index] = dataEntry.Name
		end
		showBlockingDialog(plugin, Roact.createElement(ErrorDialogContents, {
			ErrorType = errorEntry.ID,
			Entries = names,
		}))
	end
end

function InstanceSelector:init()
	self.state = {
		HoverPart = nil
	}

	self.selectInstance = function(instance)
		Selection:Set({instance})
	end

	self.deselect = function()
		Selection:Set({})
	end

	self.highlightInstance = function(instance)
		self:setState({
			HoverPart = instance,
		})
	end

	self.removeHighlight = function()
		self:setState({
			HoverPart = Roact.None,
		})
	end

	local plugin = getPlugin(self)
	if plugin then
		plugin:Activate(true)

		self.MouseButtonDown = plugin:GetMouse().Button1Down:Connect(function()
			self:selectValidInstance(self.selectInstance, self.deselect)
		end)
	end

	self.SelectionChangedHandle = Selection.SelectionChanged:Connect(function()
		local selectedInstance = getSelectedInstance()
		local rigInstance = getModel(selectedInstance)

		if isValidRig(rigInstance) and not self:isCurrentRootInstance(rigInstance) then
			local hasErrors, errorList = RigUtils.rigHasErrors(rigInstance)
			if not hasErrors then
				self.props.UpdateRootInstance(rigInstance)
				self.deselect()
			else
				plugin:Deactivate()
				self:showErrorDialogs(plugin, errorList)
			end
		elseif selectedInstance then
			plugin:Deactivate()
		end
	end)
end

function InstanceSelector:didMount()
	self.deselect()

	self.Heartbeat = RunService.Heartbeat:Connect(function(step)
		self:selectValidInstance(self.highlightInstance, self.removeHighlight)
	end)
end

function InstanceSelector:render()
	local state = self.state
	local props = self.props

	local hoverPart = state.HoverPart
	local container = props.Container or CoreGui

	return Roact.createElement(Roact.Portal, {
		target = container,
	}, {
		HoverBox = hoverPart and Roact.createElement("SelectionBox", {
			Archivable = false,
			Adornee = hoverPart,
			LineThickness = 0.1,
		}),
	})
end

function InstanceSelector:willUnmount()
	if self.Heartbeat then
		self.Heartbeat:Disconnect()
	end

	if self.SelectionChangedHandle then
		self.SelectionChangedHandle:Disconnect()
	end

	if self.MouseButtonDown then
		self.MouseButtonDown:Disconnect()
	end

	if getPlugin(self) then
		getPlugin(self):Deactivate()
	end
end

local function mapStateToProps(state, props)
	return{
		RootInstance = state.Status.RootInstance,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		UpdateRootInstance = function(rootInstance)
			dispatch(UpdateRootInstance(rootInstance))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(InstanceSelector)