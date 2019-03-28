local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Rodux = require(Libs.Rodux)

local Constants = require(Plugin.Core.Util.Constants)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local PageInfoHelper = require(Plugin.Core.Util.PageInfoHelper)

local Category = require(Plugin.Core.Types.Category)
local Sort = require(Plugin.Core.Types.Sort)

local ChangeBackground = require(Plugin.Core.Actions.ChangeBackground)
local GetManageableGroups = require(Plugin.Core.Actions.GetManageableGroups)
local NextPage = require(Plugin.Core.Actions.NextPage)
local UpdatePageInfo = require(Plugin.Core.Actions.UpdatePageInfo)

local defaultCategories = Category.CATEGORIES_WITHOUT_GROUPS
local defaultSorts = Sort.SORT_OPTIONS

local function warnIfUpdatePageInfoChangesInvalid(state, changes)
	if changes.categories then
		warn("Lua Toolbox: Cannot change categories array through UpdatePageInfo")
	end

	if changes.sorts then
		warn("Lua Toolbox: Cannot change sorts array through UpdatePageInfo")
	end

	if changes.groups then
		warn("Lua Toolbox: Cannot change groups array through UpdatePageInfo")
	end

	if changes.categoryIndex and (changes.categoryIndex < 1 or changes.categoryIndex > #state.categories) then
		warn("Lua Toolbox: categoryIndex out of range in UpdatePageInfo")
	end

	if changes.sortIndex and (changes.sortIndex < 1 or changes.sortIndex > #state.sorts) then
		warn("Lua Toolbox: sortIndex out of range in UpdatePageInfo")
	end

	-- For groupIndex, allow it to be 0 if #state.groups == 0
	-- Else it has to be >= 1 like the other indices
	if changes.groupIndex and (changes.groupIndex < (#state.groups > 0 and 1 or 0)
		or changes.groupIndex > #state.groups) then
		warn("Lua Toolbox: groupIndex out of range in UpdatePageInfo")
	end

	if changes.categoryIndex and not state.categories[changes.categoryIndex] then
		warn("Lua Toolbox: Changing categoryIndex but category is not valid in UpdatePageInfo")
	end

	if changes.sortIndex and not state.sorts[changes.sortIndex] then
		warn("Lua Toolbox: Changing sortIndex but sortType is not valid in UpdatePageInfo")
	end

	if changes.groupIndex then
		if #state.groups == 0 then
			if changes.groupIndex ~= 0 then
				warn("Lua Toolbox: Changing groupIndex but groupId is not valid in UpdatePageInfo")
			end
		elseif not state.groups[changes.groupIndex] then
			warn("Lua Toolbox: Changing groupIndex but groupId is not valid in UpdatePageInfo")
		end
	end
end

return Rodux.createReducer({
	categories = defaultCategories,
	categoryIndex = 1,

	searchTerm = "",

	sorts = defaultSorts,
	sortIndex = 1,

	groups = {},
	groupIndex = 0,

	page = 1,
	pageSize = Constants.GET_ITEMS_PAGE_SIZE,

	selectedBackgroundIndex = 1,
	hoveredBackgroundIndex = 0,
}, {
	[UpdatePageInfo.name] = function(state, action)
		if not action.changes then
			if DebugFlags.shouldDebugWarnings() then
				warn("Toolbox UpdatePageInfo action.changes = nil")
			end
			return state
		end

		if DebugFlags.shouldDebugWarnings() then
			warnIfUpdatePageInfoChangesInvalid(state, action.changes)
		end

		local newState = Cryo.Dictionary.join(state, action.changes)

		-- Update the plugin settings. Reducers should be pure functions
		-- but this guarantees that the plugin settings use the most up-
		-- to-date state
		if action.settings then
			action.settings:updateFromPageInfo(newState)
		end

		return newState
	end,

	[NextPage.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			page = state.page + 1,
		})
	end,

	[ChangeBackground.name] = function(state, action)
		if action.selected == nil then
			if DebugFlags.shouldDebugWarnings() then
				warn("Toolbox ChangeBackground action.selected = nil")
			end
			return state
		end

		local index = action.index or 0
		local key = action.selected and "selectedBackgroundIndex" or "hoveredBackgroundIndex"
		local newState = Cryo.Dictionary.join(state, {
			[key] = index,
		})

		if action.settings and action.selected then
			action.settings:setSelectedBackgroundIndex(index)
		end

		return newState
	end,

	[GetManageableGroups.name] = function(state, action)
		if not action.groups then
			if DebugFlags.shouldDebugWarnings() then
				warn("Toolbox GetManageableGroups action.groups = nil")
			end
			return state
		end

		local newGroups = {}
		for index, group in ipairs(action.groups) do
			newGroups[index] = {id = group.Id, name = group.Name}
		end

		local newState = Cryo.Dictionary.join(state, {
			groups = newGroups,
		})

		if #newGroups > 0 then
			local newIndex = 1
			local oldGroupId = PageInfoHelper.getGroupIdForPageInfo(state)
			-- Check if the ID we had selected exists in the new list
			-- If it does then change index to that
			-- Else set index to 1
			for index, group in ipairs(newGroups) do
				if group.id == oldGroupId then
					newIndex = index
					break
				end
			end

			newState.groupIndex = newIndex
			newState.categories = Category.CATEGORIES

		else
			newState.groupIndex = 0
			newState.categories = Category.CATEGORIES_WITHOUT_GROUPS

			if newState.categoryIndex > #newState.categories then
				newState.categoryIndex = 1
			end
		end

		return newState
	end,
})