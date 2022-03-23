--!strict
local isAssetIdLike = require(script.Parent.isAssetIdLike)
local normalizeAssetId = require(script.Parent.normalizeAssetId)
local findAssetIdsInSource = require(script.Parent.findAssetIdsInSource)

local ServiceList = {
	game:GetService("Workspace"),
	game:GetService("ReplicatedFirst"),
	game:GetService("ReplicatedStorage"),
	game:GetService("ServerStorage"),
	game:GetService("ServerScriptService"),
	game:GetService("Lighting"),
	game:GetService("StarterGui"),
	game:GetService("StarterPack"),
	game:GetService("StarterPlayer"),
	game:GetService("SoundService"),
	game:GetService("Teams"),
}

type AssetId = string
type ClassName = string
type HandlerFunc = (Instance) -> {AssetId}?

-- A set of handler functions which return know how to find SoundIds contained
-- in a given type of Instance
local Handlers = {} :: {[ClassName]: HandlerFunc}
function Handlers.Sound(instance)
	local soundId = (instance :: Sound).SoundId

	-- Filter out common non-valid contents that may be in the soundId prop
	if soundId == "" or soundId == "0" or soundId == " " then
		return nil
	end

	-- Normalize and record
	local processedId = normalizeAssetId(soundId)
	if processedId then
		return { processedId }
	end
	return nil
end
function Handlers.LuaSourceContainer(instance: any)
	-- Boomboxes have a sound blacklist in them, which
	-- is full of false positives.
	if instance.Parent.Name:lower() == "boombox" then
		return nil
	end
	return findAssetIdsInSource(instance.Source)
end
function Handlers.StringValue(instance)
	local value = normalizeAssetId((instance :: StringValue).Value)
	if value and isAssetIdLike(value) then
		return { value }
	end
	return nil
end
function Handlers.IntValue(instance)
	local value = tostring((instance :: IntValue).Value)
	if isAssetIdLike(value) then
		return { value }
	end
	return nil
end

-- Get the handler function for a given type
-- This is non-trivial because we want all things which :IsA(FooClass) to be
-- handled by the handler for FooClass. To do this we dynamically build a class
-- mapping as we go through the objects.
local ClassToBaseMapping = {} :: {[ClassName]: ClassName}
local function getHandlerFunc(instance: Instance): HandlerFunc?
	local baseClass = ClassToBaseMapping[instance.ClassName]
	if not baseClass then
		for potentialBase, handler in pairs(Handlers) do
			if instance:IsA(potentialBase) then
				baseClass = potentialBase
			end
		end
		if not baseClass then
			baseClass = "Instance"
		end
		ClassToBaseMapping[instance.ClassName] = baseClass
	end
	return Handlers[baseClass]
end

-- Find all of the soundIds in the DataModel, and return what Instances include
-- references to a given soundId. Return only the numeric part of the soundId,
-- but still as a string, since it will be consumed as a string.
local function findAllAssetIds(): {[AssetId]: {Instance}}
	local instancesForId = {}
	local totalCount = 0
	for _, container in ipairs(ServiceList) do
		for _, descendant in ipairs(container:GetDescendants()) do
			local handler = getHandlerFunc(descendant)
			if handler then
				local idList = handler(descendant)
				if idList then
					for _, assetId in ipairs(idList) do
						local instanceList = instancesForId[assetId]
						if instanceList then
							table.insert(instanceList, descendant)
						else
							instancesForId[assetId] = {descendant}
							totalCount += 1
						end
					end
				end
			end
		end
	end
	-- print("Total potential IDs from findAllAssetIds:", totalCount)
	return instancesForId
end

return findAllAssetIds