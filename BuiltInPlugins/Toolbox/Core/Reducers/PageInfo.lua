local FFlagToolboxAssetStyleUpdate2 = game:GetFastFlag("ToolboxAssetStyleUpdate2")

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Rodux = require(Packages.Rodux)

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local PageInfoHelper = require(Plugin.Core.Util.PageInfoHelper)

local Category = require(Plugin.Core.Types.Category)
local Sort = require(Plugin.Core.Types.Sort)
local RequestReason = require(Plugin.Core.Types.RequestReason)

local Actions = Plugin.Core.Actions
local ChangeBackground = require(Actions.ChangeBackground)
local SetToolboxManageableGroups = require(Actions.SetToolboxManageableGroups)
local UpdatePageInfo = require(Actions.UpdatePageInfo)
local UpdateSearchTerm = require(Actions.UpdateSearchTerm)
local SetCurrentPage = require(Actions.SetCurrentPage)

local disableMarketplaceAndRecents = require(Plugin.Core.Util.ToolboxUtilities).disableMarketplaceAndRecents

local defaultSorts = Sort.SORT_OPTIONS
local defaultCategories
if disableMarketplaceAndRecents() then
	defaultCategories = Category.INVENTORY
else
	defaultCategories = Category.MARKETPLACE
end

local function warnIfUpdatePageInfoChangesInvalid(state, changes)
	if changes.sorts then
		warn("Lua Toolbox: Cannot change sorts array through UpdatePageInfo")
	end

	if changes.groups then
		warn("Lua Toolbox: Cannot change groups array through UpdatePageInfo")
	end

	if changes.sortIndex and (changes.sortIndex < 1 or changes.sortIndex > #state.sorts) then
		warn("Lua Toolbox: sortIndex out of range in UpdatePageInfo")
	end

	if
		changes.groupIndex ~= nil
		and changes.groupIndex > 0
		and (changes.groupIndex < (#state.groups > 0 and 1 or 0) or changes.groupIndex > #state.groups)
	then
		warn("Lua Toolbox: groupIndex out of range in UpdatePageInfo")
	end

	if changes.sortIndex and not state.sorts[changes.sortIndex] then
		warn("Lua Toolbox: Changing sortIndex but sortType is not valid in UpdatePageInfo")
	end

	local hasValidGroupIndex = changes.groupIndex and changes.groupIndex > 0

	if hasValidGroupIndex then
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
	audioSearchInfo = nil,
	categories = defaultCategories,
	categoryName = Category.DEFAULT.name,

	searchTerm = "",

	sorts = defaultSorts,
	sortIndex = 1,

	groups = {},
	groupIndex = 0,

	-- The page I want to load
	targetPage = 1,
	-- The page I have loaded
	currentPage = 0,

	selectedBackgroundIndex = 1,
	hoveredBackgroundIndex = 0,

	requestReason = RequestReason.InitLoad,
}, {
	[UpdateSearchTerm.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			searchTerm = action.searchTerm,
		})
	end,

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

		if not RequestReason.IsUpdate(newState.requestReason) then
			-- If we are just changing page, don't generate a new searchId
			newState.searchId = HttpService:GenerateGUID(false)
		end

		-- Update the plugin settings. Reducers should be pure functions
		-- but this guarantees that the plugin settings use the most up-
		-- to-date state
		if action.settings then
			action.settings:updateFromPageInfo(newState)
		end
		return newState
	end,

	[SetCurrentPage.name] = function(state, action)
		if not action.currentPage then
			if DebugFlags.shouldDebugWarnings() then
				warn("Toolbox SetCurrentPage action.currentPage = nil")
			end
		end
		return Cryo.Dictionary.join(state, {
			currentPage = action.currentPage,
		})
	end,

	[ChangeBackground.name] = if not FFlagToolboxAssetStyleUpdate2
		then function(state, action)
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

			return newState
		end
		else nil,

	[SetToolboxManageableGroups.name] = function(state, action)
		if not action.groups then
			if DebugFlags.shouldDebugWarnings() then
				warn("Toolbox SetToolboxManageableGroups action.groups = nil")
			end
			return state
		end

		local newGroups = {}
		for index, group in ipairs(action.groups) do
			newGroups[index] = { id = group.id, name = group.name }
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
		else
			newState.groupIndex = 0

			if newState.categoryName == "" then
				newState.categoryName = newState.categories[1].name
			end
		end

		return newState
	end,
})
