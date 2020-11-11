--[[
	Helper class for dealing with heightmap and colormap assets used in the import tool
	Takes an ImageUploader and UnvalidatedAssetService
	Uploads heightmaps, and stores temp and real ids in the place
]]

local Plugin = script.Parent.Parent.Parent

local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local function debugSetCamera(pos, lookAt)
	spawn(function()
		local cf = CFrame.new(pos, lookAt)
		local cam = game:GetService("Workspace").CurrentCamera
		cam.CameraType = Enum.CameraType.Scriptable
		wait()
		cam.CFrame = cf
		wait()
		cam.CameraType = Enum.CameraType.Fixed
	end)

	-- Also log the code used to place the camera correctly so that it can be ran in the command bar to verify
	print(([[
local pos = Vector3.new(%.2f, %.2f, %.2f)
local lookAt = Vector3.new(%.2f, %.2f, %.2f)
local cf = CFrame.new(pos, lookAt)
local cam = game:GetService("Workspace").CurrentCamera
cam.CameraType = Enum.CameraType.Scriptable
wait()
cam.CFrame = cf
wait()
cam.CameraType = Enum.CameraType.Fixed
	]]):format(
		pos.x, pos.y, pos.z,
		lookAt.x, lookAt.y, lookAt.z
	))
end

local function getCameraDetailsForRegion(region)
	assert(region, "getCameraDetailsForRegion requires a Region3")
	local center = region.CFrame.p
	local size = region.Size
	-- When we zoom the camera out to see the entire region, we need to know in which axis is it largest
	local largestWidth = math.max(size.x, size.z)
	-- Default FOV
	local cameraFov = 70
	local distance = (largestWidth / 2) / math.tan(cameraFov / 2)

	local lookAt = center
	local cameraPos = lookAt + Vector3.new(0, distance, 0)

	return cameraPos, lookAt
end

-- Pull the numeric part out of a content id (of form rbxasset://xyz or rbxtemp://xyz etc.)
local function numericIdFromContentId(id)
	return tonumber(id:match("://(%d+)"))
end

local ImportAssetHandler = {}
ImportAssetHandler.__index = ImportAssetHandler

function ImportAssetHandler.new(imageUploader, unvalidatedAssetService, userId)
	local self = setmetatable({
		_imageUploader = imageUploader,

		-- Allow the service to be mocked for testing
		_unvalidatedAssetService = unvalidatedAssetService or game:GetService("UnvalidatedAssetService"),
		-- Allow the user id to be mocked for testing
		_userId = userId or game:GetService("StudioService"):GetUserId(),

		-- Map from temp content id -> temp id or asset id integer
		-- When we first see a temp id, it'll like `rbxtemp://123 = 123`
		-- After uploading the image, we'll get a real asset id, so the map will look like `rbxtemp://123 = 456789`
		-- Uses numeric id because that's what UnvalidatedAssetService expects
		_seenAssets = {},
	}, ImportAssetHandler)

	assert(self._imageUploader, "ImportAssetHandler expects an ImageUploader")

	return self
end

function ImportAssetHandler:handleAsset(assetFile, region)
	assert(assetFile, "ImportAssetHandler:handleAsset() requires an assetFile")
	assert(region, "ImportAssetHandler:handleAsset() requires a Region3")

	local cameraPos, lookAt = getCameraDetailsForRegion(region)

	if DebugFlags.SetCameraOnRegionImport() then
		debugSetCamera(cameraPos, lookAt)
	end

	local tempId = assetFile:GetTemporaryId()

	-- If we've already seen this asset, we don't need to worry about adding it to UnvalidatedAssetService or uploading it
	-- Just append the new region information
	if self._seenAssets[tempId] then
		local replacementIdNumber = self._seenAssets[tempId]
		self._unvalidatedAssetService:AppendVantagePoint(self._userId, replacementIdNumber, lookAt, cameraPos)
		return
	end

	-- UnvalidatedAssetService API uses int64, not ContentId so pull the numeric part out of the rbxtemp://xyz
	local tempIdNumber = numericIdFromContentId(tempId)
	if not tempIdNumber then
		local msg = ("Temp id \"%s\" could not be cast to an integer"):format(tempId)
		warn(msg)
		-- TODO: If this fails, what should we do?
		-- Likely not safe to import heightmap anymore as we can't track it
		assert(tempIdNumber, msg)
	end

	self._seenAssets[tempId] = tempIdNumber

	local usage = "TerrainToolsV2Import"
	self._unvalidatedAssetService:AppendTempAssetId(self._userId, tempIdNumber, lookAt, cameraPos, usage)

	self._imageUploader:upload(tempId, assetFile.Name, --[[description=]]"", assetFile:GetBinaryContents())
	:andThen(function(assetId)
		-- Returned asset id already in int form, not "rbxassetid://xyz" form so we don't neeed to use numericIdFromContentId
		local assetIdNumber = tonumber(assetId)
		if not assetIdNumber then
			local msg = ("Asset id \"%s\" for temp id \"%s\" could not be cast to an integer"):format(assetId, tempId)
			warn(msg)
			assert(assetIdNumber, msg)
		end

		self._unvalidatedAssetService:UpgradeTempAssetId(self._userId, tempIdNumber, assetIdNumber)
		self._seenAssets[tempId] = assetIdNumber
	end, function(err)
		warn("Failed to upload asset", tempId, assetFile.Name)
	end)
end

return ImportAssetHandler
