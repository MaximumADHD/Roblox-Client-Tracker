local Plugin = script.Parent.Parent.Parent

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local InsertToolPromise = require(Plugin.Core.Util.InsertToolPromise)
local isCli = require(Plugin.Core.Util.isCli)
local NetworkInterface = require(Plugin.Core.Networking.NetworkInterface)
local Urls = require(Plugin.Core.Util.Urls)

local Category = require(Plugin.Core.Types.Category)

local webKeys = require(Plugin.Core.Util.Permissions.Constants).webKeys

local EngineFeatureDraggerBruteForce = game:GetEngineFeature("DraggerBruteForceAll")
local FFlagToolboxEnableScriptConfirmation = game:GetFastFlag("ToolboxEnableScriptConfirmation")
local FFlagToolboxEnablePostDropScriptConfirmation = game:GetFastFlag("ToolboxEnablePostDropScriptConfirmation")
local FFlagToolboxGrantUniverseAudioPermissions = game:GetFastFlag("ToolboxGrantUniverseAudioPermissions")
local FFlagToolboxEnableAudioGrantDialog = game:GetFastFlag("ToolboxEnableAudioGrantDialog")

local ChangeHistoryService = game:GetService("ChangeHistoryService")
local InsertService = game:GetService("InsertService")
local Selection = game:GetService("Selection")
local StarterPack = game:GetService("StarterPack")
local Workspace = game:GetService("Workspace")
local StudioService = game:GetService("StudioService")
local Lighting = game:GetService("Lighting")
local MarketplaceService = game:GetService("MarketplaceService")
local ToolboxService
-- ToolboxService is not available in roblox-cli.
if isCli() then
	ToolboxService = {}
else
	ToolboxService = game:GetService("ToolboxService")
end

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
	if EngineFeatureDraggerBruteForce then
		local params = RaycastParams.new()
		params.BruteForceAllSlow = true
		local result = Workspace:Raycast(ray.Origin, ray.Direction, params)
		if result then
			return result.Position
		else
			return camera.CFrame.p + unitRay.Direction * INSERT_MAX_DISTANCE_AWAY
		end
	else
		local part, hitPosition = Workspace:FindPartOnRay(ray)

		if not part then
			hitPosition = camera.CFrame.p + unitRay.Direction * INSERT_MAX_DISTANCE_AWAY
		end

		return hitPosition
	end
end

local function grantAssetPermission(assetId)
	if game.GameId == 0 then
		return
	end
	local networkInterface = NetworkInterface.new()

	local requestBody = {
		requests = {
			{
				action = webKeys.UseAction,
				subjectId = game.GameId,
				subjectType = webKeys.Universe,
			},
		},
	}
	return networkInterface
		:grantAssetPermissionWithTimeout(assetId, requestBody)
		:catch(function(err)
			return err
		end)
		:await()
end

local function doPermissionGrantDialogForAsset(assetName, assetId, assetTypeId, insertToolPromise, localization)
	if game.GameId == 0 then
		return
	end
	if not insertToolPromise then
		return
	end

	local productInfo = MarketplaceService:GetProductInfo(assetId, Enum.InfoType.Asset)
	if productInfo.IsPublicDomain then
		return -- Don't show dialog if public domain
	end

	if assetTypeId ~= Enum.AssetType.Audio.Value then
		error("Only support for fetching permissions on Audio is implemented at this time.")
	end

	local grantPermission = insertToolPromise:promptPermissionsGrantAndWait({
		assetName = assetName,
		assetId = assetId,
		assetType = localization:getText("General", "AssetTypeAudio"),
	})
	if grantPermission then
		local result = grantAssetPermission(assetId)
		if result ~= nil and result.Body ~= nil and result.Body.Error ~= nil and result.Body.Error.Code ~= nil and result.Body.Error.Code ~= 4 then
			warn(localization:getText("GrantAssetPermission", "Failure", {
				assetId = assetId,
			}))
			return
		end

		print(localization:getText("GrantAssetPermission", "Success", {
			assetId = assetId,
		}))
	end
end

local function insertAudio(assetId, assetName, insertToolPromise, localization)
	local url = Urls.constructAssetIdString(assetId)
	if DebugFlags.shouldDebugUrls() then
		print(("Inserting sound %s"):format(url))
	end

	if FFlagToolboxGrantUniverseAudioPermissions then
		grantAssetPermission(assetId)
	end

	local soundObj = Instance.new("Sound")
	soundObj.SourceAssetId = assetId
	soundObj.SoundId = url
	soundObj.Name = assetName
	soundObj.Parent = (Selection:Get() or {})[1] or Workspace
	Selection:Set({ soundObj })

	if FFlagToolboxEnableAudioGrantDialog then
		-- If for some reason this fails in an unexpected way, we want it to happen after inserting
		-- the asset for parity with the drag/drop code where the asset is already inserted.
		doPermissionGrantDialogForAsset(assetName, assetId, Enum.AssetType.Audio.Value, insertToolPromise, localization)
	end

	return soundObj
end

local function sanitizeMeshAsset(assetId, instances, localization)
	local changed = false
	local filtered = {}
	for _, instance in ipairs(instances) do
		if instance:IsA("MeshPart") then
			if #instance:GetChildren() > 0 then
				instance:ClearAllChildren()
				changed = true
			end
			table.insert(filtered, instance)
		else
			instance:Destroy()
			changed = true
		end
	end

	if changed then
		Analytics.reportMeshPartFiltered(assetId)
	end

	if #filtered == 0 then
		warn(localization:getText("Common", "InsertAborted", {
			assetId = assetId,
		}))
	end

	return filtered
end

local function doScriptConfirmationIfContainsScripts(assetName, instances, insertToolPromise)
	if not FFlagToolboxEnableScriptConfirmation then
		return
	end
	if FFlagToolboxEnablePostDropScriptConfirmation then
		if not instances then
			return
		end
		if not insertToolPromise then
			return
		end
	end

	-- Note: instance:IsA("Script") covers both LocalScript and Script types.
	local numScripts = 0
	for _, instance in ipairs(instances) do
		if instance:IsA("Script") then
			numScripts = numScripts + 1
		end
		for _, descendant in ipairs(instance:GetDescendants()) do
			if descendant:IsA("Script") then
				numScripts = numScripts + 1
			end
		end
	end
	if numScripts < 1 then
		return
	end
	insertToolPromise:promptScriptWarningAndWait({ assetName = assetName, numScripts = numScripts })
end

local function insertAsset(assetId, assetName, insertToolPromise, assetTypeId, localization)
	local targetParent = Workspace

	local assetInstance = nil
	local success, errorMessage = pcall(function()
		local url = Urls.constructAssetIdString(assetId)
		if DebugFlags.shouldDebugUrls() then
			print(("Inserting asset %s"):format(url))
		end

		assetInstance = game:InsertObjectsAndJoinIfLegacyAsync(url)
	end)

	if success and assetInstance then
		-- Parent everything to the target and select it
		local insertPosition = getInsertPosition()

		-- Insert everything into a model so we can query its bounding box
		-- Then after we've moved the camera, move it out of the box
		local model = Instance.new("Model")
		model.Name = "ToolboxTemporaryInsertModel"
		model.Parent = targetParent

		if assetTypeId == Enum.AssetType.MeshPart.Value then
			assetInstance = sanitizeMeshAsset(assetId, assetInstance, localization)
		end
		doScriptConfirmationIfContainsScripts(assetName, assetInstance, insertToolPromise)

		local newSelection = {}
		for _, o in ipairs(assetInstance) do
			if o:IsA("Sky") or o:IsA("Atmosphere") then
				-- If it's a sky or atmosphere object, we will parent it to lighting.
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
		if model then
			if #model:GetChildren() > 0 then
				model:MoveTo(insertPosition)
				local modelCf, size = model:GetBoundingBox()

				if size.Magnitude > 0 then
					local camera = Workspace.CurrentCamera
					local cameraCf = camera.CFrame

					local cameraDistAway = size.Magnitude * INSERT_CAMERA_DIST_MULT
					local dir = (cameraCf.p - modelCf.p).unit

					camera.CFrame = CFrame.new(modelCf.p + (cameraDistAway * dir))
					camera.Focus = CFrame.new(modelCf.p)
				end

				for _, o in ipairs(model:GetChildren()) do
					o.Parent = model.Parent
				end
			end

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
		tbl = game:GetObjectsAsync(url)
	end)

	if success and tbl and tbl[1] then
		local decal = tbl[1]
		decal.Name = assetName
		decal.SourceAssetId = assetId
		decal.Parent = (Selection:Get() or {})[1] or Workspace
		Selection:Set({ decal })

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
		instanceTable = InsertService:LoadPackageAssetAsync(url)
	end)

	if success and instanceTable and instanceTable[1] then
		instanceTable[1].SourceAssetId = assetId
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
	videoObj.SourceAssetId = assetId
	videoObj.Video = url
	videoObj.Name = assetName
	videoObj.Parent = (Selection:Get() or {})[1] or Workspace
	videoObj.Size = UDim2.new(1, 0, 1, 0)
	Selection:Set({ videoObj })

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
	elseif assetTypeId == Enum.AssetType.Video.Value then
		return "Video"
	elseif assetTypeId == Enum.AssetType.Animation.Value then
		return "Animation"
	else
		if DebugFlags.shouldDebugWarnings() then
			warn(("Missing name for assetTypeId %s"):format(tostring(assetTypeId)))
		end
		return "Unknown"
	end
end

local function dispatchInsertAsset(options, insertToolPromise)
	local isPackage = Category.categoryIsPackage(options.categoryName)
	if isPackage then
		return insertPackage(options.assetId)
	elseif options.assetTypeId == Enum.AssetType.Audio.Value then
		return insertAudio(options.assetId, options.assetName, insertToolPromise, options.localization)
	elseif options.assetTypeId == Enum.AssetType.Decal.Value then
		return insertDecal(options.plugin, options.assetId, options.assetName)
	elseif options.assetTypeId == Enum.AssetType.Plugin.Value then
		return installPlugin(options.assetId, options.assetVersionId, options.assetName)
	elseif options.assetTypeId == Enum.AssetType.Video.Value then
		return insertVideo(options.assetId, options.assetName)
	else
		return insertAsset(
			options.assetId,
			options.assetName,
			insertToolPromise,
			options.assetTypeId,
			options.localization
		)
	end
end

local function sendInsertionAnalytics(options, assetWasDragged)
	Analytics.incrementToolboxInsertCounter(assetTypeIdToString(options.assetTypeId))

	local categoryName = options.categoryName
	Analytics.incrementToolboxCategoryInsertCounter(categoryName)

	if not assetWasDragged then
		Analytics.onAssetInserted(options.assetId, options.searchTerm, options.assetIndex, categoryName)
	else
		Analytics.onAssetDragInserted(options.assetId, options.searchTerm, options.assetIndex, categoryName)
	end

	Analytics.incrementWorkspaceInsertCounter()
end

local InsertAsset = {
	_localization = nil,
	registerLocalization = nil,
	registerProcessDragHandler = nil,
}

--[[
Options table format:
{
	plugin = Plugin,
	assetId = number,
	assetName = string,
	assetTypeId = AssetType,
	onSuccess = function,
	categoryName = string,
	searchTerm = string,
	assetIndex = number,
}
]]

local activeDraggingState = nil
-- This is the public api we should be using.
-- insertToolPromise can be nil if dragged, so we store it locally to preserve it on final drop.
function InsertAsset.tryInsert(options, insertToolPromise, assetWasDragged)
	if assetWasDragged then
		local selectedRibbonTool = options.plugin:GetSelectedRibbonTool()
		if not RIBBON_DRAGGER_TOOLS[selectedRibbonTool] then
			options.plugin:SelectRibbonTool(Enum.RibbonTool.Select, UDim2.new())
		end
		if FFlagToolboxEnablePostDropScriptConfirmation then
			activeDraggingState = {
				assetName = options.assetName,
				assetId = if FFlagToolboxEnableAudioGrantDialog then options.assetId else nil,
				assetTypeId = if FFlagToolboxEnableAudioGrantDialog then options.assetTypeId else nil,
				localization = if FFlagToolboxEnableAudioGrantDialog then InsertAsset._localization else nil,
				insertToolPromise = insertToolPromise,
			}
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

	options.localization = InsertAsset._localization

	local asset, errorMessage = dispatchInsertAsset(options, insertToolPromise)

	if assetTypeId == Enum.AssetType.Plugin.Value then
		ChangeHistoryService:SetWaypoint(("After attempt to install plugin %d"):format(assetId))
		sendInsertionAnalytics(options, false)

		if options.onSuccess then
			options.onSuccess(assetId)
		end
	elseif asset then
		ChangeHistoryService:SetWaypoint(("After insert asset %d"):format(assetId))
		sendInsertionAnalytics(options, false)
		if options.onSuccess then
			options.onSuccess(assetId, asset)
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
	end

	if DebugFlags.shouldDebugWarnings() then
		print(("Inserting asset %s %s"):format(tostring(assetId), tostring(assetName)))
	end

	ChangeHistoryService:SetWaypoint(("Before insert asset %d"):format(assetId))

	local success, errorMessage = pcall(function()
		-- Mark the toolbox as using the C++ drag handler implementation
		-- That will insert the given asset and drag it in the 3d view
		options.plugin.UsesAssetInsertionDrag = true

		local isPackage = Category.categoryIsPackage(options.categoryName)

		local url = Urls.constructAssetGameAssetIdUrl(assetId, options.assetTypeId, isPackage, assetName)
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
		sendInsertionAnalytics(options, true)

		-- TODO STM-819: Move (or create new) analytics which fire when the asset is actually inserted
		-- via drag, rather than when the drag starts.
		options.onSuccess(assetId)
	else
		warn(("Toolbox failed to drag asset %d %s: %s"):format(assetId, assetName, errorMessage or ""))
	end
	return success
end

local function setSourceAssetIdOnInstances(assetId, instances)
	for _, instance in ipairs(instances) do
		instance.SourceAssetId = assetId
	end
end

function InsertAsset.registerLocalization(localization)
	InsertAsset._localization = localization
end

function InsertAsset.registerProcessDragHandler()
	-- This fires when the drag from Toolbox reaches the 3D view
	ToolboxService.ProcessAssetInsertionDrag = function(assetId, assetTypeId, instances)
		setSourceAssetIdOnInstances(assetId, instances)

		-- Do not block the insert on tracking the analytic
		spawn(function()
			Analytics.reportDragInsertFinished(assetId, assetTypeId)
		end)

		if assetTypeId == Enum.AssetType.MeshPart.Value then
			return sanitizeMeshAsset(assetId, instances, InsertAsset._localization)
		end

		if FFlagToolboxEnablePostDropScriptConfirmation then
			-- We'll need this to scan the remaining instances for scripts for the warning dialog
			activeDraggingState.instances = instances
		end
		return instances
	end

	if FFlagToolboxEnablePostDropScriptConfirmation then
		-- This fires when the drag within the 3D Model finishes
		ToolboxService.ProcessAssetInsertionDrop = function()
			-- We can't yield within the drop, so spawn this work to pick it up after the drop event finishes.
			spawn(function()
				if activeDraggingState then
					if FFlagToolboxEnableAudioGrantDialog then
						if activeDraggingState.assetTypeId == Enum.AssetType.Audio.Value then
							doPermissionGrantDialogForAsset(
								activeDraggingState.assetName,
								activeDraggingState.assetId,
								activeDraggingState.assetTypeId,
								activeDraggingState.insertToolPromise,
								activeDraggingState.localization
							)
						end
					end

					-- Popup the script warning dialog if necessary
					doScriptConfirmationIfContainsScripts(
						activeDraggingState.assetName,
						activeDraggingState.instances,
						activeDraggingState.insertToolPromise
					)
					activeDraggingState = nil
				end
			end)
		end
	end
end

return InsertAsset
