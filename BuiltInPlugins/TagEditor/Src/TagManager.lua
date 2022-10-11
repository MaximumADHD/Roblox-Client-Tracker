local Collection = game:GetService("CollectionService")
local Selection = game:GetService("Selection")
local ChangeHistory = game:GetService("ChangeHistoryService")

local Actions = require(script.Parent.Actions)
local Maid = require(script.Parent.Maid)
local _Types = require(script.Parent.Types)

local tagsRoot = game:GetService("ServerStorage")
local tagsFolderName = "TagList"

export type Tag = _Types.Tag

--[=[
	Anything tagged with this value will be treated as a source for tag editor
	tags.
]=]
local TAG_FOLDER_TAG = "TagEditorTagContainer"

local TagManager = {}
TagManager.__index = TagManager

local defaultValues = {
	Icon = "rbxasset://textures/TagEditor/Tag.png",
	Visible = true,
	DrawType = "Box",
	AlwaysOnTop = false,
	Group = "",
}

TagManager._global = nil

local function lerp(start: number, stop: number, t: number): number
	return (stop - start) * t + start
end

local function genColor(name: string): Color3
	local hash = 2166136261
	local prime = 16777619
	local base = math.pow(2, 32)
	for i = 1, #name do
		hash = (hash * prime) % base
		hash = (hash + name:byte(i)) % base
	end
	local h = (hash / math.pow(2, 16)) % 256 / 255
	local s = (hash / math.pow(2, 8)) % 256 / 255
	local v = (hash / math.pow(2, 0)) % 256 / 255

	v = lerp(0.3, 1.0, v)
	s = lerp(0.5, 1.0, s)

	return Color3.fromHSV(h, s, v)
end

-- if users have tags generated with an older version of the tag editor we should migrate them
local function needsMigration(folder: Folder): boolean
	if not folder then
		return false
	end

	for _, child in folder:GetChildren() do
		if child:IsA("Folder") then
			return true
		end
	end

	return false
end

--[=[
	The tag manager is a singleton that adds ui-specific state ontop of the collection service
]=]
function TagManager.new(store)
	local self = setmetatable({
		store = store,
		updateTriggered = false,
		tags = {},
		onUpdate = {},
		_tagFolderSet = {},
		_defaultTagsFolder = tagsRoot:FindFirstChild(tagsFolderName),
		_maid = Maid.new(),
		_gaveDuplicateWarningsFor = {},
	}, TagManager)

	TagManager._global = self

	-- Migration path to new attribute based format.
	if needsMigration(self._defaultTagsFolder) then
		ChangeHistory:SetWaypoint("Migrating tags folder")

		local migrateCount = 0
		for _, tagInstance in pairs(self._defaultTagsFolder:GetChildren()) do
			if tagInstance:IsA("Folder") then
				local newInstance = Instance.new("Configuration")
				newInstance.Name = tagInstance.Name

				local inherited = {}
				for _, valueInst in pairs(tagInstance:GetChildren()) do
					if valueInst:IsA("ValueBase") then
						newInstance:SetAttribute(valueInst.Name, valueInst.Value)
						inherited[valueInst.Name] = true
					end
				end
				for name, value in pairs(defaultValues) do
					if inherited[name] then
						continue
					end
					newInstance:SetAttribute(name, value)
				end
				newInstance.Parent = self._defaultTagsFolder
				tagInstance.Parent = nil
				migrateCount += 1
			end
		end
		if migrateCount > 0 then
			print(string.format("TagEditor: Converted %d tags to attribute-based format.", migrateCount))
		end

		-- Ensure discovery
		Collection:AddTag(self._defaultTagsFolder, TAG_FOLDER_TAG)
		ChangeHistory:SetWaypoint("Migrated tags folder")
	end

	self:_updateStore()

	self._maid:give(Selection.SelectionChanged:Connect(function()
		self:_updateStore()
		self:_updateUnknownTags()
	end))

	if self._defaultTagsFolder then
		self:_watchFolder(self._defaultTagsFolder)
	end

	self._maid:give(Collection:GetInstanceAddedSignal(TAG_FOLDER_TAG):Connect(function(inst)
		self:_watchFolder(inst)
	end))
	self._maid:give(Collection:GetInstanceRemovedSignal(TAG_FOLDER_TAG):Connect(function(inst)
		if inst ~= self._defaultTagsFolder then
			self:_stopWatchingFolder(inst)
		end
	end))

	for _, item in pairs(Collection:GetTagged(TAG_FOLDER_TAG)) do
		self:_watchFolder(item)
	end

	return self
end

function TagManager:Destroy()
	self._maid:destroy()
end

function TagManager.Get(): TagManager
	return TagManager._global
end

function TagManager:GetTags(): { Tag }
	return self.tags
end

function TagManager:OnTagsUpdated(func)
	local connection = {
		Disconnect = function(id)
			self.onUpdate[id] = nil
		end,
	}
	self.onUpdate[connection] = func
	return connection
end

function TagManager:_stopWatchingFolder(folder: Folder)
	if self._maid[folder] then
		self._maid[folder] = nil
		self:_updateStore(true)
	end
end

function TagManager:_watchFolder(folder: Folder)
	if self._maid[folder] then
		return
	end

	local maid = Maid.new()

	self._tagFolderSet[folder] = true
	maid:give(function()
		self._tagFolderSet[folder] = nil
	end)

	for _, child in pairs(folder:GetChildren()) do
		if child:IsA("Configuration") then
			maid[child] = self:_watchChild(child)
		end
	end

	maid:give(folder.ChildAdded:Connect(function(instance: Instance)
		if instance:IsA("Configuration") then
			maid[instance] = self:_watchChild(instance)
		end
	end))

	maid:give(folder.ChildRemoved:Connect(function(instance)
		if instance:IsA("Configuration") then
			maid[instance] = nil
			self:_updateStore()
		end
	end))

	self._maid[folder] = maid
end

function TagManager:_watchChild(instance: Configuration)
	local maid = Maid.new()

	self:_updateStore(true)

	maid:give(instance.AttributeChanged:Connect(function(_attribute)
		self:_updateStore()
	end))

	maid:give(instance:GetPropertyChangedSignal("Name"):Connect(function(_attribute)
		self:_updateStore(true)
	end))

	return maid
end

function TagManager:_ensureDefaultFolder()
	if not self._defaultTagsFolder then
		self._defaultTagsFolder = Instance.new("Folder")
		self._defaultTagsFolder.Name = tagsFolderName
		self._defaultTagsFolder.Parent = tagsRoot

		-- Ensure discovery
		Collection:AddTag(self._defaultTagsFolder, TAG_FOLDER_TAG)

		self:_watchFolder(self._defaultTagsFolder)
	end
	return self._defaultTagsFolder
end

function TagManager:_updateStore(updateUnknown: boolean?)
	if not self.updateTriggered then
		self.updateTriggered = true
		task.spawn(function()
			self:_doUpdateStore()
			if updateUnknown then
				self:_updateUnknownTags()
			end
		end)
	end
end

function TagManager:_doUpdateStore()
	self.updateTriggered = false
	local tags: { Tag } = {}
	local groups: { [string]: boolean } = {}
	local sel = Selection:Get()

	local function update(folder)
		local tagNamesSeen: { [string]: boolean } = {}
		for _, inst in pairs(folder:GetChildren()) do
			if not inst:IsA("Configuration") then
				continue
			end
			if tagNamesSeen[inst.Name] then
				if not self._gaveDuplicateWarningsFor[inst.Name] then
					warn(
						string.format(
							"Multiple tags in %s are named %q, consider removing the duplicates.",
							folder:GetFullName(),
							inst.Name
						)
					)
					self._gaveDuplicateWarningsFor[inst.Name] = true
				end
				continue
			end
			tagNamesSeen[inst.Name] = true

			local hasAny = false
			local missingAny = false
			local entry: Tag = {
				Name = inst.Name,
				Icon = inst:GetAttribute("Icon") or defaultValues.Icon,
				Visible = inst:GetAttribute("Visible") or false,
				DrawType = inst:GetAttribute("DrawType") or defaultValues.DrawType,
				AlwaysOnTop = inst:GetAttribute("AlwaysOnTop") or defaultValues.AlwaysOnTop,
				Group = inst:GetAttribute("Group") or defaultValues.Group,
				Color = inst:GetAttribute("Color") or genColor(inst.Name),
				HasAll = false,
				HasSome = false,
			}
			if entry.Group == "" then
				entry.Group = nil
			end
			if entry.Icon == "" then
				entry.Icon = defaultValues.Icon
			end
			for i = 1, #sel do
				local obj = sel[i]
				if Collection:HasTag(obj, entry.Name) then
					hasAny = true
				else
					missingAny = true
				end
			end
			entry.HasAll = hasAny and not missingAny
			entry.HasSome = hasAny and missingAny
			tags[#tags + 1] = entry
			if entry.Group then
				groups[entry.Group] = true
			end
		end
	end

	-- always update the default folder first
	-- so we can override tags as a user.
	if self._defaultTagsFolder then
		update(self._defaultTagsFolder)
	end

	-- update other folders
	for folder, _ in pairs(self._tagFolderSet) do
		if folder ~= self._defaultTagsFolder then
			update(folder)
		end
	end

	table.sort(tags, function(a, b)
		return a.Name < b.Name
	end)

	local oldTags = self.tags
	self.tags = tags
	self.store:dispatch(Actions.SetTagData(tags))

	local groupList = {}
	for name, _true in pairs(groups) do
		table.insert(groupList, name)
	end
	table.sort(groupList)
	self.groups = groups

	self.store:dispatch(Actions.SetGroupData(groupList))

	for _, func in pairs(self.onUpdate) do
		func(tags, oldTags)
	end
end

--[[
	Unknown tags are those that the collection service reports back, but that we don't have our UI data for.
   	Users may want to use these with the tag manager UI, or they may want them left alone.
   	The UI surfaces these tags within the list view and gives users the option to easily 'register' them if they wish
--]]
function TagManager:_updateUnknownTags()
	local sel = Selection:Get()

	if #sel ~= 0 then
		local knownTags = {}
		for _, tag in pairs(self.tags) do
			knownTags[tag.Name] = true
		end

		local unknownTagsMap = {}
		for _, inst in pairs(sel) do
			local tags = Collection:GetTags(inst)
			for _, name in pairs(tags) do
				-- Ignore unknown tags that start with a dot.
				if not knownTags[name] and name:sub(1, 1) ~= "." then
					unknownTagsMap[name] = true
				end
			end
		end
		local unknownTagsList: { string } = {}
		for tag, _ in pairs(unknownTagsMap) do
			table.insert(unknownTagsList, tag)
		end
		table.sort(unknownTagsList)

		self.store:dispatch(Actions.SetUnknownTags(unknownTagsList))
	end
end

function TagManager:_setProp(tagName: string, key: string, value: any)
	local tag = self:_findTagInst(tagName)
	if not tag then
		warn("Setting property of non-existent tag `" .. tostring(tagName) .. "`")
		return false
	end

	-- don't do unnecessary updates
	if tag:GetAttribute(key) == value then
		return false
	end

	ChangeHistory:SetWaypoint(string.format("Setting property %q of tag %q", key, tagName))
	tag:SetAttribute(key, value)
	ChangeHistory:SetWaypoint(string.format("Set property %q of tag %q", key, tagName))

	return true
end

function TagManager:_getProp(tagName: string, key: string)
	local instance = self:_findTagInst(tagName)
	if not instance then
		return nil
	end

	return instance:GetAttribute(key)
end

function TagManager:_findTagInst(tagName: string)
	if self._defaultTagsFolder then
		-- prefer the default tag folder first as users may override this
		-- value
		local result = self._defaultTagsFolder:FindFirstChild(tagName)
		if result then
			return result
		end
	end

	for folder, _ in pairs(self._tagFolderSet) do
		local result = folder:FindFirstChild(tagName)
		if result then
			return result
		end
	end

	return nil
end

function TagManager:AddTag(name)
	-- Early out if tag already exists.
	if self:_findTagInst(name) then
		return
	end

	ChangeHistory:SetWaypoint(string.format("Creating tag %q", name))

	local defaultTagsFolder = self:_ensureDefaultFolder()
	local instance = Instance.new("Configuration")
	instance.Name = name
	instance:SetAttribute("Icon", defaultValues.Icon)
	instance:SetAttribute("Visible", defaultValues.Visible)
	instance:SetAttribute("DrawType", defaultValues.DrawType)
	instance:SetAttribute("AlwaysOnTop", defaultValues.AlwaysOnTop)
	instance:SetAttribute("Group", defaultValues.Group)
	instance:SetAttribute("Color", genColor(name))
	instance.Parent = defaultTagsFolder

	ChangeHistory:SetWaypoint(string.format("Created tag %q", name))
end

function TagManager:Rename(oldName: string, newName: string)
	local instance = self:_findTagInst(oldName)
	if not instance then
		return
	end

	ChangeHistory:SetWaypoint(string.format("Renaming tag %q to %q", oldName, newName))

	instance.Name = newName
	for _, taggedInstance in pairs(Collection:GetTagged(oldName)) do
		Collection:RemoveTag(taggedInstance, oldName)
		Collection:AddTag(taggedInstance, newName)
	end

	ChangeHistory:SetWaypoint(string.format("Renamed tag %q to %q", oldName, newName))
end

function TagManager:ToggleGroupVisibility(groupName: string)
	local tags = {}
	local shouldEnable = false
	-- behavior: if the whole group is visible, set it invisible, otherwise set the whole group visible

	for _, tag in pairs(self.tags) do
		if tag.Group == groupName then
			-- if we haven't seen an invisible tag yet, collect them for later
			if not shouldEnable then
				table.insert(tags, tag)
				if not tag.Visible then
					shouldEnable = true
					self:_setProp(tag.Name, "Visible", true)
				end
			else
				-- if we know we're setting visible false, we can do it in this first loop
				self:_setProp(tag.Name, "Visible", true)
			end
		end
	end

	-- if on our first loop, all the tags were visible, so we should set them all invisible
	if not shouldEnable then
		for _, tag in pairs(tags) do
			self:_setProp(tag.Name, "Visible", false)
		end
	end
end

function TagManager:GetGroups()
	return self.groups
end

function TagManager:RenameGroup(oldName: string, newName: string)
	ChangeHistory:SetWaypoint(string.format("Renaming Group %q to %q", oldName, newName))

	for _, tag in pairs(self.tags) do
		if tag.Group == oldName then
			self:_setProp(tag.Name, "Group", newName or "")
		end
	end

	ChangeHistory:SetWaypoint(string.format("Renamed Group %q to %q", oldName, newName))
end

function TagManager:DeleteGroup(groupName: string)
	ChangeHistory:SetWaypoint(string.format("Deleteing Group %q", groupName))

	for _, tag in pairs(self.tags) do
		if tag.Group == groupName then
			self:_setProp(tag.Name, "Group", "")
		end
	end

	ChangeHistory:SetWaypoint(string.format("Deleted Group %q", groupName))
end

function TagManager:SelectAll(tag: string)
	Selection:Set(Collection:GetTagged(tag))
end

function TagManager:GetIcon(name: string): string
	return self:_getProp(name, "Icon") or defaultValues.Icon
end

function TagManager:GetVisible(name: string): boolean
	return self:_getProp(name, "Visible") or defaultValues.Visible
end

function TagManager:GetDrawType(name: string): string
	return self:_getProp(name, "DrawType") or defaultValues.DrawType
end

function TagManager:GetColor(name: string): Color3
	return self:_getProp(name, "Color") or defaultValues.Color
end

function TagManager:GetAlwaysOnTop(name: string): boolean
	return self:_getProp(name, "AlwaysOnTop") or defaultValues.AlwaysOnTop
end

function TagManager:GetGroup(name: string): string
	return self:_getProp(name, "Group") or defaultValues.Group
end

function TagManager:SetIcon(name: string, icon: string?)
	self:_setProp(name, "Icon", icon or "")
end

function TagManager:SetVisible(name: string, visible: boolean)
	self:_setProp(name, "Visible", visible)
end

function TagManager:SetDrawType(name: string, type: string)
	self:_setProp(name, "DrawType", type)
end

function TagManager:SetColor(name: string, color: Color3)
	self:_setProp(name, "Color", color)
end

function TagManager:SetAlwaysOnTop(name: string, value: boolean)
	self:_setProp(name, "AlwaysOnTop", value)
end

function TagManager:SetGroup(name: string, value: string?)
	self:_setProp(name, "Group", value or "")
end

function TagManager:DelTag(name: string)
	local instance = self:_findTagInst(name)
	if not instance then
		return
	end

	ChangeHistory:SetWaypoint(string.format("Deleting tag %q", name))

	-- Don't use Destroy as it prevents undo.
	instance.Parent = nil
	for _, inst in pairs(Collection:GetTagged(name)) do
		Collection:RemoveTag(inst, name)
	end

	ChangeHistory:SetWaypoint(string.format("Deleted tag %q", name))
end

function TagManager:SetTag(name: string, value: boolean)
	if value then
		ChangeHistory:SetWaypoint(string.format("Applying tag %q to selection", name))
	else
		ChangeHistory:SetWaypoint(string.format("Removing tag %q from selection", name))
	end

	local sel = Selection:Get()
	for _, obj in pairs(sel) do
		if value then
			Collection:AddTag(obj, name)
		else
			Collection:RemoveTag(obj, name)
		end
	end
	-- No changed events are bound on selected objects, so the store needs
	-- to be manually marked for update.
	self:_updateStore()

	if value then
		ChangeHistory:SetWaypoint(string.format("Applied tag %q to selection", name))
	else
		ChangeHistory:SetWaypoint(string.format("Removed tag %q from selection", name))
	end
end

type TagManager = typeof(TagManager.new())

return TagManager
