local Main = script.Parent.Parent.Parent
local Types = require(Main.Src.Types)
local Dash = require(Main.Packages.Dash)

local assign = Dash.assign
local endsWith = Dash.endsWith
local forEach = Dash.forEach
local includes = Dash.includes
local collectArray = Dash.collectArray
local getOrSet = Dash.getOrSet
local map = Dash.map
local flat = Dash.flat
local reduce = Dash.reduce
local values = Dash.values

local insert = table.insert
local sort = table.sort
local split = string.split

local TestLoader = require(Main.Packages.TestLoader)
local ModuleLoader = TestLoader.ModuleLoader

-- Services to search for .storybook files
local STORYBOOK_SOURCES = {
	"CorePackages",
	"CoreGui",
	"ReplicatedStorage",
	"ReplicatedFirst",
	"ServerScriptService",
	"StarterGui",
}

-- Implements GetChildren for a tree item by returning the sorted items of Children
local function getChildren(item: Types.StoryItem): { Types.StoryItem }
	local children = values(item.Children)
	sort(children, function(left, right)
		return left.Name < right.Name
	end)
	return children
end

-- Helper to create a new StoryItem
local function createItem(name: string, icon: string, children: { Types.StoryItem }?): Types.StoryItem
	return {
		Name = name,
		Icon = icon,
		Children = children or {},
		GetChildren = getChildren,
	}
end

-- Standard suffixes. In future, these could be configurable.
local STORYBOOK_SUFFIX = ".storybook"
local STORY_SUFFIX = ".story"

-- Compacting takes an item with only single child, and hoists that child to the current level.
-- This is performed recursively throughout the hierarchy to expose deeply nested single children.
local function compactItem(item: Types.StoryItem)
	-- Compact folders with only one matched child, provided parent and child aren't both stories themselves
	if #item.Children == 1 and (not item.Script or not item.Children[1].Script) then
		local child = compactItem(item.Children[1])
		local newName = child.Name == "__stories__" and item.Name or child.Name
		local newItem = createItem(newName, child.Icon, child.Children)
		assign(newItem, {
			Path = child.Path and (item.Name .. "/" .. child.Path) or item.Name,
			Script = item.Script or child.Script,
			Storybook = item.Storybook or child.Storybook,
		})
		return newItem
	else
		return assign(item, {
			Children = map(item.Children, compactItem),
		})
	end
end

-- Get the root folders and their descendant stories for a single storybook.
local function getStoryHierarchy(storybook: Types.Storybook, rootInstance: Instance): { Types.StoryItem }
	-- The storyRoots provides an optional override for where to look for stories.
	-- By default, it is in the storybook's parent.
	local roots = storybook.storyRoots or { rootInstance.Parent }
	-- Return the StoryItem for a date-model instance, if there is a suitable one
	local function getItem(instance: Instance, parentItem: Types.StoryItem?): Types.StoryItem?
		-- Do not include an instance or its descendants if its name matches the provided exlcude pattern
		local isExcludedFolder = storybook.exclude and includes(storybook.exclude, instance.Name)
		if isExcludedFolder then
			return nil
		end
		local isStory = instance:IsA("ModuleScript") and endsWith(instance.Name, STORY_SUFFIX)
		local itemName = isStory and instance.Name:sub(1, -(STORY_SUFFIX:len() + 1)) or instance.Name
		local itemIcon = isStory and "Frame" or instance.ClassName
		local item = createItem(itemName, itemIcon)
		if isStory then
			-- Store additional information on the item for use when we select the story
			item.Script = instance
			item.Storybook = storybook
			item.Icon = "Story"
		else
			item.Icon = "Folder"
		end
		local hasStoryDescendant = false
		-- Recursively find our descendant items, and monitor if there is at least one
		-- descendant story, otherwise we will prune this part of the tree.
		forEach(instance:GetChildren(), function(child: Instance)
			if typeof(child) == "Instance" then
				local childHasStory = getItem(child, item)
				hasStoryDescendant = hasStoryDescendant or childHasStory
			end
		end)
		local hasStory = isStory or hasStoryDescendant
		if parentItem and hasStory then
			-- TODO #luau: support type strengthening
			local storyItem = parentItem :: Types.StoryItem
			insert(storyItem.Children, item)
		end
		return hasStory and item or nil
	end
	-- Return a flat map of the compacted root children
	return flat(map(roots, function(root: Instance)
		local rootItem = getItem(root)
		return rootItem and map(rootItem.Children, compactItem) or {}
	end))
end

-- A Storybook can define a folder path that it should be grouped under.
-- Add the provided storybook item and any un-created folder items along that path
local function groupItem(
	storybookItem: Types.StoryItem,
	path: { string },
	mut_foldersByPath: { [string]: Types.StoryItem },
	mut_storybookItems: { Types.StoryItem }
)
	local folderResult = reduce(path, function(current, folder: string)
		if folder == "" then
			return current
		else
			-- Key created folders by their path, to ensure we don't create duplicate folders
			local pathPrefix = ("%s/%s"):format(current.pathPrefix, folder)
			local item = getOrSet(mut_foldersByPath, pathPrefix, function()
				local newItem = createItem(folder, "Folder", {})
				if current.item then
					insert(current.item.Children, newItem)
				else
					insert(mut_storybookItems, newItem)
				end
				return newItem
			end)
			return {
				pathPrefix = pathPrefix,
				item = item,
			}
		end
	end, {
		-- Store how far along the path we've progressed
		pathPrefix = "",
		item = nil,
	})
	if folderResult.item then
		insert(folderResult.item.Children, storybookItem)
	else
		insert(mut_storybookItems, storybookItem)
	end
end

-- Visit each instance in the data-model to see if it or any of its descendants are storybook scripts
local function visitInstance(
	instance: Instance,
	mut_foldersByPath: { [string]: Types.StoryItem },
	mut_storybookItems: { Types.StoryItem },
	mut_missingItems: { Types.StoryItem }
)
	local isStorybook = instance:IsA("ModuleScript") and endsWith(instance.Name, STORYBOOK_SUFFIX)
	if not isStorybook then
		return
	end
	local ok, storybook = pcall(function()
		-- ModuleLoader allows storybook source to be updated
		return ModuleLoader:load(instance :: ModuleScript)
	end)
	if not ok or typeof(storybook) ~= "table" then
		local storybookLoadError: string = tostring(storybook)
		local missingItem: Types.StoryItem = {
			Name = instance.Name,
			Icon = "Storybook",
			Children = {},
			GetChildren = function()
				return {}
			end,
			StorybookLoadError = storybookLoadError,
		}
		insert(mut_missingItems, missingItem)
		return
	end
	-- Default name is script name with ".storybook" stripped off end
	local defaultName = instance.Name:sub(1, -(#STORYBOOK_SUFFIX + 1))
	local name = storybook.name or defaultName
	local storybookItem = createItem(name, "Storybook", getStoryHierarchy(storybook, instance))

	if #storybookItem.Children == 0 then
		insert(mut_missingItems, storybookItem)
	elseif storybook.group then
		local path = split(storybook.group, "/")
		groupItem(storybookItem, path, mut_foldersByPath, mut_storybookItems)
	else
		insert(mut_storybookItems, storybookItem)
	end
end

local function safeGetService(_index: number, serviceName: string)
	local ok, maybeService = pcall(function()
		local service = game:GetService(serviceName)
		-- Ensure we can call GetChildren
		service:GetChildren()
		return service
	end)
	return if ok then maybeService else nil
end

-- Some components (like DF or the Markdown library) aren't located in the default locations where Storybook discovers stories (e.g. ReplicatedStorage, CoreGui, etc. — see STORYBOOK_SOURCES).
-- Since these items aren't automatically discoverable, but we still want them to show up in Storybook, a workaround was implemented: we install them as dependencies and manually add their paths to STORYBOOK_SOURCES.
-- This lets Storybook include them even though they aren't in the usual discovery locations
local function findStorybooks()
	-- TODO (AleksandrSl 14/01/2025): Merge isEmbedded checks
	-- We have an _Index if we are a plugin, not an embedded storybook
	local index = Main.Packages:FindFirstChild("_Index")
	local sources = collectArray(STORYBOOK_SOURCES, safeGetService)

	-- index.DF.DF is a hack to reduce path length, should be removed soon STUDIOPLAT-37669
	local devFramework
	if index then
		if index:FindFirstChild("DF") then
			devFramework = index.DF.DF
		else
			devFramework = index.DeveloperFramework.DeveloperFramework
		end
	else
		devFramework = Main.Parent.Framework
	end
	insert(sources, devFramework)

	local hasFoundation = Dash.find(sources, function(source)
		if source.Name == "ReplicatedStorage" then
			local packages = source:FindFirstChild("Packages")
			return packages and packages:FindFirstChild("Foundation")
		end
		return false
	end)
	if not hasFoundation then
		local foundation = index and index.Foundation.Foundation or Main.Parent.Foundation
		insert(sources, foundation)
	end

	local materialFrameworkDeprecated = index and index.MaterialFrameworkDeprecated.MaterialFrameworkDeprecated
		or Main.Parent.MaterialFrameworkDeprecated
	insert(sources, materialFrameworkDeprecated)

	local materialFramework = index and index.MaterialFramework.MaterialFramework or Main.Parent.MaterialFramework
	insert(sources, materialFramework)
	insert(
		sources,
		if index then index.ViewportToolingFramework.ViewportToolingFramework else Main.Parent.ViewportToolingFramework
	)

	local markdown = index and index.Markdown.Markdown or Main.Parent.Markdown
	insert(sources, markdown)

	if index then
		local PluginDebugService = safeGetService(0, "PluginDebugService")
		if PluginDebugService then
			forEach(PluginDebugService:GetChildren(), function(source: Plugin)
				-- If we are a plugin, don't check ourself for storybooks
				if index and source == plugin then
					return
				end
				insert(sources, source)
			end)
		end
	end

	local foldersByPath: { [string]: Types.StoryItem } = {}
	local storybookItems: { Types.StoryItem } = {}
	local missingItems = {}

	forEach(sources, function(source: Instance)
		forEach(source:GetDescendants(), function(instance: Instance)
			if
				index
				and source:IsA("Plugin")
				and (instance:GetFullName():find(".Packages") or instance:GetFullName():find(".Libs"))
				-- do not exclude certain things we know we want
				-- TODO remove the DF thing when you can STUDIOPLAT-37669
				and not instance:GetFullName():find("DF")
				and not instance:GetFullName():find("Framework")
				and not instance:GetFullName():find("Foundation")
			then
				-- Skip library folders for plugins
				return
			end
			visitInstance(instance, foldersByPath, storybookItems, missingItems)
		end)
	end)

	if #missingItems > 0 then
		insert(storybookItems, {
			Name = "Unavailable Storybooks",
			Icon = "Folder",
			Children = missingItems,
			GetChildren = getChildren,
		})
	end
	return storybookItems
end

return findStorybooks
