local FoundationRoot = script:FindFirstAncestor("Foundation")
local Foundation = require(FoundationRoot)
local ComponentsFolder = FoundationRoot.Components

-- Docs-only stubs (`.code.md` + `.story.lua`, no component module) for designs
-- not yet implemented. Surfaced only in the Planned storybook.
local PlannedStories = script.Parent:FindFirstChild("Planned")

-- Design-system browsers (Tokens, Images); Elements storybook only.
local ElementsStories = script.Parent:FindFirstChild("Elements")

local FlagsStories = script.Parent:FindFirstChild("Flags")

-- Classification mirrors Foundation's public surface from init.lua: Hooks /
-- Utility key → that book, exported top-level component → Components, else
-- Internal. Planned / Elements / Flags are path-based carve-outs; deprecated
-- and base are story-module flags.
export type StoryScope =
	"flags"
	| "elements"
	| "components"
	| "base"
	| "deprecated"
	| "hooks"
	| "utilities"
	| "internal"
	| "planned"

local HookNames: { [string]: boolean } = {}
for key in Foundation.Hooks do
	HookNames[key :: string] = true
end

local UtilityNames: { [string]: boolean } = {}
for key in Foundation.Utility do
	UtilityNames[key :: string] = true
end

-- Foundation errors on unknown keys, so a successful index means it's exported.
local function isFoundationExport(name: string): boolean
	return (pcall(function()
		return Foundation[name]
	end))
end

local function topChild(instance: Instance, ancestor: Instance): Instance
	local node: Instance = instance
	while node.Parent and node.Parent ~= ancestor do
		node = node.Parent :: Instance
	end
	return node
end

local function isDeprecatedStory(story: Instance): boolean
	local ok, storyModule = pcall(require, story :: ModuleScript)
	return ok and typeof(storyModule) == "table" and storyModule.deprecated == true
end

local function isBaseStory(story: Instance): boolean
	local ok, storyModule = pcall(require, story :: ModuleScript)
	return ok and typeof(storyModule) == "table" and storyModule.base == true
end

local function isCompoundSubPartStory(story: Instance): boolean
	return story.Name:match("^[%w]+%.[%w]+%.story") ~= nil and story.Name:match("%.Root%.story") == nil
end

local function getComponentRootStory(story: Instance): ModuleScript?
	if not story:IsDescendantOf(ComponentsFolder) then
		return nil
	end
	local componentFolder = topChild(story, ComponentsFolder)
	local rootStory = componentFolder:FindFirstChild(`{componentFolder.Name}.Root.story`)
	if rootStory and rootStory:IsA("ModuleScript") then
		return rootStory
	end
	return nil
end

local function getStoryScope(story: Instance): StoryScope?
	if PlannedStories and story:IsDescendantOf(PlannedStories) then
		return "planned"
	end

	if ElementsStories and story:IsDescendantOf(ElementsStories) then
		return "elements"
	end

	if FlagsStories and story:IsDescendantOf(FlagsStories) then
		return "flags"
	end

	local name = (story.Name:gsub("%.story$", ""))
	if isDeprecatedStory(story) then
		return "deprecated"
	end
	if isBaseStory(story) then
		return "base"
	end
	-- Compound sub-parts follow Root's base flag so a component stays in one book.
	if isCompoundSubPartStory(story) then
		local rootStory = getComponentRootStory(story)
		if rootStory and isBaseStory(rootStory) then
			return "base"
		end
	end
	if HookNames[name] then
		return "hooks"
	end
	if UtilityNames[name] then
		return "utilities"
	end

	if story:IsDescendantOf(ComponentsFolder) then
		local componentName = topChild(story, ComponentsFolder).Name
		if not isFoundationExport(componentName) and isCompoundSubPartStory(story) then
			return nil
		end
		if isFoundationExport(componentName) then
			return "components"
		end
	end

	return "internal"
end

local function isNested(folder: Instance, folders: { [Instance]: boolean }): boolean
	local ancestor = folder.Parent
	while ancestor do
		if folders[ancestor] then
			return true
		end
		ancestor = ancestor.Parent
	end
	return false
end

local function getComponentFolderExcludeList(scope: StoryScope): { string }
	local excluded: { [string]: boolean } = {}
	for _, descendant in FoundationRoot:GetDescendants() do
		if
			descendant:IsA("ModuleScript")
			and descendant.Name:match("%.story$")
			and descendant:IsDescendantOf(ComponentsFolder)
		then
			local storyScope = getStoryScope(descendant)
			if storyScope ~= scope then
				excluded[topChild(descendant, ComponentsFolder).Name] = true
			end
		end
	end

	local excludeList = {}
	for name in excluded do
		table.insert(excludeList, name)
	end
	table.sort(excludeList)
	return excludeList
end

local function getStorybookRoots(scope: StoryScope): { Instance }
	-- Developer Storybook flattens each storyRoots entry's children into the
	-- sidebar, so compound components (List/ListItem) never nest when every
	-- component folder is its own root. Use the Components folder as a single
	-- root and exclude folders owned by other storybooks.
	if scope == "components" or scope == "base" then
		return { ComponentsFolder }
	end

	local folders: { [Instance]: boolean } = {}
	for _, descendant in FoundationRoot:GetDescendants() do
		if
			descendant:IsA("ModuleScript")
			and descendant.Name:match("%.story$")
			and getStoryScope(descendant) == scope
		then
			folders[descendant.Parent :: Instance] = true
		end
	end

	-- Storybook recurses from each root; keep only topmost folders to avoid
	-- listing nested stories twice.
	local storyRoots = {}
	for folder in folders do
		if not isNested(folder, folders) then
			table.insert(storyRoots, folder)
		end
	end
	return storyRoots
end

return {
	getStorybookRoots = getStorybookRoots,
	getComponentFolderExcludeList = getComponentFolderExcludeList,
}
