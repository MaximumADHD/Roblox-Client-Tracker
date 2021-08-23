--[[
	Handles the context menu which appears when the user clicks on an Event entry.

	Props:
		bool ShowMenu = Whether to display the menu.
		function OnMenuOpened = A callback for when the menu is opened.
		function OnMenuItemClicked(item) = A callback for when the user selects
			a menu item. Can be "Edit" or "Delete".
]]
local FFlagAnimationClipEditorWithContext = game:GetFastFlag("AnimationClipEditorWithContext")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Constants = require(Plugin.Src.Util.Constants)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextMenu = require(Plugin.Src.Components.ContextMenu)

local EditEventMenu = Roact.PureComponent:extend("EditEventMenu")

function EditEventMenu:makeMenuActions(localization)
	local props = self.props
	local actions = {}

	table.insert(actions, {
		Name = localization:getText("ContextMenu", "EditEventName"),
		Value = Constants.ACTION_KEYS.Edit,
		ItemSelected = props.OnMenuItemClicked,
	})
	table.insert(actions, {
		Name = localization:getText("ContextMenu", "DeleteAllSameEvents"),
		Value = Constants.ACTION_KEYS.Delete,
		ItemSelected = props.OnMenuItemClicked,
	})

	return actions
end

function EditEventMenu:render()
	local localization = self.props.Localization
	local props = self.props
	local showMenu = props.ShowMenu

	return showMenu and Roact.createElement(ContextMenu, {
		Actions = self:makeMenuActions(localization),
		OnMenuOpened = props.OnMenuOpened,
	}) or nil
end

if FFlagAnimationClipEditorWithContext then
	EditEventMenu = withContext({
		Localization = ContextServices.Localization
	})(EditEventMenu)
else
	ContextServices.mapToProps(EditEventMenu, {
		Localization = ContextServices.Localization
	})
end


return EditEventMenu
