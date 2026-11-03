--[[
	Catalog / mesh load for builders. Never call InsertService:LoadAsset
	from a recipe — Studio Play client cannot LoadAsset, and it cannot be
	monkey-patched.

	If ReplicatedStorage.PreviewLoadAsset exists on a Studio client (preview
	server script), use that. Otherwise InsertService.

	The Studio gate is load-bearing, not belt-and-braces: this module ships in
	the published package, and in the lua-apps host ReplicatedStorage belongs
	to the experience. Without it, an experience could publish a RemoteFunction
	under this name and serve every asset a scene loads.
]]
local InsertService = game:GetService("InsertService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

local PREVIEW_REMOTE_NAME = "PreviewLoadAsset"

export type LoadAsset = (assetId: number) -> Instance

local function takePreviewResult(result: Instance?, assetId: number): Instance
	if result == nil or typeof(result) ~= "Instance" then
		error(`loadAsset: {PREVIEW_REMOTE_NAME} returned nil for {assetId}`)
	end
	local clone = result:Clone()
	result:Destroy()
	return clone
end

local function loadAsset(assetId: number): Instance
	if RunService:IsStudio() and RunService:IsClient() then
		local remote = ReplicatedStorage:FindFirstChild(PREVIEW_REMOTE_NAME)
		if remote ~= nil and remote:IsA("RemoteFunction") then
			return takePreviewResult((remote :: RemoteFunction):InvokeServer(assetId), assetId)
		end
	end
	return InsertService:LoadAsset(assetId)
end

return {
	loadAsset = loadAsset,
	takePreviewResult = takePreviewResult,
	PREVIEW_REMOTE_NAME = PREVIEW_REMOTE_NAME,
}
