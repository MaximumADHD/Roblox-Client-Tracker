local AssetService = game:GetService("AssetService")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local TeleportService = game:GetService("TeleportService")

local kMaxTeleportAttempts = 5
local currentExperiencePlaceIds: { [number]: boolean }? = nil
local playerPlaytestTeleportAttempt: { [number]: number } = {}

local RemotePlaytestTeleport = Instance.new("RemoteEvent")
RemotePlaytestTeleport.Name = "BuildExperiencePlaytestTeleport"
RemotePlaytestTeleport.Parent = RobloxReplicatedStorage

Players.PlayerRemoving:Connect(function(player)
	playerPlaytestTeleportAttempt[player.UserId] = nil
end)

local function getCurrentExperiencePlaceIds(): { [number]: boolean }
	if currentExperiencePlaceIds ~= nil then
		return currentExperiencePlaceIds
	end

	local placeIds: { [number]: boolean } = {}
	local pages = AssetService:GetGamePlacesAsync() :: StandardPages
	while true do
		for _, placeInfo in pages:GetCurrentPage() do
			placeIds[placeInfo.PlaceId] = true
		end

		if pages.IsFinished then
			break
		end

		pages:AdvanceToNextPageAsync()
	end

	currentExperiencePlaceIds = placeIds
	return placeIds
end

RemotePlaytestTeleport.OnServerEvent:Connect(function(player, placeId)
	local playtestTeleportAttempt = playerPlaytestTeleportAttempt[player.UserId]
	if playtestTeleportAttempt ~= nil and playtestTeleportAttempt > kMaxTeleportAttempts then
		return
	end
	if playtestTeleportAttempt == nil then
		playerPlaytestTeleportAttempt[player.UserId] = 1
	else
		playerPlaytestTeleportAttempt[player.UserId] = playtestTeleportAttempt + 1
	end

	local canManage = player:GetCanManageAsync()
	if not canManage then
		return
	end

	if typeof(placeId) ~= "number" or placeId <= 0 then
		return
	end

	if game.PlaceId ~= placeId and not getCurrentExperiencePlaceIds()[placeId] then
		return
	end

	local teleportOptions = Instance.new("TeleportOptions")
	teleportOptions.ShouldReserveServer = true
	TeleportService:TeleportAsync(placeId, { player }, teleportOptions)
end)
