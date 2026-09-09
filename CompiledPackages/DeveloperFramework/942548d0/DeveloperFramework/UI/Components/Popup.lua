--[[
	A PluginGui which floats as a subwindow, and can be modal.

	Required Props:
		callback OnClose: A function which is used to define the behavior
			when the user clicks the X button attached to this widget.
		Instance PopupTarget: An Instance that the Popup will be attached to
		Vector2 Size: The initial size of the widget, in pixels.
		string Title: The title text displayed at the top of the widget.

	Optional Props:
		boolean CreateWidgetImmediately: C++ method for creating a widget yields, which can cause issues with Roact/Rodux.
			That method is run in its own thread, but that means creation of the widget is delayed.
			Set this to false to create the widget immediately instead. Mostly useful for unit tests.
		boolean Enabled: Whether the widget is currently visible.
		boolean PassesThroughMouseEvents: Whether the popup will allow mouse events to pass through to the underlying window. Defaults to false.
		Vector2 MinSize: The minimum size of the widget, in pixels.
			If the widget is not resizable, this property is not required.
		boolean Modal: Whether the widget blocks input to other windows.
		boolean Resizable: Whether the widget can be resized.
		callback Roact.Change.Enabled: A callback for when the widget shows or hides.
		Enum.ZIndexBehavior ZIndexBehavior: The ZIndexBehavior of the widget.
		Plugin Plugin: A Plugin ContextItem, which is provided via withContext.
		Vector2 PopupSelfAnchorPoint: Anchor point on the popup window
		Vector2 PopupTargetAnchorPoint: Anchor point on the target UI element
		any PluginDesign: Plugin stylesheet that will be added to the root of the plugin

]]
local HttpService = game:GetService("HttpService")

local Framework = script:FindFirstAncestor("UI").Parent
local Typecheck = require(Framework.Util).Typecheck
local createPluginWidget = require(Framework.UI.Components.createPluginWidget)

local FFlagDevFrameworkPopupFixedTitle = game:DefineFastFlag("DevFrameworkPopupFixedTitle", false)

local Popup = createPluginWidget("Popup", function(props)
	local plugin = props.Plugin:get()

	local options = {
		Title = props.Title,
		Size = props.Size,
		MinSize = props.MinSize,
		Resizable = props.Resizable,
		Modal = props.Modal,
		Popup = {
			Target = props.PopupTarget,
			ActionId = props.PopupActionId,
			PassesThroughMouseEvents = props.PassesThroughMouseEvents,
			SelfAnchorPoint = props.PopupSelfAnchorPoint,
			TargetAnchorPoint = props.PopupTargetAnchorPoint,
		},
	}

	local id
	if FFlagDevFrameworkPopupFixedTitle then
		id = props.Title
	else
		id = props.Title .. HttpService:GenerateGUID()
	end
	local widget = plugin:CreateQWidgetPluginGui(id, options)
	widget.Name = props.Title
	if props.ZIndexBehavior then
		widget.ZIndexBehavior = props.ZIndexBehavior
	end
	return widget
end)

Typecheck.wrap(Popup, script)

return Popup
