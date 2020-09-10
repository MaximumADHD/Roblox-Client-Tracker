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
local Lighting = game:GetService("Lighting")

local FFlagEnableToolboxInsertWithJoin2 = settings():GetFFlag("EnableToolboxInsertWithJoin2")
local FFlagStudioToolboxInsertAssetCategoryAnalytics = settings():GetFFlag("StudioToolboxInsertAssetCategoryAnalytics")
local FFlagToolboxFixDecalInsert = settings():GetFFlag("ToolboxFixDecalInsert")
local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")
local FFlagEnableToolboxVideos = game:GetFastFlag("EnableToolboxVideos")
local FFlagStudioFixUndoAfterInsertByDrag = game:GetFastFlag("StudioFixUndoAfterInsertByDrag")
local FFlagToolboxForceSelectDragger = game:GetFastFlag("ToolboxForceSelectDragger")
local FFlagDragFaceInstances = game:GetFastFlag("DragFaceInstances")
local EFLuaDraggers = game:GetEngineFeature("LuaDraggers")
local FFlagFixGroupPackagesCategoryInToolbox = game:GetFastFlag("FixGroupPackagesCategoryInToolbox")
local FFlagToolboxInsertEventContextFixes = game:GetFastFlag("ToolboxInsertEventContextFixes")
local FFlagEnableDefaultSortFix2 = game:GetFastFlag("EnableDefaultSortFix2")
local FFlagToolboxNewInsertAnalytics = game:GetFastFlag("ToolboxNewInsertAnalytics")

local INSERT_MAX_SEARCH_DEPTH = 2048
local INSERT_MAX_DISTANCE_AWAY = 64
local INSERT_CAMERA_DIST_MULT = 1.2

local RIBBON_DRAGGER_TOOLS = {
	[Enum.RibbonTool.Move] = true,
	[Enum.RibbonTool.Rotate] = true,
	[Enum.RibbonTool.Scale] = true,
	[Enum.RibbonTool.Select] = true,
}

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

		if FFlagEnableToolboxInsertWithJoin2 then
			assetInstance = game:InsertObjectsAndJoinIfLegacyAsync(url)
		else
			assetInstance = game:GetObjectsAsync(url)
		end
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
			if o:IsA("Sky") or o:IsA("Atmosphere") then
				-- If it's a sky or atmosphere object, we will parrent it to lighting.
				-- No promise needed here.
				o.Parent = Lighting
			else
			-- If it's a tool or hopperbin, then we should ask the
			-- dev if they want to put it in the starterpack or not,
			-- so we use a promise to get a response from the asset
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
			end

			newSelection[#newSelection + 1] = o
		end

		if model and #model:GetChildren() > 0 then
			model:MoveTo(insertPosition)

			local camera = Workspace.CurrentCamera
			local cameraCf = camera.CFrame
			local modelCf, size = model:GetBoundingBox()

			local cameraDistAway = size.magnitude * INSERT_CAMERA_DIST_MULT
			local dir = (cameraCf.p - modelCf.p).unit

			camera.CFrame = CFrame.new(modelCf.p + (cameraDistAway * dir))
			camera.Focus = CFrame.new(modelCf.p)

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

		if FFlagToolboxFixDecalInsert then
			decal.Parent = Workspace
			Selection:Set({decal})
		else
			local dragSuccess = pcall(function()
				plugin:StartDecalDrag(decal)
			end)

			if not dragSuccess then
				decal.Parent = (Selection:Get() or {})[1] or Workspace
				Selection:Set({decal})
			end
		end

		return decal
	else
		return nil, errorMessage
	end
end

-- For now, inserting packages is very different from inserting other assets
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

local function insertVideo(assetId, assetName)
	local url = Urls.constructAssetIdString(assetId)
	if DebugFlags.shouldDebugUrls() then
		print(("Inserting video %s"):format(url))
	end

	local videoObj = Instance.new("VideoFrame")
	videoObj.Video = url
	videoObj.Name = assetName
	videoObj.Parent = (Selection:Get() or {})[1] or Workspace
	videoObj.Size = UDim2.new(1, 0, 1, 0)
	Selection:Set({videoObj})

	return videoObj
end

local function installPlugin(assetId, assetVersionId, assetName)
	local success, errorMessage = pcall(function()
		if DebugFlags.shouldDebugUrls() then
			print(("Installing plugin %s"):format(tostring(assetId)))
		end
		if StudioService then
			--TODO: see what happens when resumeFunc vs errorFunc are called
			--make sure errorFunc is captured and returned from here as an error
			StudioService:TryInstallPlugin(assetId, assetVersionId)
		else
			warn("StudioService not found!")
		end
	end)
	return success, errorMessage
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

local function dispatchInsertAsset(options, insertToolPromise)
	local isPackage
	local categoryKey
	if FFlagUseCategoryNameInToolbox then
		isPackage = Category.categoryIsPackage(options.categoryName)
	else
		if FFlagEnableDefaultSortFix2 then
			categoryKey = options.currentTab
		else
			categoryKey = FFlagFixGroupPackagesCategoryInToolbox and Category.INVENTORY_KEY or Category.MARKETPLACE_KEY
		end
		isPackage = Category.categoryIsPackage(options.categoryIndex, categoryKey)
	end

	if isPackage then
		return insertPackage(options.assetId)
	elseif options.assetTypeId == Enum.AssetType.Audio.Value then
		return insertAudio(options.assetId, options.assetName)
	elseif options.assetTypeId == Enum.AssetType.Decal.Value then
		return insertDecal(options.plugin, options.assetId, options.assetName)
	elseif options.assetTypeId == Enum.AssetType.Plugin.Value then
		return installPlugin(options.assetId, options.assetVersionId, options.assetName)
	elseif FFlagEnableToolboxVideos and options.assetTypeId == Enum.AssetType.Video.Value then
		return insertVideo(options.assetId, options.assetName)
	else
		return insertAsset(options.assetId, options.assetName, insertToolPromise)
	end
end

local function sendInsertionAnalytics(options, assetWasDragged)
	Analytics.trackEventAssetInsert(options.assetId)
	Analytics.incrementAssetInsertCollector()
	Analytics.incrementToolboxInsertCounter(assetTypeIdToString(options.assetTypeId))

	local categoryName
	if FFlagToolboxInsertEventContextFixes and FFlagUseCategoryNameInToolbox then
		categoryName = options.categoryName
	else
		categoryName = options.currentCategoryName
	end

	if not assetWasDragged then
		Analytics.onAssetInserted(options.assetId, options.searchTerm, options.assetIndex, categoryName)
	else
		Analytics.onAssetDragInserted(options.assetId, options.searchTerm, options.assetIndex, categoryName)
	end

	if options.assetTypeId == Enum.AssetType.Audio.Value then
		Analytics.onSoundInserted()
	end

	Analytics.incrementWorkspaceInsertCounter()
end

local InsertAsset = {}

--[[
Options table format:
{
	plugin = Plugin,
	assetId = number,
	assetName = string,
	assetTypeId = AssetType,
	onSuccess = function,
	categoryName = string,
	currentCategoryName = string, TODO: Remove when FFlagToolboxInsertEventContextFixes and FFlagUseCategoryNameInToolbox are retired
	searchTerm = string,
	assetIndex = number,
}
]]

-- This is the public api we should be using.
-- insertToolPromise can be nil if dragged.
function InsertAsset.tryInsert(options, insertToolPromise, assetWasDragged)
	if assetWasDragged then
		if FFlagToolboxForceSelectDragger and EFLuaDraggers then
			local selectedRibbonTool = options.plugin:GetSelectedRibbonTool()
			if not RIBBON_DRAGGER_TOOLS[selectedRibbonTool] then
				options.plugin:SelectRibbonTool(Enum.RibbonTool.Select, UDim2.new())
			end
		end
		InsertAsset.doDragInsertAsset(options)
	else
		local value = InsertAsset.doInsertAsset(options, insertToolPromise)
		return value
	end
end

--TODO: CLIDEVSRVS-1691: Replacing category index with assetTypeId for package insertion in lua toolbox
function InsertAsset.doInsertAsset(options, insertToolPromise)
	local assetId = options.assetId
	local assetName = options.assetName
	local assetTypeId = options.assetTypeId

	if DebugFlags.shouldDebugWarnings() then
		print(("Inserting asset %s %s"):format(tostring(assetId), tostring(assetName)))
	end

	ChangeHistoryService:SetWaypoint(("Before insert asset %d"):format(assetId))

	local asset, errorMessage = dispatchInsertAsset(options, insertToolPromise)

	if assetTypeId == Enum.AssetType.Plugin.Value then
		ChangeHistoryService:SetWaypoint(("After attempt to install plugin %d"):format(assetId))
		sendInsertionAnalytics(options, false)

		if FFlagToolboxNewInsertAnalytics and options.onSuccess then
			options.onSuccess(assetId)
		end
	elseif asset then
		ChangeHistoryService:SetWaypoint(("After insert asset %d"):format(assetId))
		sendInsertionAnalytics(options, false)

		if FFlagStudioToolboxInsertAssetCategoryAnalytics then
			local categoryName
			if FFlagToolboxInsertEventContextFixes and FFlagUseCategoryNameInToolbox then
				categoryName = options.categoryName
			else
				categoryName = options.currentCategoryName
			end

			AssetInsertionTracker.trackInsert(assetId, asset, categoryName)
		else
			AssetInsertionTracker.trackInsert(assetId, asset)
		end

		if FFlagToolboxNewInsertAnalytics then
			if options.onSuccess then
				options.onSuccess(assetId, asset)
			end
		else
			options.onSuccess(assetId)
		end
	else
		warn(("Toolbox failed to insert asset %d %s: %s"):format(assetId, assetName, errorMessage or ""))
	end
	return asset
end

function InsertAsset.doDragInsertAsset(options)
	local assetId = options.assetId
	local assetName = options.assetName
	local assetTypeId = options.assetTypeId
	if assetTypeId == Enum.AssetType.Plugin.Value then
		-- We should absolutely never allow plugins to be installed via dragging!
		return
	elseif (not (EFLuaDraggers and FFlagDragFaceInstances)) and assetTypeId == Enum.AssetType.Video.Value then
		-- We need draggerFramework and face instance dragging to be on to drag videos
		insertVideo(assetId, assetName)
		return
	end

	if DebugFlags.shouldDebugWarnings() then
		print(("Inserting asset %s %s"):format(tostring(assetId), tostring(assetName)))
	end

	ChangeHistoryService:SetWaypoint(("Before insert asset %d"):format(assetId))

	local success, errorMessage = pcall(function()
		-- Mark the toolbox as using the C++ drag handler implementation
		-- That will insert the given asset and drag it in the 3d view
		options.plugin.UsesAssetInsertionDrag = true

		local isPackage
		if FFlagUseCategoryNameInToolbox then
			isPackage = Category.categoryIsPackage(options.categoryName)
		else
			local categoryKey = FFlagFixGroupPackagesCategoryInToolbox and Category.INVENTORY_KEY or Category.MARKETPLACE_KEY
			isPackage = Category.categoryIsPackage(options.categoryIndex, categoryKey)
		end

		-- TODO CLIDEVSRVS-1246: This should use uri list or something
		local url = Urls.constructAssetGameAssetIdUrl(
			assetId,
			options.assetTypeId,
			isPackage,
			FFlagDragFaceInstances and assetName or nil
		)
		if DebugFlags.shouldDebugUrls() then
			print(("Dragging asset url %s"):format(url))
		end
		options.plugin:StartDrag({
			Sender = "LuaToolbox",
			MimeType = "text/plain",
			Data = url,
		})
	end)

	if success then
		if not FFlagStudioFixUndoAfterInsertByDrag then
			ChangeHistoryService:SetWaypoint(("After insert asset %d"):format(assetId))
		end
		sendInsertionAnalytics(options, true)

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
