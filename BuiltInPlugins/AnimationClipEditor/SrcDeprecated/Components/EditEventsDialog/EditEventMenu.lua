--[[
	Handles the context menu which appears when the user clicks on an Event entry.

	Props:
		bool ShowMenu = Whether to display the menu.
		function OnMenuOpened = A callback for when the menu is opened.
		function OnMenuItemClicked(item) = A callback for when the user selects
			a menu item. Can be "Edit" or "Delete".
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local UILibrary = require(Plugin.UILibrary)
local Constants = require(Plugin.SrcDeprecated.Util.Constants)

local Localizing = UILibrary.Localizing
local withLocalization = Localizing.withLocalization

local ContextMenu = require(Plugin.SrcDeprecated.Components.ContextMenu)

local EditEventMenu = Roact.PureComponent:extend("EditEventMenu")

function EditEventMenu:makeMenuActions(localization)
	local props = self.props
	local actions = {}

	table.insert(actions, {
		Name = localization:getText("ContextMenu", "EditEventName"),
		ItemSelected = function()
			props.OnMenuItemClicked(Constants.ACTION_KEYS.Edit)
		end,
	})
	table.insert(actions, {
		Name = localization:getText("ContextMenu", "DeleteAllSameEvents"),
		ItemSelected = function()
			props.OnMenuItemClicked(Constants.ACTION_KEYS.Delete)
		end,
	})

	return actions
end

function EditEventMenu:render()
	return withLocalization(function(localization)
		local props = self.props
		local showMenu = props.ShowMenu

		return showMenu and Roact.createElement(ContextMenu, {
			Actions = self:makeMenuActions(localization),
			OnMenuOpened = props.OnMenuOpened,
		}) or nil
	end)
end

return EditEventMenu