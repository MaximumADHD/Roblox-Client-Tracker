-- FileName: FreeCameraInstaller.lua
-- Written by: TheGamer101, Fractality
-- Description: Installs Freecam for staff, contractors, devs, and whitelisted users & groups.

----------------------------------------------------------------------------------------------------

local RBX_GROUP_WHITELIST = {
	1200769, -- Roblox Admins
	3013794, -- Group requested by RobloxsaurusRex for contractors who need this power
}

----------------------------------------------------------------------------------------------------

local devGroupWhitelist = {}
local devUserWhitelist = {}
local freecamEnabled = true

----------------------------------------------------------------------------------------------------

local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")

local FFlagFreeCameraForDevelopers do
	local success, result = pcall(settings().GetFFlag, settings(), "FreeCameraForDevelopers")
	FFlagFreeCameraForDevelopers = success and result
end
local FFlagFreeCameraAPI do -- Controls registration of the Freecam SetCore/GetCore API
	local success, result = pcall(settings().GetFFlag, settings(), "FreeCameraAPI")
	FFlagFreeCameraAPI = success and result
end

----------------------------------------------------------------------------------------------------

local function HasFreeCamera(player)
	local playerScripts = player:FindFirstChildOfClass("PlayerScripts")
	return nil ~= (playerScripts and playerScripts:FindFirstChild("FreeCamera"))
end

local function CopySourceContainer(name, className, parent)
	local template = script.Parent:WaitForChild(name)
	local script = Instance.new(className)
	script.Name = name
	script.Source = template.Source
	script.Parent = parent
	return script
end

local function GrantFreecam(player)
	local freecam = CopySourceContainer("FreeCamera", "LocalScript")
	CopySourceContainer("Spring", "ModuleScript", freecam)
	freecam.Parent = player:WaitForChild("PlayerScripts", 15)
	return freecam
end

local function UserCanManage(userId)
	-- Endpoint: /users/%d/canmanage/%d
	-- Returns: {"Success":BOOLEAN, "CanManage":BOOLEAN}
	local request = string.format("/users/%d/canmanage/%d", userId, game.PlaceId)
	local response = HttpService:JSONDecode(HttpRbxApiService:GetAsync(
		request,
		Enum.ThrottlingPriority.Default,
		Enum.HttpRequestType.Default,
		true
	))
	return response.CanManage
end

local function PlayerHasPermissions(player)
	if RunService:IsStudio() then
		return true
	end
	if player.UserId <= 0 then
		return false
	end
	if FFlagFreeCameraForDevelopers then
		local success, canManage = pcall(UserCanManage, player.UserId)
		if success and canManage then
			return true
		end
	end
	for _, groupList in ipairs{RBX_GROUP_WHITELIST, devGroupWhitelist} do
		for _, groupId in ipairs(groupList) do
			local success, inGroup = pcall(player.IsInGroup, player, groupId)
			if success and inGroup then
				return true
			end
		end
	end
	for _, userId in ipairs(devUserWhitelist) do
		if player.UserId == userId then
			return true
		end
	end
	return false
end

local function UpdatePlayer(player)
	if freecamEnabled and not HasFreeCamera(player) and PlayerHasPermissions(player) then
		GrantFreecam(player)
	end
end

local function UpdateAllPlayers()
	for _, player in ipairs(Players:GetPlayers()) do
		UpdatePlayer(player)
	end
end

local Install do
	local installed = false

	function Install()
		if installed then
			return
		end
		installed = true
		if FFlagFreeCameraAPI then
			-- Give scripts a frame to hook into the API.
			RunService.RenderStepped:Wait()
		end
		Players.PlayerAdded:Connect(UpdatePlayer)
		UpdateAllPlayers()
	end
end

----------------------------------------------------------------------------------------------------
-- Freecam Core API
-- | Set GrantFreecam(Player recipient)
-- |   Grant Freecam to a single player.
-- | Get/Set FreecamEnabled(bool isEnabled)
-- |   Controls whether Freecam can be enabled.
-- | Get/Set FreecamGroupWhitelist(Array<int> groupIds)
-- |   Members of groups on the whitelist will be awarded Freecam.
-- | Get/Set FreecamUserWhitelist(Array<int> userIds)
-- |   Users on the whitelist will be awarded Freecam.

if RunService:IsServer() and FFlagFreeCameraAPI then
	-- SetCore GrantFreecam(Player player)
	-- Grant Freecam to a specific player.
	StarterGui:RegisterSetCore("GrantFreecam", function(player)
		assert(
			typeof(player) == "Instance" and player:IsA("Player"),
			"Expected Player"
		)
		return GrantFreecam(player)
	end)

	-- FreecamEnabled(bool enabled)
	StarterGui:RegisterGetCore("FreecamEnabled", function()
		return freecamEnabled
	end)
	StarterGui:RegisterSetCore("FreecamEnabled", function(enabled)
		assert(
			type(enabled) == "bool",
			"Expected bool"
		)
		freecamEnabled = enabled
	end)

	-- FreecamGroupWhitelist(Array groupIds)
	-- Freecam will be granted to members of whitelisted groups.
	StarterGui:RegisterGetCore("FreecamGroupWhitelist", function()
		return devGroupWhitelist
	end)
	StarterGui:RegisterSetCore("FreecamGroupWhitelist", function(list)
		assert(
			type(list) == "table",
			"Expected table"
		)
		for k, v in next, list do
			assert(
				type(k) == "number" and type(v) == "number",
				"Invalid whitelist (expected an array of group ids)"
			)
		end
		devGroupWhitelist = list
		UpdateAllPlayers()
	end)

	-- FreecamUserWhitelist(Array userIds)
	-- Freecam will be granted to whitelisted users.
	StarterGui:RegisterGetCore("FreecamUserWhitelist", function()
		return devUserWhitelist
	end)
	StarterGui:RegisterSetCore("FreecamUserWhitelist", function(list)
		assert(
			type(list) == "table",
			"Expected table"
		)
		for k, v in next, list do
			assert(
				type(k) == "number" and type(v) == "number",
				"Invalid whitelist (expected an array of user ids)"
			)
		end
		devUserWhitelist = list
		UpdateAllPlayers()
	end)
end

return Install
