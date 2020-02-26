--[[
	A PluginGui which floats as a subwindow, and can be modal.

	Required Props:
		string Title: The title text displayed at the top of the widget.
		boolean Enabled: Whether the widget is currently visible.
		Vector2 Size: The initial size of the widget, in pixels.
		callback OnClose: A function which is used to define the behavior
			when the user clicks the X button attached to this widget.
		Plugin Plugin: A Plugin ContextItem, which is provided via mapToProps.

	Optional Props:
		boolean Modal: Whether the widget blocks input to other windows.
		Enum.ZIndexBehavior ZIndexBehavior: The ZIndexBehavior of the widget.
		boolean Resizable: Whether the widget can be resized.
		Vector2 MinSize: The minimum size of the widget, in pixels.
			If the widget is not resizable, this property is not required.
]]

local Framework = script.Parent.Parent
local Typecheck = require(Framework.Util).Typecheck
local createPluginWidget = require(Framework.StudioUI.createPluginWidget)

local Dialog = createPluginWidget("Dialog", function(props)
	local plugin = props.Plugin:get()

	local options = {
		Size = props.Size,
		MinSize = props.MinSize,
		Resizable = props.Resizable,
		Modal = props.Modal,
	}

	return plugin:CreateQWidgetPluginGui(props.Title, options)
end)

Typecheck.wrap(Dialog, script)

return Dialog
