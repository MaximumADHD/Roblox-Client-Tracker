--[[
	Handles the menu which appear when the user clicks next to the animation
	name at the top left corner of the window.

	Props:
		bool ShowMenu = Whether to display the menu.
		string CurrentAnimation = The currently loaded animation.

		function OnMenuOpened() = A callback for when the menu is displayed.
		function OnOverwriteRequested(name) = A callback for when the user initiated
			overwriting the animation at the given name with the current animation.
		function OnSaveAsRequested(name) = A callback for when the user wants to
			save the current animation at the given name.
		function OnCreateNewRequested() = A callback for when the user wants to
			create a new animation.
		function OnLoadRequested() = A callback for when the user wants to load a
			new animation.
		function OnImportRequested() = A callback for when the user wants to
			import a new animation from Roblox.
		function OnImportFbxRequested() = A callback for when the user wants to
			import a new animation from FBX.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local UILibrary = require(Plugin.UILibrary)
local RigUtils = require(Plugin.Src.Util.RigUtils)

local Localizing = UILibrary.Localizing
local withLocalization = Localizing.withLocalization

local PluginContext = require(Plugin.Src.Context.Plugin)
local getPlugin = PluginContext.getPlugin

local ContextMenus = UILibrary.Studio.ContextMenus
local ContextMenu = ContextMenus.ContextMenu
local Separator = ContextMenus.Separator

local SaveKeyframeSequence = require(Plugin.Src.Thunks.Exporting.SaveKeyframeSequence)
local ExportKeyframeSequence = require(Plugin.Src.Thunks.Exporting.ExportKeyframeSequence)
local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local UpdateMetadata = require(Plugin.Src.Thunks.UpdateMetadata)

local AnimationClipMenu = Roact.PureComponent:extend("AnimationClipMenu")

function AnimationClipMenu:makeLoadMenu(localization, current)
	local props = self.props
	local onLoadRequested = props.OnLoadRequested
	local saves = RigUtils.getAnimSaves(props.RootInstance)
	local items = {
		Text = localization:getText("Menu", "Load"),
		CurrentKey = current,
	}

	if #saves > 0 then
		for _, save in ipairs(saves) do
			table.insert(items, {
				Text = save.Name,
				Key = save.Name,
				ItemSelected = function()
					onLoadRequested(save.Name)
				end,
			})
		end
	else
		items.Enabled = false
	end

	return items
end

function AnimationClipMenu:makeSaveAsMenu(localization, current)
	local props = self.props
	local onOverwriteRequested = props.OnOverwriteRequested
	local onSaveAsRequested = props.OnSaveAsRequested
	local saves = RigUtils.getAnimSaves(props.RootInstance)
	local items = {
		Text = localization:getText("Menu", "SaveAs"),
		CurrentKey = current,
		{
			Text = localization:getText("Menu", "New"),
			ItemSelected = onSaveAsRequested,
		},
	}

	if #saves > 0 then
		table.insert(items, Separator)
	end

	for _, save in ipairs(saves) do
		table.insert(items, {
			Text = save.Name,
			Key = save.Name,
			ItemSelected = function()
				onOverwriteRequested(save.Name)
			end,
		})
	end

	return items
end

-- Creates a submenu for selecting an enum item.
function AnimationClipMenu:makePrioritySubMenu(localization, current)
	local props = self.props
	local priority = Enum.AnimationPriority
	local setPriority = props.SetPriority

	return {
		Text = localization:getText("Menu", "SetPriority"),
		CurrentKey = current,
		{Text = localization:getText("Menu", priority.Core.Name), Key = priority.Core, ItemSelected = setPriority},
		{Text = localization:getText("Menu", priority.Idle.Name), Key = priority.Idle, ItemSelected = setPriority},
		{Text = localization:getText("Menu", priority.Movement.Name), Key = priority.Movement, ItemSelected = setPriority},
		{Text = localization:getText("Menu", priority.Action.Name), Key = priority.Action, ItemSelected = setPriority},
	}
end

function AnimationClipMenu:makeMenuActions(localization)
	local props = self.props
	local onCreateNewRequested = props.OnCreateNewRequested
	local current = props.CurrentAnimation or ""
	local animationData = props.AnimationData
	local plugin = getPlugin(self)

	local currentPriority = animationData and animationData.Metadata
		and animationData.Metadata.Priority

	local actions = {}
	table.insert(actions, self:makeLoadMenu(localization, current))
	table.insert(actions, {
		Text = localization:getText("Menu", "Save"),
		ItemSelected = function()
			props.SaveKeyframeSequence(current)
		end,
	})
	table.insert(actions, self:makeSaveAsMenu(localization, current))
	table.insert(actions, Separator)
	table.insert(actions, {
		Text = localization:getText("Menu", "Import"),
		{
			Text = localization:getText("Menu", "FromRoblox"),
			ItemSelected = props.OnImportRequested,
		},
		{
			Text = localization:getText("Menu", "FromFBX"),
			ItemSelected = props.OnImportFbxRequested,
		},
	})
	table.insert(actions, {
		Text = localization:getText("Menu", "Export"),
		ItemSelected = function()
			props.ExportKeyframeSequence(plugin)
		end,
	})
	table.insert(actions, Separator)
	table.insert(actions, {
		Text = localization:getText("Menu", "CreateNew"),
		ItemSelected = function()
			onCreateNewRequested()
		end,
	})
	table.insert(actions, Separator)
	table.insert(actions, self:makePrioritySubMenu(localization, currentPriority))

	return actions
end

function AnimationClipMenu:render()
	return withLocalization(function(localization)
		local props = self.props
		local showMenu = props.ShowMenu

		return showMenu and Roact.createElement(ContextMenu, {
			Actions = self:makeMenuActions(localization),
			OnMenuOpened = props.OnMenuOpened,
		}) or nil
	end)
end

local function mapStateToProps(state, props)
	local status = state.Status
	return {
		RootInstance = status.RootInstance,
		AnimationData = state.AnimationData,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SaveKeyframeSequence = function(name)
			dispatch(SaveKeyframeSequence(name))
		end,

		ExportKeyframeSequence = function(plugin)
			dispatch(ExportKeyframeSequence(plugin))
		end,

		SetPriority = function(priority)
			dispatch(AddWaypoint())
			dispatch(UpdateMetadata({
				Priority = priority,
			}))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AnimationClipMenu)