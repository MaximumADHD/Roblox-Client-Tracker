--[[
	Debugging assistance module for Roact.

	Exposed as Roact.Debug; it's a work in progress and thus unstable.
]]

local CoreGui = game:GetService("CoreGui")

local Core = require(script.Parent.Core)
local Reconciler = require(script.Parent.Reconciler)
local Component = require(script.Parent.Component)

local INDENT = ".   "

local Debug = {}

function Debug.visualize(instance)
	local buffer = {}
	Debug._visualize(instance, 0, buffer)

	return table.concat(buffer, "\n")
end

function Debug._visualize(instance, indentLevel, buffer)
	local entry = ("%s%s: %s"):format(
		INDENT:rep(indentLevel),
		tostring(instance._element.type),
		instance._key
	)

	table.insert(buffer, entry)

	if Core.isPrimitiveElement(instance._element) then
		for _, child in pairs(instance._reifiedChildren) do
			Debug._visualize(child, indentLevel + 1, buffer)
		end
	elseif Core.isStatefulElement(instance._element) or Core.isFunctionalElement(instance._element) then
		if instance._reified then
			Debug._visualize(instance._reified, indentLevel + 1, buffer)
		end
	end
end

local Debugger = Component:extend("Debugger")

function Debugger:render()
	return Core.createElement("ScreenGui", {
	}, {
		Body = Core.createElement("Frame", {
			Size = UDim2.new(0, 400, 1, 0),
			BackgroundColor3 = Color3.new(0.85, 0.85, 0.85),
		})
	})
end

function Debugger:didMount()
	local instance = self.props.instance
	self._oldWillUpdate = instance.willUpdate

	instance.willUpdate = function(...)
		self:setState({})
		return self._oldWillUpdate(...)
	end
end

function Debugger:willUnmount()
	self.props.instance.willUpdate = self._oldWillUpdate
	self._oldWillUpdate = nil
end

function Debug.attach(instance)
	local element = Core.createElement(Debugger, {
		instance = instance,
	})

	Reconciler.reify(element, CoreGui, "Roact Debugger")
end

return Debug