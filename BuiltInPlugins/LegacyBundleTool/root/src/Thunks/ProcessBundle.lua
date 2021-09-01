local Workspace = game:GetService("Workspace")
local AssetService = game:GetService("AssetService")
local InsertService = game:GetService("InsertService")
local MarketplaceService = game:GetService("MarketplaceService")
local CollectionService = game:GetService("CollectionService")

local root = script:FindFirstAncestor("root")

local constants = require(root.src.constants)
local fetchAssetFormat = require(root.src.Util.fetchAssetFormat)

local ASSET_TYPE_ID_MAP = {
	Image = 1,
	TeeShirt = 2,
	Audio = 3,
	Mesh = 4,
	Lua = 5,
	Hat = 8,
	Place = 9,
	Model = 10,
	Shirt = 11,
	Pants = 12,
	Decal = 13,
	Head = 17,
	Face = 18,
	Gear = 19,
	Badge = 21,
	Animation = 24,
	Torso = 27,
	RightArm = 28,
	LeftArm = 29,
	LeftLeg = 30,
	RightLeg = 31,
	Package = 32,
	GamePass = 34,
	Plugin = 38,
	MeshPart = 40,
	HairAccessory = 41,
	FaceAccessory = 42,
	NeckAccessory = 43,
	ShoulderAccessory = 44,
	FrontAccessory = 45,
	BackAccessory = 46,
	WaistAccessory = 47,
	ClimbAnimation = 48,
	DeathAnimation = 49,
	FallAnimation = 50,
	IdleAnimation = 51,
	JumpAnimation = 52,
	RunAnimation = 53,
	SwimAnimation = 54,
	WalkAnimation = 55,
	PoseAnimation = 56,
	EarAccessory = 57,
	EyeAccessory = 58,
}

-- reverse lookup
local ASSET_TYPE_ID_MAP_REVERSE = {}
for k, v in pairs(ASSET_TYPE_ID_MAP) do
	ASSET_TYPE_ID_MAP_REVERSE[v] = k
end

local WHITELISTED_ASSET_TYPE_IDS = {
	[ASSET_TYPE_ID_MAP.Head] = true,
	[ASSET_TYPE_ID_MAP.Torso] = true,
	[ASSET_TYPE_ID_MAP.RightArm] = true,
	[ASSET_TYPE_ID_MAP.LeftArm] = true,
	[ASSET_TYPE_ID_MAP.LeftLeg] = true,
	[ASSET_TYPE_ID_MAP.RightLeg] = true,
}

return function(plugin)
	return function(store)
		local state = store:getState()

		local wrapTargetInfoMap = {}

		for _, child in ipairs(state.plugin.rig:GetChildren()) do
			if child:IsA("MeshPart") then
				local wrapTarget = child:FindFirstChildOfClass("WrapTarget")
				if wrapTarget then
					wrapTargetInfoMap[child.Name] = {
						size = child.Size,
						wrapTarget = wrapTarget,
					}
				end
			end
		end

		local folders = {}

		local bundleDetails = AssetService:GetBundleDetailsAsync(state.plugin.bundleId)
		for _, item in ipairs(bundleDetails.Items) do
			local productInfo = MarketplaceService:GetProductInfo(item.Id, Enum.InfoType.Asset)
			if WHITELISTED_ASSET_TYPE_IDS[productInfo.AssetTypeId] then
				local folder = Instance.new("Folder", Workspace)
				folder.Name = ASSET_TYPE_ID_MAP_REVERSE[productInfo.AssetTypeId]
				CollectionService:AddTag(folder, constants.TAG)
				table.insert(folders, folder)

				if productInfo.AssetTypeId == ASSET_TYPE_ID_MAP.Head then
					local head = fetchAssetFormat(item.Id, constants.HEAD_ASSET_FORMAT)
					head.Parent = folder
				else
					local asset = InsertService:LoadAsset(item.Id)
					for _, obj in ipairs(asset:GetChildren()) do
						obj.Parent = folder
					end
				end

				for _, descendant in ipairs(folder:GetDescendants()) do
					if descendant:IsA("MeshPart") then
						local info = wrapTargetInfoMap[descendant.Name]
						if info then
							for _, child in ipairs(descendant:GetChildren()) do
								if child:IsA("WrapTarget") then
									child:Destroy()
								end
							end
							local clone = info.wrapTarget:Clone()
							clone.Stiffness = 1
							clone.Parent = descendant

							if not descendant.Size:FuzzyEq(info.size) then
								warn(descendant:GetFullName() .. " bounding box mismatch:")
								warn("\timported: " .. tostring(info.size))
								warn("\tproduction: " .. tostring(descendant.Size))
							end
						else
							warn("No cage mesh found for " .. descendant.Name)
						end
					end
				end
			end
		end
	end
end
