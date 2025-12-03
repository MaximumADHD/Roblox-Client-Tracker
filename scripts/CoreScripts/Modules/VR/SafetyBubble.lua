--!nonstrict
--[[
	SafetyBubble
	Roblox VR 2022, @MetaVars
]]--

local AnalyticsService = game:GetService("RbxAnalyticsService")
local Players = game:GetService("Players")
local VRService = game:GetService("VRService")
local CorePackages = game:GetService("CorePackages")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

--[[ The Module ]]--
local SafetyBubble = {}
SafetyBubble.__index = SafetyBubble

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local MAX_SAFETY_DIST = require(RobloxGui.Modules.Flags.FIntSafetyBubbleRadius) -- this is using a 2d distance
local MAX_TRANSPARENCY = require(RobloxGui.Modules.Flags.FIntSafetyBubbleTransparencyPercent) * 0.01 -- how transparent do we get

local UPDATE_CADENCE = 0.2

function SafetyBubble.new()
	local self = setmetatable({}, SafetyBubble)

	self.subjects = {}
	
	self.mode = UserGameSettings.VRSafetyBubbleMode
	self.enabled = self.mode ~= Enum.VRSafetyBubbleMode.Anyone
	self.updateCadence = UPDATE_CADENCE

	self.Toggled = Create("BindableEvent")({
		Name = "SafetyBubbleToggled",
	})

	UserGameSettings:GetPropertyChangedSignal("VRSafetyBubbleMode"):Connect(function()
		self.mode = UserGameSettings.VRSafetyBubbleMode
		local enabled = self.mode ~= Enum.VRSafetyBubbleMode.Anyone
		if self.enabled ~= enabled then
			self.enabled = enabled
			self.Toggled:Fire()

			local safetyOnOff = enabled and "On" or "Off"
			AnalyticsService:ReportCounter("VR-SafetyBubble-"..safetyOnOff)
		end
	end)

	return self
end

function SafetyBubble:ToggleEnabled()
	UserGameSettings.VRSafetyBubbleMode = self.enabled and Enum.VRSafetyBubbleMode.Anyone or Enum.VRSafetyBubbleMode.NoOne
end

function SafetyBubble:HasToolAncestor(object)
	if object == nil or object.Parent == nil then 
		return false 
	end
	return object.Parent:IsA('Tool') or self:HasToolAncestor(object.Parent)
end

function SafetyBubble:IsValidPartToModify(part: BasePart)
	if part:IsA('BasePart') or part:IsA('Decal') then
		return not self:HasToolAncestor(part)
	end
	return false
end

function SafetyBubble:CachePartsRecursive(object, subjectIndex)
	if object then
		if self:IsValidPartToModify(object) then
			self.subjects[subjectIndex].cachedParts[object] = true
			self.subjects[subjectIndex].transparencyDirty = true
		end
		for _, child in pairs(object:GetChildren()) do
			self:CachePartsRecursive(child, subjectIndex)
		end
	end
end

function SafetyBubble:TeardownTransparency(index)
	for child, _ in pairs(self.subjects[index].cachedParts) do
		child.LocalTransparencyModifier = 0
	end
	self.subjects[index].cachedParts = {}
	self.subjects[index].transparencyDirty = true
	self.subjects[index].lastTransparency = nil

	if self.subjects[index].descendantAddedConn then
		self.subjects[index].descendantAddedConn:disconnect()
		self.subjects[index].descendantAddedConn = nil
	end
	if self.subjects[index].descendantRemovingConn then
		self.subjects[index].descendantRemovingConn:disconnect()
		self.subjects[index].descendantRemovingConn = nil
	end
	for object, conn in pairs(self.subjects[index].toolDescendantAddedConns) do
		conn:Disconnect()
		self.subjects[index].toolDescendantAddedConns[object] = nil
	end
	for object, conn in pairs(self.subjects[index].toolDescendantRemovingConns) do
		conn:Disconnect()
		self.subjects[index].toolDescendantRemovingConns[object] = nil
	end
end

function SafetyBubble:GetSubjectIndex(character)
	-- get index of subject
	local tableLen = #self.subjects
	local subjectIndex = 1
	while subjectIndex <= tableLen do
		if self.subjects[subjectIndex].character == character then
			return subjectIndex
		end
		subjectIndex = subjectIndex + 1
	end

	return 0
end

function SafetyBubble:SubjectExists(character)
	-- check if subject exists
	local subIndex = self:GetSubjectIndex(character)
	return subIndex > 0
end

function SafetyBubble:SetupTransparency(character)
	local subjectIndex = self:GetSubjectIndex(character)
	if subjectIndex == 0 then
		return -- failed to find subject
	end
	
	if self.subjects[subjectIndex].descendantAddedConn then self.subjects[subjectIndex].descendantAddedConn:disconnect() end
	self.subjects[subjectIndex].descendantAddedConn = character.DescendantAdded:Connect(function(object)
		subjectIndex = self:GetSubjectIndex(character)
		if subjectIndex == 0 then
			return -- failed to find subject
		end
		
		-- This is a part we want to invisify
		if self:IsValidPartToModify(object) then
			self.subjects[subjectIndex].cachedParts[object] = true
			self.subjects[subjectIndex].transparencyDirty = true
		end
	end)
	if self.descendantRemovingConn then self.descendantRemovingConn:disconnect() end
	-- to_do : what happens if this comes in after the subject was removed ?
	self.descendantRemovingConn = character.DescendantRemoving:connect(function(object)
		subjectIndex = self:GetSubjectIndex(character)
		if subjectIndex == 0 then
			return -- failed to find subject
		end
		
		if self.subjects[subjectIndex] and self.subjects[subjectIndex].cachedParts[object] then
			self.subjects[subjectIndex].cachedParts[object] = nil
			-- Reset the transparency
			object.LocalTransparencyModifier = 0
		end
	end)
	
	self:CachePartsRecursive(character, subjectIndex)
end

function SafetyBubble:AddSubject(character)
	-- check if subject exists and get index
	local tableLen = #self.subjects
	local subjectIndex = 1
	while subjectIndex <= tableLen do
		if self.subjects[subjectIndex].character == character then
			return
		end
		subjectIndex = subjectIndex + 1
	end
	
	-- add new subject
	local newTarget = {
		transparencyDirty = false,
		lastTransparency = nil,

		descendantAddedConn = nil,
		descendantRemovingConn = nil,
		toolDescendantAddedConns = {},
		toolDescendantRemovingConns = {},
		cachedParts = {},
		character = nil,
	}
	table.insert(self.subjects, newTarget)
	
	-- init subject
	self.subjects[subjectIndex].character = character
	self:SetupTransparency(character)
end

function SafetyBubble:update(dt)
	local currentCamera = workspace.CurrentCamera
	if not currentCamera then
		return
	end
	
	if not self.enabled then
		-- clean out all subjects
		if self.subjects and #self.subjects > 0 then
			for i = 1, #self.subjects do
				self:TeardownTransparency(i)
			end
			self.subjects = {}
		end
		
		return
	end

	-- compute radius of influence
	local safetyRadius = math.max(MAX_SAFETY_DIST * currentCamera.HeadScale, 0.1)
	
	local closestSubject = nil
	local closestDist = safetyRadius + 3 -- add some distance to check for scaled characters
	local userHeadCF = VRService:GetUserCFrame(Enum.UserCFrame.Head)
	local userHeadCameraCF = currentCamera.CFrame * userHeadCF
	
	self.updateCadence = self.updateCadence - dt
	if self.updateCadence <= 0 then
		self.updateCadence = UPDATE_CADENCE
		
		-- find closest NEW subject
		for _, player in pairs(Players:GetPlayers()) do
			if player.Character and player ~= Players.LocalPlayer then
				if self.mode == Enum.VRSafetyBubbleMode.OnlyFriends and
					-- SBT-5736: `any` cast present due to in-flight PR to rename methods.
					-- Will be removed when that PR is merged.
					if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
						(Players.LocalPlayer :: any):IsFriendsWithAsync(player.UserId)
					else
						(Players.LocalPlayer :: any):IsFriendsWith(player.UserId)
				then
					-- Clear hidden friends if existed
					local subIndex = self:GetSubjectIndex(player.Character)
					if subIndex > 0 then
						self:TeardownTransparency(subIndex)
						table.remove(self.subjects, subIndex)
					end
					continue -- skip friends
				end

				if self:SubjectExists(player.Character) then
					continue
				end

				if player.Character then
					local playerCFrame, size = player.Character:GetBoundingBox()
					local dist = (playerCFrame.Position - userHeadCameraCF.Position).Magnitude
					--deduct the scaled depth of the body of the other character from dist
					dist = dist - size.Z
					
					if dist < closestDist then
						closestDist = dist
						closestSubject = player.Character
					end
				end
			end
		end
		
		if closestSubject then
			self:AddSubject(closestSubject)
		end
	end
	
	-- if the table is empty, then there is nothing else to do
	if not self.subjects or #self.subjects == 0 then
		return
	end
	
	-- clean out old subjects
	local numSubjects = #self.subjects
	local subIdx = numSubjects
	while subIdx > 0 do	
		local character = self.subjects[subIdx].character
		local playerCFrame, size = character:GetBoundingBox()
		local dist = (playerCFrame.Position - userHeadCameraCF.Position).Magnitude
		--deduct the scaled depth of the body of the other character from dist
		dist = dist - size.Z
		
		if dist > safetyRadius * 2 then
			self:TeardownTransparency(subIdx)
			table.remove(self.subjects, subIdx)
		end

		subIdx = subIdx - 1
	end
	
	-- update transparency for each subject
	numSubjects = #self.subjects
	subIdx = 1
	while subIdx <= numSubjects do
		local transparency = 0
		
		local character = self.subjects[subIdx].character
		local dist = 0
		if character.PrimaryPart then
			local playerPos = Vector3.new(character:GetPrimaryPartCFrame().p.x,userHeadCameraCF.Position.Y,character:GetPrimaryPartCFrame().p.z)
			dist = (playerPos - userHeadCameraCF.Position).Magnitude
		else
			local playerCFrame, size = character:GetBoundingBox()
			dist = (playerCFrame.Position - userHeadCameraCF.Position).Magnitude
			--deduct the scaled depth of the body of the other character from dist
			dist = dist - size.Z
		end
		
		if dist < safetyRadius then
			if numSubjects > 3 then
				-- performance : don't blend many characters over each other
				transparency = 1
			else
				local maxTransparencyRadius = safetyRadius * 0.75
				if dist < maxTransparencyRadius then
					transparency = MAX_TRANSPARENCY -- set to max transparency
				else
					local transparencyDelta = 1.0 - ((dist - maxTransparencyRadius) / (safetyRadius - maxTransparencyRadius))
					transparency = transparencyDelta * MAX_TRANSPARENCY -- linear ramp of transparency
				end
			end
		end
		
		if not self.subjects[subIdx].lastTransparency then
			self.subjects[subIdx].transparencyDirty = true
		end

		transparency = math.clamp(transparency, 0, 1) -- make sure transparency is sane

		if self.subjects[subIdx].transparencyDirty or self.subjects[subIdx].lastTransparency ~= transparency then
			for child, _ in pairs(self.subjects[subIdx].cachedParts) do
				child.LocalTransparencyModifier = transparency
			end
			self.subjects[subIdx].transparencyDirty = false
			self.subjects[subIdx].lastTransparency = transparency
		end
		
		-- this updates tools held in hand, unfortunately it doesn't work with other attachments
		local equippedTool = character:FindFirstChildOfClass("Tool")
		if equippedTool then
			for i, v in pairs(equippedTool:GetChildren()) do
				if v:IsA('BasePart') then
					v.LocalTransparencyModifier = transparency
				end
			end
		end
		
		subIdx = subIdx + 1
	end
end

return SafetyBubble
