--[[
	Component that helps to select instance from workspace viewport or explorer.
	Provides a hover box over the current selection.

	Required Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		Mouse Mouse: A Mouse ContextItem, which is provided via withContext.
		table Localization: A Localization ContextItem, which is provided via withContext.
		Plugin Plugin: A Plugin ContextItem, which is provided via withContext.
		callback IsSelectedInstanceValid: function to decide if the selected instance is valid
		callback OnValidSelection: function to do when select a valid instance
		callback OnInvalidSelection: function to do when select a invalid instance
]]

local Library = script.Parent.Parent
local Packages = Library.Parent
local Roact = require(Packages.Roact)

local Framework = require(Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

-- Connects to Run and Selection services in order to detect
-- when a user has selected an instance in either the Workspace
-- Viewport or the Explorer.
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local Selection = game:GetService("Selection")
local InstanceSelector = Roact.PureComponent:extend("InstanceSelector")

local Util = Framework.Util
local Typecheck = Util.Typecheck
Typecheck.wrap(InstanceSelector, script)

function InstanceSelector:setSelectedInstance()
	if #Selection:Get() > 0 then
		local willSelectItem = Selection:Get()[1]
		if self.selectedItem ~= willSelectItem then
			self.selectedItem = willSelectItem
		end
	end
end

function InstanceSelector:getSelectedInstance()
	local previousSelectedItem = self.selectedItem
	self:setSelectedInstance()
	local selectedInstance = self.selectedItem
	if selectedInstance == previousSelectedItem then
		return nil
	end
	return selectedInstance
end

function InstanceSelector:getMouseTarget()
	return self.props.Mouse:get().Target
end

function InstanceSelector:selectValidInstance(validFunc, invalidFunc)
	local target = self:getMouseTarget()
	local isSelectedInstanceValid = self.props.IsSelectedInstanceValid
	if target ~= nil then
		if isSelectedInstanceValid(target) then
			validFunc(target)
		else
			invalidFunc(target)
		end
	end
end

function InstanceSelector:init()
	self.state = {
		hoverPart = nil
	}

	self.selectedItem = nil

	self.selectInstance = function(instance)
		Selection:Set({instance})
	end

	self.deselect = function()
		Selection:Set({})
	end

	self.highlightInstance = function(instance)
		self:setState({
			hoverPart = instance,
		})
	end

	self.removeHighlight = function()
		self:setState({
			hoverPart = Roact.None,
		})
	end
end

function InstanceSelector:didMount()
	local props = self.props
	local isSelectedInstanceValid = props.IsSelectedInstanceValid
	local onValidSelection = props.OnValidSelection
	local onInvalidSelection = props.OnInvalidSelection

	self.SelectionChangedHandle = Selection.SelectionChanged:Connect(function()
		local selectedInstance = self:getSelectedInstance()
		if not selectedInstance then
			return
		end
		if isSelectedInstanceValid(selectedInstance) then
			onValidSelection(selectedInstance)
		else
			onInvalidSelection(selectedInstance)
		end
	end)

	local mouse = self.props.Mouse:get()
	if mouse and mouse.Button1Down then
		self.MouseButtonDown = mouse.Button1Down:Connect(function()
			self:selectValidInstance(self.selectInstance, self.deselect)
		end)
	end

	self.Heartbeat = RunService.Heartbeat:Connect(function(step)
		self:selectValidInstance(self.highlightInstance, self.removeHighlight)
	end)
end

function InstanceSelector:render()
	local state = self.state
	local props = self.props

	local hoverPart = state.hoverPart
	local container = props.Container or CoreGui
	local theme = props.Stylizer

	return Roact.createElement(Roact.Portal, {
		target = container,
	}, {
		HoverBox = hoverPart and Roact.createElement("SelectionBox", {
			Archivable = false,
			Adornee = hoverPart,
			LineThickness = theme.HoverLineThickness,
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
end

InstanceSelector = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
	Plugin = ContextServices.Plugin,
})(InstanceSelector)

return InstanceSelector