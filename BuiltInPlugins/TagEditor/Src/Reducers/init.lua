local AssigningGroup = require(script.AssigningGroup)
local ColorPicker = require(script.ColorPicker)
local GroupData = require(script.GroupData)
local GroupMenu = require(script.GroupMenu)
local HoveredIcon = require(script.HoveredIcon)
local IconPicker = require(script.IconPicker)
local IconSearch = require(script.IconSearch)
local MinimizedSettingsPane = require(script.MinimizedSettingsPane)
local RenamingGroup = require(script.RenamingGroup)
local RenamingTag = require(script.RenamingTag)
local Search = require(script.Search)
local TagData = require(script.TagData)
local TagMenu = require(script.TagMenu)
local UIGroupCollapseState = require(script.UIGroupCollapseState)
local UnknownTags = require(script.UnknownTags)
local WorldView = require(script.WorldView)

return function(state: any, action: any)
	state = state or {}
	return {
		AssigningGroup = AssigningGroup(state.AssigningGroup, action),
		ColorPicker = ColorPicker(state.ColorPicker, action),
		GroupData = GroupData(state.GroupData, action),
		GroupMenu = GroupMenu(state.GroupMenu, action),
		HoveredIcon = HoveredIcon(state.HoveredIcon, action),
		IconPicker = IconPicker(state.IconPicker, action),
		IconSearch = IconSearch(state.IconSearch, action),
		MinimizedSettingsPane = MinimizedSettingsPane(state.MinimizedSettingsPane, action),
		RenamingGroup = RenamingGroup(state.RenamingGroup, action),
		RenamingTag = RenamingTag(state.RenamingTag, action),
		Search = Search(state.Search, action),
		TagData = TagData(state.TagData, action),
		TagMenu = TagMenu(state, action),
		UIGroupCollapseState = UIGroupCollapseState(state.UIGroupCollapseState, action),
		UnknownTags = UnknownTags(state.UnknownTags, action),
		WorldView = WorldView(state.WorldView, action),
	}
end
