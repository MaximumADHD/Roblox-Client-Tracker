local Plugin = script.Parent.Parent.Parent

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)
local AssetInsertionTracker = require(Plugin.Core.Util.AssetInsertionTracker)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local InsertToolPromise = require(Plugin.Core.Util.InsertToolPromise)
local Urls = require(Plugin.Core.Util.Urls)

local Category = require(Plugin.Core.Types.Category)

local ChangeHistoryService = game:GetService("ChangeHistoryService")
local InsertService = game:GetService("InsertService")
local Selection = game:GetService("Selection")
local StarterPack = game:GetService("StarterPack")
local Workspace = game:GetService("Workspace")
local StudioService = game:GetService("StudioService")

local FFlagStudioPluginStartDecalDragApi = settings():GetFFlag("StudioPluginStartDecalDragApi")
local FFlagStudioLuaWidgetToolboxV2 = settings():GetFFlag("StudioLuaWidgetToolboxV2")
local FFlagEnableGetBoundingBox = settings():GetFFlag("EnableGetBoundingBox")
local FFlagEnableToolboxPluginInsertion = settings():GetFFlag("EnableToolboxPluginInsertion")

local INSERT_MAX_SEARCH_DEPTH = 2048
local INSERT_MAX_DISTANCE_AWAY = 64
local INSERT_CAMERA_DIST_MULT = 1.2

local function getInsertPosition()
	local camera = Workspace.CurrentCamera
	local viewportPoint = camera.ViewportSize / 2
	local unitRay = camera:ViewportPointToRay(viewportPoint.X, viewportPoint.Y, 0)

	local ray = Ray.new(unitRay.Origin, unitRay.Direction * INSERT_MAX_SEARCH_DEPTH)
	local part, hitPosition = Workspace:FindPartOnRay(ray)

	if not part then
		hitPosition = camera.CFrame.p + unitRay.Direction * INSERT_MAX_DISTANCE_AWAY
	end

	return hitPosition
end

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

local function insertAsset(assetId, assetName, insertToolPromise)
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
		local insertPosition = getInsertPosition()

		-- Insert everything into a model so we can query its bounding box
		-- Then after we've moved the camera, move it out of the box
		local model = Instance.new("Model")
		model.Name = "ToolboxTemporaryInsertModel"
		model.Parent = targetParent

		local newSelection = {}
		for _, o in ipairs(assetInstance) do

			-- If it's a tool or hopperbin, then we should ask the
			-- dev if they want to put it in the starterpack or not,
			-- so we use a promise to get a response from the asset
			if FFlagStudioLuaWidgetToolboxV2 then
				local parentToUse = model

				if o:IsA("Tool") or o:IsA("HopperBin") then
					local result = insertToolPromise:promptAndWait()

					if result == InsertToolPromise.INSERT_TO_WORKSPACE then
						parentToUse = model
					elseif result == InsertToolPromise.INSERT_TO_STARTER_PACK then
						parentToUse = StarterPack
					elseif result == InsertToolPromise.INSERT_CANCELLED then
						parentToUse = nil
					end
				end

				o.Parent = parentToUse
				if not o.Parent then
					o:Destroy()
				end
			else
				o.Parent = targetParent
			end

			newSelection[#newSelection + 1] = o
		end

		if FFlagStudioLuaWidgetToolboxV2 and model and #model:GetChildren() > 0 then
			model:MoveTo(insertPosition)

			local camera = Workspace.CurrentCamera
			if FFlagEnableGetBoundingBox then
				local cameraCf = camera.CFrame
				local modelCf, size = model:GetBoundingBox()

				local cameraDistAway = size.magnitude * INSERT_CAMERA_DIST_MULT
				local dir = (cameraCf.p - modelCf.p).unit

				camera.CFrame = CFrame.new(modelCf.p + (cameraDistAway * dir))
				camera.Focus = CFrame.new(modelCf.p)
			else
				camera.CFrame = CFrame.new(camera.CFrame.p, insertPosition)
			end

			for _, o in ipairs(model:GetChildren()) do
				o.Parent = model.Parent
			end
		end

		if model then
			model:Destroy()
		end
		Selection:Set(newSelection)

		return newSelection
	else
		return nil, errorMessage
	end
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

local function installPlugin(assetId, assetName)
	local success, errorMessage = pcall(function()
		if DebugFlags.shouldDebugUrls() then
			print(("Installing plugin %s"):format(tostring(assetId)))
		end
		if StudioService then
			StudioService:OpenPluginInsertPage(assetId)
		else
			warn("StudioService not found!")
		end
	end)
	return nil, errorMessage
end

local function assetTypeIdToString(assetTypeId)
	if assetTypeId == Enum.AssetType.Model.Value then
		return "Model"
	elseif assetTypeId == Enum.AssetType.Decal.Value then
		return "Decal"
	elseif assetTypeId == Enum.AssetType.Audio.Value then
		return "Audio"
	elseif assetTypeId == Enum.AssetType.MeshPart.Value then
		return "Mesh"
	elseif assetTypeId == Enum.AssetType.Plugin.Value then
		return "Plugin"
	else
		return "Unknown"
	end
end

-- Deprecated with move to options table under FFlagStudioLuaWidgetToolboxV2
local function deprecatedDispatchInsertAsset(plugin, assetId, assetName, assetTypeId, categoryIndex)
	if Category.categoryIsPackage(categoryIndex) then
		return insertPackage(assetId)
	elseif assetTypeId == Enum.AssetType.Audio.Value then
		return insertAudio(assetId, assetName)
	elseif assetTypeId == Enum.AssetType.Decal.Value and FFlagStudioPluginStartDecalDragApi then
		return insertDecal(plugin, assetId, assetName)
	else
		return insertAsset(assetId, assetName)
	end
end

-- Deprecated with move to options table under FFlagStudioLuaWidgetToolboxV2
local function deprecatedSendInsertionAnalytics(assetId, assetTypeId, assetWasDragged, searchTerm, newAssetIndex)
	Analytics.trackEventAssetInsert(assetId)
	Analytics.incrementAssetInsertCollector()
	Analytics.incrementToolboxInsertCounter(assetTypeIdToString(assetTypeId))

	local searchText = searchTerm or "[searchText]"
	local assetIndex = newAssetIndex or "[assetIndex]"

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

--TODO: CLIDEVSRVS-1691: Replacing category index with assetTypeId for package insertion in lua toolbox
local function dispatchInsertAsset(options)
	if Category.categoryIsPackage(options.categoryIndex) then
		return insertPackage(options.assetId)
	elseif options.assetTypeId == Enum.AssetType.Audio.Value then
		return insertAudio(options.assetId, options.assetName)
	elseif options.assetTypeId == Enum.AssetType.Decal.Value and FFlagStudioPluginStartDecalDragApi then
		return insertDecal(options.plugin, options.assetId, options.assetName)
	elseif options.assetTypeId == Enum.AssetType.Plugin.Value and FFlagEnableToolboxPluginInsertion then
		return installPlugin(options.assetId, options.assetName)
	else
		return insertAsset(options.assetId, options.assetName, options.insertToolPromise)
	end
end

local function sendInsertionAnalytics(options)
	Analytics.trackEventAssetInsert(options.assetId)
	Analytics.incrementAssetInsertCollector()
	Analytics.incrementToolboxInsertCounter(assetTypeIdToString(options.assetTypeId))

	if not options.assetWasDragged then
		Analytics.onAssetInserted(options.assetId, options.searchTerm, options.assetIndex)
	else
		Analytics.onAssetDragInserted(options.assetId, options.searchTerm, options.assetIndex)
	end

	if options.assetTypeId == Enum.AssetType.Audio.Value then
		Analytics.onSoundInserted()
	end

	Analytics.incrementWorkspaceInsertCounter()
end

local InsertAsset = {}

--TODO: CLIDEVSRVS-1691: Replacing category index with assetTypeId for package insertion in lua toolbox
-- Deprecated with move to options table under FFlagStudioLuaWidgetToolboxV2
function InsertAsset.deprecatedInsertAsset(plugin, assetId, assetName, assetTypeId, onSuccess, categoryIndex, searchTerm, assetIndex)
	if DebugFlags.shouldDebugWarnings() then
		print(("Inserting asset %s %s"):format(tostring(assetId), tostring(assetName)))
	end

	ChangeHistoryService:SetWaypoint(("Before insert asset %d"):format(assetId))

	local asset, errorMessage = deprecatedDispatchInsertAsset(plugin, assetId, assetName, assetTypeId, categoryIndex)

	if asset then
		ChangeHistoryService:SetWaypoint(("After insert asset %d"):format(assetId))
		deprecatedSendInsertionAnalytics(assetId, assetTypeId, false, searchTerm, assetIndex)

		AssetInsertionTracker.trackInsert(assetId, asset)

		onSuccess(assetId)
	else
		warn(("Toolbox failed to insert asset %d %s: %s"):format(assetId, assetName, errorMessage or ""))
	end

	return asset
end

-- Deprecated with move to options table under FFlagStudioLuaWidgetToolboxV2
function InsertAsset.deprecatedDragInsertAsset(plugin, assetId, assetName, assetTypeId, onSuccess, categoryIndex, searchTerm, assetIndex)
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
		deprecatedSendInsertionAnalytics(assetId, assetTypeId, true, searchTerm, assetIndex)

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

--[[
Options table format:
{
	plugin = Plugin,
	assetId = number,
	assetName = string,
	assetTypeId = AssetType,
	onSuccess = function,
	categoryIndex = number,
	searchTerm = string,
	assetIndex = number,
	insertToolPromise = InsertToolPromise,
}
]]

--TODO: CLIDEVSRVS-1691: Replacing category index with assetTypeId for package insertion in lua toolbox
function InsertAsset.insertAsset(options)
	local assetId = options.assetId
	local assetName = options.assetName

	if DebugFlags.shouldDebugWarnings() then
		print(("Inserting asset %s %s"):format(tostring(assetId), tostring(assetName)))
	end

	ChangeHistoryService:SetWaypoint(("Before insert asset %d"):format(assetId))

	local asset, errorMessage = dispatchInsertAsset(options)

	if asset then
		ChangeHistoryService:SetWaypoint(("After insert asset %d"):format(assetId))
		sendInsertionAnalytics(options)

		AssetInsertionTracker.trackInsert(assetId, asset)

		options.onSuccess(assetId)
	else
		warn(("Toolbox failed to insert asset %d %s: %s"):format(assetId, assetName, errorMessage or ""))
	end

	return asset
end

function InsertAsset.dragInsertAsset(options)
	local assetId = options.assetId
	local assetName = options.assetName

	if DebugFlags.shouldDebugWarnings() then
		print(("Inserting asset %s %s"):format(tostring(assetId), tostring(assetName)))
	end

	ChangeHistoryService:SetWaypoint(("Before insert asset %d"):format(assetId))

	local success, errorMessage = pcall(function()
		-- Mark the toolbox as using the C++ drag handler implementation
		-- That will insert the given asset and drag it in the 3d view
		options.plugin.UsesAssetInsertionDrag = true

		-- TODO CLIDEVSRVS-1246: This should use uri list or something
		local url = Urls.constructAssetGameAssetIdUrl(
			assetId,
			options.assetTypeId,
			Category.categoryIsPackage(options.categoryIndex)
		)
		if DebugFlags.shouldDebugUrls() then
			print(("Dragging asset url %s"):format(url))
		end
		local drag = PluginDrag.new("LuaToolbox", "text/plain", url)
		options.plugin:StartDrag(drag)
	end)

	if success then
		ChangeHistoryService:SetWaypoint(("After insert asset %d"):format(assetId))
		sendInsertionAnalytics(options)

		-- TODO CLIDEVSRVS-1689: For AssetInsertionTracker.trackInsert with dragged
		-- asset, need to listen for dropped event on 3d view which
		-- depends on viewports api

		-- TODO CLIDEVSRVS-1246: If they cancel the drag, this probably shouldn't be called?
		options.onSuccess(assetId)
	else
		warn(("Toolbox failed to drag asset %d %s: %s"):format(assetId, assetName, errorMessage or ""))
	end
	return success

end

return InsertAsset
