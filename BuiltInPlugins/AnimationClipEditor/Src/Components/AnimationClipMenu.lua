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
local FFlagAnimationClipEditorWithContext = game:GetFastFlag("AnimationClipEditorWithContext")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local Constants = require(Plugin.Src.Util.Constants)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local GetFFlagUseAnimationClipEditorConstantsSeparator = require(Plugin.LuaFlags.GetFFlagUseAnimationClipEditorConstantsSeparator)

local ContextMenu = require(Plugin.Src.Components.ContextMenu)

local Separator = GetFFlagUseAnimationClipEditorConstantsSeparator() and Constants.MENU_SEPARATOR or ContextMenu.Separator

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
	}

	if #saves > 0 then
		for _, save in ipairs(saves) do
			table.insert(items, {
				Name = save.Name,
				ItemSelected = onLoadRequested,
			})
		end
		return {
			Name = localization:getText("Menu", "Load"),
			Items = items,
		}
	end

	return {
		Name = localization:getText("Menu", "Load"),
		Enabled = false
	}
end

function AnimationClipMenu:makeSaveAsMenu(localization, current)
	local props = self.props
	local onOverwriteRequested = props.OnOverwriteRequested
	local onSaveAsRequested = props.OnSaveAsRequested
	local saves = RigUtils.getAnimSaves(props.RootInstance)
	local items = {
		{
			Name = localization:getText("Menu", "New"),
			ItemSelected = onSaveAsRequested,
		},
	}

	if #saves > 0 then
		table.insert(items, Separator)
	end

	for _, save in ipairs(saves) do
		table.insert(items, {
			Name = save.Name,
			ItemSelected = onOverwriteRequested,
		})
	end

	return {
		Name = localization:getText("Menu", "SaveAs"),
		CurrentValue = current,
		Items = items,
	}
end

-- Creates a submenu for selecting an enum item.
function AnimationClipMenu:makePrioritySubMenu(localization, current)
	local props = self.props
	local priority = Enum.AnimationPriority
	local setPriority = props.SetPriority

	return {
		Name = localization:getText("Menu", "SetPriority"),
		CurrentValue = current,
		Items = {
			{Name = localization:getText("Menu", priority.Core.Name), Value = priority.Core, ItemSelected = setPriority},
			{Name = localization:getText("Menu", priority.Idle.Name), Value = priority.Idle, ItemSelected = setPriority},
			{Name = localization:getText("Menu", priority.Movement.Name), Value = priority.Movement, ItemSelected = setPriority},
			{Name = localization:getText("Menu", priority.Action.Name), Value = priority.Action, ItemSelected = setPriority},
		}
	}
end

function AnimationClipMenu:makeMenuActions(localization)
	local props = self.props
	local onCreateNewRequested = props.OnCreateNewRequested
	local current = props.CurrentAnimation or ""
	local animationData = props.AnimationData
	local plugin = props.Plugin

	local currentPriority = animationData and animationData.Metadata
		and animationData.Metadata.Priority

	local actions = {}
	table.insert(actions, self:makeLoadMenu(localization, current))
	table.insert(actions, {
		Name = localization:getText("Menu", "Save"),
		ItemSelected = function()
			props.SaveKeyframeSequence(current, props.Analytics)
		end,
	})
	table.insert(actions, self:makeSaveAsMenu(localization, current))
	table.insert(actions, Separator)
	table.insert(actions, {
		Name = localization:getText("Menu", "Import"),
		Items = {
			{
				Name = localization:getText("Menu", "FromRoblox"),
				ItemSelected = props.OnImportRequested,
			},
			{
				Name = localization:getText("Menu", "FromFBX"),
				ItemSelected = props.OnImportFbxRequested,
			},
		}
	})
	table.insert(actions, {
		Name = localization:getText("Menu", "Export"),
		ItemSelected = function()
			props.ExportKeyframeSequence(plugin, props.Analytics)
		end,
	})
	table.insert(actions, Separator)
	table.insert(actions, {
		Name = localization:getText("Menu", "CreateNew"),
		ItemSelected = onCreateNewRequested,
	})
	table.insert(actions, Separator)
	table.insert(actions, self:makePrioritySubMenu(localization, currentPriority))

	return actions
end

function AnimationClipMenu:render()
	local localization = self.props.Localization
	local props = self.props
	local showMenu = props.ShowMenu

	return showMenu and Roact.createElement(ContextMenu, {
		Actions = self:makeMenuActions(localization),
		OnMenuOpened = props.OnMenuOpened,
	}) or nil
end

if FFlagAnimationClipEditorWithContext then
	AnimationClipMenu = withContext({
		Localization = ContextServices.Localization,
		Plugin = ContextServices.Plugin,
		Analytics = ContextServices.Analytics
	})(AnimationClipMenu)
else
	ContextServices.mapToProps(AnimationClipMenu, {
		Localization = ContextServices.Localization,
		Plugin = ContextServices.Plugin,
		Analytics = ContextServices.Analytics
	})
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
		SaveKeyframeSequence = function(name, analytics)
			dispatch(SaveKeyframeSequence(name, analytics))
		end,

		ExportKeyframeSequence = function(plugin, analytics)
			dispatch(ExportKeyframeSequence(plugin, analytics))
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
