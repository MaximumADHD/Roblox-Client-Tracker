
--[[
			// OutfitData.lua

			// Created by Kip Turner
			// Copyright Roblox 2015
]]

local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Utility = require(ShellModules:FindFirstChild('Utility'))
local UserData = require(ShellModules:FindFirstChild('UserData'))


local Http = require(ShellModules:FindFirstChild('Http'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))

local OutfitData = {}

local wearingOutfit = nil

local function CreateOutfitItem(outfitInfo)
	local this = {}
	local isWearing = false
	this.IsWearingChanged = Utility.Signal()

	function this:GetUserId()
		return outfitInfo['UserId']
	end

	function this:GetOutfitId()
		return outfitInfo['OutfitId']
	end

	function this:GetId()
		return outfitInfo['Id']
	end

	function this:GetName()
		return outfitInfo['Name']
	end

	function this:IsOwned()
		return true
	end

	function this:IsWearing()
		local wasWearing = isWearing
		isWearing = (self:GetId() == wearingOutfit)
		if isWearing ~= wasWearing then
			self.IsWearingChanged:fire(isWearing)
		end
		return isWearing
	end

	function this:WearAsync()
		local result = Http.PostWearUserOutfitAsync(self:GetId())
		-- if result and result['success'] == true then
			wearingOutfit = self:GetId()
			EventHub:dispatchEvent(EventHub.Notifications["DonnedDifferentOutfit"], self:GetId())
		-- end
		return
	end

	return this
end


local OutfitCache = nil
local RbxUid = nil

local debounceGetGetMyOutfitsAsync = false
function OutfitData:GetMyOutfitsAsync()
	while debounceGetGetMyOutfitsAsync do wait() end

	debounceGetGetMyOutfitsAsync = true
	UserData.GetLocalPlayerAsync()

	if RbxUid ~= UserData:GetRbxUserId() then
		OutfitCache = nil
	end

	while not OutfitCache do
		local startRbxUid = UserData:GetRbxUserId()
		local outfits = {}
		local index = 0
		local count = 20

		repeat
			local result = nil

			Utility.ExponentialRepeat(
				function() return result == nil end,
				function() result = Http.GetMyUserOutfitsAsync(index, count) end,
				5)

			if result then
				local userOutfits = result['UserOutfits']
				if userOutfits then
					for _, outfitInfo in pairs(userOutfits) do
						table.insert(outfits, CreateOutfitItem(outfitInfo))
					end
				end
			end

			index = index + count
		until result == nil or result['FinalPage']

		local nowRbxUid = UserData:GetRbxUserId()
		if startRbxUid == nowRbxUid then
			OutfitCache = outfits
		end
		Utility.DebugLog("Getting info cache again" , "now" , nowRbxUid , "startRbxUid" , startRbxUid)
	end

	debounceGetGetMyOutfitsAsync = false
	return OutfitCache
end

function OutfitData:GetCachedWearingOutfitId()
	return wearingOutfit
end

EventHub:addEventListener(EventHub.Notifications["DonnedDifferentPackage"], "OutfitData",
function()
	wearingOutfit = nil
	if OutfitCache then
		for _, outfit in pairs(OutfitCache) do
			outfit:IsWearing()
		end
	end
end)
EventHub:addEventListener(EventHub.Notifications["DonnedDifferentOutfit"], "OutfitData",
function()
	if OutfitCache then
		for _, outfit in pairs(OutfitCache) do
			outfit:IsWearing()
		end
	end
end)


return OutfitData



