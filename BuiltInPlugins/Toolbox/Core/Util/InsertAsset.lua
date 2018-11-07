local Plugin = script.Parent.Parent.Parent

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)
local AssetInsertionTracker = require(Plugin.Core.Util.AssetInsertionTracker)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local Urls = require(Plugin.Core.Util.Urls)
local Category = require(Plugin.Core.Types.Category)

local ChangeHistoryService = game:GetService("ChangeHistoryService")
local Selection = game:GetService("Selection")
local InsertService = game:GetService("InsertService")
local Workspace = game:GetService("Workspace")

-- TODO CLIDEVSRVS-1564: Change this to a fastflag once the API is in CI
local isDecalDraggingEnabled = true

local function insertAudio(assetId, assetName)
	local url = Urls.constructAssetIdString(assetId)
	if DebugFlags.shouldDebugUrls() then
		print(("Inserting sound %s"):format(url))
	end

	local soundObj = Instance.new("Sound")
	soundObj.SoundId = url
	soundObj.Name = assetName
	soundObj.Parent = (Selection:Get() or {})[1] or Workspace
	Selection:Set({soundObj})

	return soundObj
end

local function insertAsset(assetId, assetName)
	local targetParent = Workspace

	local assetInstance = nil
	local success, errorMessage = pcall(function()
		local url = Urls.constructAssetIdString(assetId)
		if DebugFlags.shouldDebugUrls() then
			print(("Inserting asset %s"):format(url))
		end

		assetInstance = game:GetObjects(url)
	end)

	if success and assetInstance then
		-- Parent everything to the target and select it
		local newSelection = {}
		for _, o in ipairs(assetInstance) do
			o.Parent = targetParent
			newSelection[#newSelection + 1] = o
		end
		Selection:Set(newSelection)
		-- TODO CLIDEVSRVS-1585: Should we reposition what was inserted or move the camera etc?
		return newSelection
	else
		return nil, errorMessage
	end

	-- TODO CLIDEVSRVS-1585: Look at
	-- RbxWorkspace::insert(RBX::Instances& instances, const RBX::Serializer::Metadata& metadata, bool insertInto)
	-- See how it positions the asset:
	-- InsertObjectWidget::getInsertLocation(boost::shared_ptr<RBX::DataModel> pDataModel, QPoint* insertPosition,
	-- 	bool* isOnPart)
	-- And how it zooms the camera to it
end

local function insertDecal(plugin, assetId, assetName)
	local tbl = nil
	local success, errorMessage = pcall(function()
		local url = Urls.constructAssetIdString(assetId)
		if DebugFlags.shouldDebugUrls() then
			print(("Inserting decal %s"):format(url))
		end
		tbl = game:GetObjects(url)
	end)

	if success and tbl and tbl[1] then
		local decal = tbl[1]
		decal.Name = assetName

		local dragSuccess = pcall(function()
			plugin:StartDecalDrag(decal)
		end)
		if not dragSuccess then
			decal.Parent = (Selection:Get() or {})[1] or Workspace
			Selection:Set({decal})
		end

		return decal
	else
		return nil, errorMessage
	end
end

-- For now, inserting pacakages is very different from inserting other assets
local function insertPackage(assetId)
	local instanceTable = nil
	local success, errorMessage = pcall(function()
		local url = Urls.constructAssetIdString(assetId)
		if DebugFlags.shouldDebugUrls() then
			print(("Inserting package %s"):format(url))
		end
		instanceTable = InsertService:LoadPackageAsset(url)
	end)

	if success and instanceTable and instanceTable[1] then
		instanceTable[1].Parent = (Selection:Get() or {})[1] or Workspace
		Selection:set(instanceTable)
		return instanceTable[1]
	else
		return nil, errorMessage
	end
end


--TODO: CLIDEVSRVS-1691: Replacing category index with assetTypeId for package insertion in lua toolbox
local function dispatchInsertAsset(plugin, assetId, assetName, assetTypeId, categoryIndex)
	-- TODO CLIDEVSRVS-1585: Handle different types of assets
	-- e.g. tools can go in starterpack (old toolbox has a popup asking what user wants)
	if Category.categoryIsPackage(categoryIndex) then
		return insertPackage(assetId)
	elseif assetTypeId == Enum.AssetType.Audio.Value then
		return insertAudio(assetId, assetName)
	elseif assetTypeId == Enum.AssetType.Decal.Value and isDecalDraggingEnabled then
		return insertDecal(plugin, assetId, assetName)
	else
		return insertAsset(assetId, assetName)
	end
end

local function sendInsertionAnalytics(assetId, assetTypeId, assetWasDragged)
	Analytics.trackEventAssetInsert(assetId)
	Analytics.incrementAssetInsertCollector()
	Analytics.incrementToolboxInsertCounter(assetTypeId)

	-- TODO CLIDEVSRVS-1689: Get search text and asset index for analytics
	local searchText = "[searchText]"
	local assetIndex = "[assetIndex]"

	if not assetWasDragged then
		Analytics.onAssetInserted(assetId, searchText, assetIndex)
	else
		Analytics.onAssetDragInserted(assetId, searchText, assetIndex)
	end

	if assetTypeId == Enum.AssetType.Audio.Value then
		Analytics.onSoundInserted()
	end

	Analytics.incrementWorkspaceInsertCounter()
end

local InsertAsset = {}

--TODO: CLIDEVSRVS-1691: Replacing category index with assetTypeId for package insertion in lua toolbox
function InsertAsset.insertAsset(plugin, assetId, assetName, assetTypeId, onSuccess, categoryIndex)
	if DebugFlags.shouldDebugWarnings() then
		print(("Inserting asset %s %s"):format(tostring(assetId), tostring(assetName)))
	end

	ChangeHistoryService:SetWaypoint(("Before insert asset %d"):format(assetId))

	local asset, errorMessage = dispatchInsertAsset(plugin, assetId, assetName, assetTypeId, categoryIndex)

	if asset then
		ChangeHistoryService:SetWaypoint(("After insert asset %d"):format(assetId))
		sendInsertionAnalytics(assetId, assetTypeId, false)

		AssetInsertionTracker.trackInsert(assetId, asset)

		onSuccess(assetId)
	else
		warn(("Toolbox failed to insert asset %d %s: %s"):format(assetId, assetName, errorMessage or ""))
	end

	return asset
end

function InsertAsset.dragInsertAsset(plugin, assetId, assetName, assetTypeId, onSuccess, categoryIndex)
	if DebugFlags.shouldDebugWarnings() then
		print(("Inserting asset %s %s"):format(tostring(assetId), tostring(assetName)))
	end

	ChangeHistoryService:SetWaypoint(("Before insert asset %d"):format(assetId))

	local success, errorMessage = pcall(function()
		-- Mark the toolbox as using the C++ drag handler implementation
		-- That will insert the given asset and drag it in the 3d view
		plugin.UsesAssetInsertionDrag = true

		-- TODO CLIDEVSRVS-1246: This should use uri list or something
		local url = Urls.constructAssetGameAssetIdUrl(assetId, assetTypeId, Category.categoryIsPackage(categoryIndex))
		if DebugFlags.shouldDebugUrls() then
			print(("Dragging asset url %s"):format(url))
		end
		local drag = PluginDrag.new("LuaToolbox", "text/plain", url)
		plugin:StartDrag(drag)
	end)

	if success then
		ChangeHistoryService:SetWaypoint(("After insert asset %d"):format(assetId))
		sendInsertionAnalytics(assetId, assetTypeId, true)

		-- TODO CLIDEVSRVS-1689: For AssetInsertionTracker.trackInsert with dragged
		-- asset, need to listen for dropped event on 3d view which
		-- depends on viewports api

		-- TODO CLIDEVSRVS-1246: If they cancel the drag, this probably shouldn't be called?
		onSuccess(assetId)
	else
		warn(("Toolbox failed to drag asset %d %s: %s"):format(assetId, assetName, errorMessage or ""))
	end

	return success
end

return InsertAsset
