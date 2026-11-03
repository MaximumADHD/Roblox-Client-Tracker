--[[
	AX AvatarBackground on a contained cyclorama.

	The background asset is ImageId + Color (not a mesh). The cyclorama is the
	shell those values paint. Both stay inside scene.root — never Lighting.

	Loads two catalog assets through _Utils/loadAsset (cyclorama mesh + paint
	data). Do not call InsertService from this module. Do not clone a host
	AvatarCyclorama — that instance only exists in lua-apps and AX already
	posed it.
]]
local loadAssetUtil = require(script.Parent.loadAsset)

local CYCLORAMA_ASSET_ID = 94967210842404

-- Prism Skies. Spelled out rather than read from _Utils/backgroundCatalog
-- because that module carries display names and ordering for preview and does
-- not ship, and this default does.
local DEFAULT_ASSET_ID = 121199209890990

local FRONT_VISIBLE_TRANSPARENCY = 0.015

local REST = CFrame.Angles(0, math.pi, 0)

export type BackgroundData = {
	imageId: number,
	backgroundColor: Color3,
}

export type RobloxBackground = {
	id: number,
	label: string,
}

local function pinToParent(cyclorama: Model, root: Model)
	-- WorldPivot assign does not move meshes. Call at builder origin only.
	-- After a host PivotTo, this copies the hub into WorldPivot; a later
	-- PivotTo(hub) then double-translates (2 * hub).
	cyclorama.WorldPivot = root:GetPivot()
end

local function findBackgroundFolder(wrapper: Instance): Instance?
	local named = wrapper:FindFirstChild("AvatarBackground")
	if named ~= nil then
		return named
	end
	if wrapper:FindFirstChild("ImageId") ~= nil and wrapper:FindFirstChild("Color") ~= nil then
		return wrapper
	end
	for _, child in wrapper:GetChildren() do
		if child:FindFirstChild("ImageId") ~= nil and child:FindFirstChild("Color") ~= nil then
			return child
		end
	end
	return nil
end

local function readBackgroundData(wrapper: Instance): BackgroundData?
	local folder = findBackgroundFolder(wrapper)
	if folder == nil then
		return nil
	end
	local imageIdValue = folder:FindFirstChild("ImageId")
	local colorValue = folder:FindFirstChild("Color")
	if imageIdValue == nil or not imageIdValue:IsA("IntValue") then
		return nil
	end
	if colorValue == nil or not colorValue:IsA("Color3Value") then
		return nil
	end
	return {
		imageId = imageIdValue.Value,
		backgroundColor = colorValue.Value,
	}
end

local function hasMeshes(model: Instance): boolean
	return model:FindFirstChild("texture_mesh") ~= nil and model:FindFirstChild("color_mesh") ~= nil
end

local function extractCycloramaModel(wrapper: Instance): Model?
	-- InsertService wraps the rbxm in a container Model. Prefer the inner
	-- cyclorama so we do not inherit the wrapper's bbox WorldPivot.
	local named = wrapper:FindFirstChild("AvatarCyclorama")
	if named ~= nil and named:IsA("Model") and hasMeshes(named) then
		return named
	end
	local child = wrapper:FindFirstChildWhichIsA("Model")
	if child ~= nil and hasMeshes(child) then
		return child
	end
	if wrapper:IsA("Model") and hasMeshes(wrapper) then
		return wrapper
	end
	return nil
end

local function loadCyclorama(): Model?
	local ok, wrapper = pcall(loadAssetUtil.loadAsset, CYCLORAMA_ASSET_ID)
	-- Same reason as applyTexture below: a scene that silently lost its backdrop
	-- is indistinguishable from one authored without a backdrop, so each way
	-- this can fail has to name itself.
	if not ok then
		warn(`avatarBackground: cyclorama {CYCLORAMA_ASSET_ID} failed to load: {wrapper}`)
		return nil
	end
	if wrapper == nil or typeof(wrapper) ~= "Instance" then
		warn(`avatarBackground: cyclorama {CYCLORAMA_ASSET_ID} loaded a {typeof(wrapper)}, expected an Instance`)
		return nil
	end
	local model = extractCycloramaModel(wrapper)
	if model == nil then
		warn(`avatarBackground: cyclorama {CYCLORAMA_ASSET_ID} has no Model holding both texture_mesh and color_mesh`)
		wrapper:Destroy()
		return nil
	end
	if model ~= wrapper then
		model.Parent = nil
		wrapper:Destroy()
	end
	model.Name = "AvatarCyclorama"
	return model
end

local function loadBackgroundData(assetId: number): BackgroundData?
	local ok, wrapper = pcall(loadAssetUtil.loadAsset, assetId)
	if not ok then
		warn(`avatarBackground: background {assetId} failed to load: {wrapper}`)
		return nil
	end
	if wrapper == nil or typeof(wrapper) ~= "Instance" then
		warn(`avatarBackground: background {assetId} loaded a {typeof(wrapper)}, expected an Instance`)
		return nil
	end
	local data = readBackgroundData(wrapper)
	if data == nil then
		warn(`avatarBackground: background {assetId} has no folder with an ImageId IntValue and a Color Color3Value`)
	end
	wrapper:Destroy()
	return data
end

local function applyTexture(mesh: Instance, imageId: number)
	local uri = `rbxassetid://{imageId}`
	if mesh:IsA("MeshPart") then
		mesh.TextureID = uri
	end
	local asAny = mesh :: any
	local ok, err = pcall(function()
		asAny.TextureContent = Content.fromUri(uri)
	end)
	if not ok then
		-- Without this a blank cyclorama is indistinguishable from a painted one.
		warn(`avatarBackground: TextureContent assignment failed for {imageId}: {err}`)
	end
end

local function applyBackground(cyclorama: Model, data: BackgroundData)
	local front = cyclorama:FindFirstChild("texture_mesh")
	local back = cyclorama:FindFirstChild("color_mesh")
	if front ~= nil and front:IsA("BasePart") then
		front.Anchored = true
		front.Transparency = FRONT_VISIBLE_TRANSPARENCY
		applyTexture(front, data.imageId)
	end
	if back ~= nil and back:IsA("BasePart") then
		back.Anchored = true
		back.Transparency = 0
		back.Color = data.backgroundColor
	end
end

-- `any` rather than number? because the value arrives from parseSceneAsset,
-- where an author can author anything. false and "none" are the two ways an
-- asset asks for no background at all, which is why nil means default here and
-- not "off".
local function resolveAssetId(backgroundAssetId: any): number?
	if backgroundAssetId == false or backgroundAssetId == "none" then
		return nil
	end
	if type(backgroundAssetId) == "number" then
		if backgroundAssetId <= 0 then
			return nil
		end
		return backgroundAssetId
	end
	return DEFAULT_ASSET_ID
end

local function attach(root: Model, backgroundAssetId: any): Model?
	local assetId = resolveAssetId(backgroundAssetId)
	if assetId == nil then
		return nil
	end
	local cyclorama = loadCyclorama()
	if cyclorama == nil then
		return nil
	end
	local data = loadBackgroundData(assetId)
	if data == nil then
		cyclorama:Destroy()
		return nil
	end
	applyBackground(cyclorama, data)
	-- AX contract: whole-model PivotTo on the file pivot. Do not clear
	-- WorldPivot first and yaw parts around world 0 — that is a different
	-- center than the catalog pivot and plants the wall in the wrong place.
	cyclorama:PivotTo(CFrame.new() * REST)
	cyclorama.Parent = root
	pinToParent(cyclorama, root)
	return cyclorama
end

return {
	attach = attach,
	pinToParent = pinToParent,
	REST = REST,
	applyBackground = applyBackground,
	resolveAssetId = resolveAssetId,
	CYCLORAMA_ASSET_ID = CYCLORAMA_ASSET_ID,
	DEFAULT_ASSET_ID = DEFAULT_ASSET_ID,
	FRONT_VISIBLE_TRANSPARENCY = FRONT_VISIBLE_TRANSPARENCY,
}
