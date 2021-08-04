local Plugin = script.Parent.Parent.Parent.Parent
-- local Types = require(Plugin.Src.Types) -- Uncomment to access types
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local StudioUI = Framework.StudioUI
local Dialog = StudioUI.Dialog

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local EditBreakpoint = require(Plugin.Src.Components.Breakpoints.EditBreakpoint)

local EditDebugpointDialog = Roact.PureComponent:extend("EditDebugpointDialog")

function EditDebugpointDialog:render()
	local props = self.props
	local localization = props.Localization

	local enabled = props.Enabled
	local onClose = props.OnClose

	return Roact.createElement(Dialog, {
		Title = localization:getText("EditBreakpoint", "DialogName"),
		OnClose = onClose,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		Enabled = enabled,
		Size = Vector2.new(640, 480),
		MinSize = Vector2.new(350, 250),
		Resizable = true,
		Modal = true,
	}, {
		EditBreakpoint = Roact.createElement(EditBreakpoint),
	})
end

EditDebugpointDialog = withContext({
	Localization = Localization,
})(EditDebugpointDialog)

return EditDebugpointDialog
