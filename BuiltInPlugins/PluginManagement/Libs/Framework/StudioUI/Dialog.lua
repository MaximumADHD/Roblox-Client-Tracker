--[[
	A PluginGui which floats as a subwindow, and can be modal.

	Props:
		string Title = The title text displayed at the top of the widget.
		bool Enabled = Whether the widget is currently visible.
		Vector2 Size = The initial size of the widget, in pixels.

		function OnClose() = A function which is used to define the behavior
			when the user clicks the X button attached to this widget.

	Optional Props:
		bool Modal = Whether the widget blocks input to other windows.
		ZIndexBehavior ZIndexBehavior = The ZIndexBehavior of the widget.
		bool Resizable = Whether the widget can be resized.
		Vector2 MinSize = The minimum size of the widget, in pixels.
			If the widget is not resizable, this property is not required.
]]

local Framework = script.Parent.Parent
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

return Dialog