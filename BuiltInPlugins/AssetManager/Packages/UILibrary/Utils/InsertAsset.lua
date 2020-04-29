local Util = script.Parent
local InsertToolEvent = require(Util.InsertToolEvent)
local Urls = require(Util.Urls)

local INSERT_MAX_SEARCH_DEPTH = 2048
local INSERT_MAX_DISTANCE_AWAY = 64
local INSERT_CAMERA_DIST_MULT = 1.2

local InsertAsset = {}

InsertAsset.__index = InsertAsset

--[[
	props : table
	pluginName : string
	insertAnalyticsCallback : function(assetTypeId, assetId)
]]
function InsertAsset.new(props, pluginName, insertAnalyticsCallback)
	local props = props or {}
	local pluginName = pluginName or "Plugin"
	local insertAnalyticsCallback = insertAnalyticsCallback or function() return nil end
	local ChangeHistoryService = props.ChangeHistoryService or game:GetService("ChangeHistoryService")
	local InsertService = props.InsertService or game:GetService("InsertService")
	local Selection = props.Selection or game:GetService("Selection")
	local StarterPack = props.StarterPack or game:GetService("StarterPack")
	local Workspace = props.Workspace or game:GetService("Workspace")
	local StudioService = props.StudioService or game:GetService("StudioService")
	local Lighting = props.Lighting or game:GetService("Lighting")
	local insertAnalyticsCallback = props.insertAnalyticsCallback

	local self = {
        ChangeHistoryService = ChangeHistoryService,
        InsertService = InsertService,
        Selection = Selection,
        StarterPack = StarterPack,
        Workspace = Workspace,
        StudioService = StudioService,
		Lighting = Lighting,
		pluginName = pluginName,
		insertAnalyticsCallback = insertAnalyticsCallback,
    }
    setmetatable(self, InsertAsset)
    return self
end

function InsertAsset:getInsertPosition()
	local camera = self.Workspace.CurrentCamera
	local viewportPoint = camera.ViewportSize / 2
	local unitRay = camera:ViewportPointToRay(viewportPoint.X, viewportPoint.Y, 0)

	local ray = Ray.new(unitRay.Origin, unitRay.Direction * INSERT_MAX_SEARCH_DEPTH)
	local part, hitPosition = self.Workspace:FindPartOnRay(ray)

	if not part then
		hitPosition = camera.CFrame.p + unitRay.Direction * INSERT_MAX_DISTANCE_AWAY
	end

	return hitPosition
end

--[[
	options : table
	{
		plugin = Plugin,
		assetId = number,
		assetName = string,
		assetTypeId = AssetType,
		onSuccess = function,
		categoryIndex = number,
		currentCategoryName = string,
		searchTerm = string,
		assetIndex = number,
	}
	targetParent : instance
	insertToolEvent: object
]]
function InsertAsset:insert(options, targetParent, insertToolEvent)
	if options.assetTypeId == Enum.AssetType.Package.Value then
		return self:insertPackage(options.assetId)
	elseif options.assetTypeId == Enum.AssetType.Audio.Value then
		return self:insertAudio(options.assetId, options.assetName)
	elseif options.assetTypeId == Enum.AssetType.Decal.Value then
		return self:insertDecal(options.plugin, options.assetId, options.assetName)
	elseif options.assetTypeId == Enum.AssetType.Plugin.Value then
		return self:installPlugin(options.assetId, options.assetVersionId, options.assetName)
	else
		return self:insertAsset(options.assetId, options.assetName, targetParent, insertToolEvent)
	end
end

--[[
	assetId : number
	assetName : string
]]
function InsertAsset:insertAudio(assetId, assetName)
	local url = Urls.constructAssetIdString(assetId)

	local soundObj = Instance.new("Sound")
	soundObj.SoundId = url
	soundObj.Name = assetName
	soundObj.Parent = (self.Selection:Get() or {})[1] or self.Workspace
	self.Selection:Set({soundObj})

	return soundObj
end

--[[
	assetId : number
	assetName : string
	targetParent: instance
	insertToolEvent: object
]]
function InsertAsset:insertAsset(assetId, assetName, targetParent, insertToolEvent)
	local parent = targetParent and targetParent or self.Workspace

	local assetInstance = nil
	local success, errorMessage = pcall(function()
		local url = Urls.constructAssetIdString(assetId)
		assetInstance = game:InsertObjectsAndJoinIfLegacyAsync(url)
	end)

	if success and assetInstance then
		-- Parent everything to the target and select it
		local insertPosition = self:getInsertPosition()

		-- Insert everything into a model so we can query its bounding box
		-- Then after we've moved the camera, move it out of the box
		local model = Instance.new("Model")
		model.Name = "ToolboxTemporaryInsertModel"
		model.Parent = parent

		local newSelection = {}
		for _, o in ipairs(assetInstance) do
			if o:IsA("Sky") or o:IsA("Atmosphere") then
				-- If it's a sky or atmosphere object, we will parrent it to lighting.
				-- No promise needed here.
				o.Parent = self.Lighting
			else
			-- If it's a tool or hopperbin, then we should ask the
			-- dev if they want to put it in the starterpack or not,
			-- so we use a promise to get a response from the asset
				local parentToUse = model

				if o:IsA("Tool") or o:IsA("HopperBin") then
					local result = insertToolEvent:promptAndWait()

					if result == InsertToolEvent.INSERT_TO_WORKSPACE then
						parentToUse = model
					elseif result == InsertToolEvent.INSERT_TO_STARTER_PACK then
						parentToUse = self.StarterPack
					elseif result == InsertToolEvent.INSERT_CANCELLED then
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

			local camera = self.Workspace.CurrentCamera
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
		self.Selection:Set(newSelection)

		return newSelection
	else
		return nil, errorMessage
	end
end

--[[
	plugin : Plugin
	assetId : number
	assetName : string
]]
function InsertAsset:insertDecal(plugin, assetId, assetName)
	local tbl = nil
	local success, errorMessage = pcall(function()
		local url = Urls.constructAssetIdString(assetId)
		tbl = game:GetObjects(url)
	end)

	if success and tbl and tbl[1] then
		local decal = tbl[1]
		decal.Name = assetName

		local dragSuccess = pcall(function()
			plugin:StartDecalDrag(decal)
		end)
		if not dragSuccess then
			decal.Parent = (self.Selection:Get() or {})[1] or self.Workspace
			self.Selection:Set({decal})
		end
		return decal
	else
		return nil, errorMessage
	end
end

--[[
	assetId : number
]]
function InsertAsset:insertPackage(assetId)
	local instanceTable = nil
	local success, errorMessage = pcall(function()
		local url = Urls.constructAssetIdString(assetId)
		instanceTable = self.InsertService:LoadPackageAsset(url)
	end)

	if success and instanceTable and instanceTable[1] then
		instanceTable[1].Parent = (self.Selection:Get() or {})[1] or self.Workspace
		self.Selection:set(instanceTable)
		return instanceTable[1]
	else
		return nil, errorMessage
	end
end

--[[
	assetId : number
	assetVersionId : number
	assetName : string
]]
function InsertAsset:installPlugin(assetId, assetVersionId, assetName)
	local success, errorMessage = pcall(function()
		if self.StudioService then
			self.StudioService:TryInstallPlugin(assetId, assetVersionId)
		else
			error("StudioService not found!")
		end
	end)
	return success, errorMessage
end

function InsertAsset:doInsertAsset(options, insertToolEvent, targetParent)
	local assetId = options.assetId
	local assetName = options.assetName
	local assetTypeId = options.assetTypeId

	self.ChangeHistoryService:SetWaypoint(("Before insert asset %d"):format(assetId))

	local asset, errorMessage = InsertAsset:insert(options, targetParent, insertToolEvent)

	if assetTypeId == Enum.AssetType.Plugin.Value then
		self.ChangeHistoryService:SetWaypoint(("After attempt to install plugin %d"):format(assetId))
		self.insertAnalyticsCallback(assetTypeId, assetId)
	elseif asset then
		self.ChangeHistoryService:SetWaypoint(("After insert asset %d"):format(assetId))
		self.insertAnalyticsCallback(Enum.AssetType.Plugin.Value, assetId)
		options.onSuccess(assetId)
	else
		warn((self.pluginName .. "failed to insert asset %d %s: %s"):format(assetId, assetName, errorMessage or ""))
	end
	return asset
end

function InsertAsset:doDragInsertAsset(options)
	local assetId = options.assetId
	local assetName = options.assetName
	local assetTypeId = options.assetTypeId
	if assetTypeId == Enum.AssetType.Plugin.Value then
		-- We should absolutely never allow plugins to be installed via dragging!
		return
	end

	self.ChangeHistoryService:SetWaypoint(("Before insert asset %d"):format(assetId))

	local success, errorMessage = pcall(function()
		-- Mark plugin as using the C++ drag handler implementation
		-- That will insert the given asset and drag it in the 3d view
		options.plugin.UsesAssetInsertionDrag = true

		local url = Urls.constructAssetGameAssetIdUrl(
			assetId,
			assetTypeId,
			assetTypeId == Enum.AssetType.Package.Value
		)
		options.plugin:StartDrag({
			Sender = self.pluginName,
			MimeType = "text/plain",
			Data = url,
		})
	end)

	if success then
		self.ChangeHistoryService:SetWaypoint(("After insert asset %d"):format(assetId))
		self.insertAnalyticsCallback(assetTypeId, assetId)

		options.onSuccess(assetId)
	else
		warn((self.pluginName .. "failed to drag asset %d %s: %s"):format(assetId, assetName, errorMessage or ""))
	end
	return success

end

--[[
	options : table
	{
		plugin = Plugin,
		assetId = number,
		assetName = string,
		assetTypeId = AssetType,
		onSuccess = function,
		categoryIndex = number,
		currentCategoryName = string,
		searchTerm = string,
		assetIndex = number,
	}
	insertToolEvent : object
	assetWasDragged : bool
	targetParent : instance
]]
-- This is the public api we should be using.
function InsertAsset:tryInsert(options, insertToolEvent, assetWasDragged, targetParent)
	if assetWasDragged then
		self:doDragInsertAsset(options)
	else
		local value = self:doInsertAsset(options, insertToolEvent, targetParent)
		return value
	end
end

return InsertAsset