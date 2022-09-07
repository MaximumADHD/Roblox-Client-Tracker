local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Plugin = script.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)

local InExperiencePreviewerServer = {}

function InExperiencePreviewerServer:switchToAvatar(player, avatar)
	if not avatar then
		return
	end

	-- Wait for character, store some important data that needs to be transferred over
	local humanoid = avatar:FindFirstChildOfClass("Humanoid")
	local animController = avatar:FindFirstChildOfClass("AnimationController")
	local hasAnimator = if humanoid then humanoid:FindFirstChildOfClass("Animator") else false
	hasAnimator = if animController then animController:FindFirstChildOfClass("Animator") else hasAnimator

	local character = player.Character or player.CharacterAdded:Wait()
	local animateScript = character:WaitForChild("Animate"):Clone()
	character:WaitForChild("HumanoidRootPart")
	local characterPosition = character:GetPrimaryPartCFrame().p

	local clone = avatar:Clone()
	local originalAnimateScript = clone:FindFirstChild("Animate")
	clone.Name = character.Name
	clone.Parent = Workspace
	player.Character = clone

	character:Destroy()

	-- reset animations
	if not hasAnimator then
		local animator = Instance.new("Animator")
		animator.Parent = clone:FindFirstChild("Humanoid")
	end

	if originalAnimateScript then
		originalAnimateScript:Destroy()
	end
	animateScript.Parent = clone

	-- reset character position
	clone:MoveTo(characterPosition)

	self.previewChangedEvent:FireClient(player)
end

function InExperiencePreviewerServer:initRemoteEvents()
	self.previewChangedEvent = Instance.new("RemoteEvent")
	self.previewChangedEvent.Name = Constants.PREVIEW_REMOTE_EVENT_NAME
	self.previewChangedEvent.Parent = ReplicatedStorage
end

function InExperiencePreviewerServer:destroyRemoteEvents()
	if self.previewChangedEvent then
		self.previewChangedEvent:Destroy()
		self.previewChangedEvent = nil
	end
end

function InExperiencePreviewerServer:initPlayerPreviewData()
	local previewAvatarsFolder = ReplicatedStorage:FindFirstChild(Constants.PREVIEW_FOLDER_NAME)
	if not previewAvatarsFolder then
		return
	end

	self.playerPreviewAvatarData = {}
	for _, child in ipairs(previewAvatarsFolder:GetChildren()) do
		local userId = tonumber(child.Name)
		self.playerPreviewAvatarData[userId] = {
			CurrentIndex = 1,
			PreviousIndex = 1,
			Avatars = child:GetChildren(),
		}
		for index, avatar in ipairs(child:GetChildren()) do
			avatar.Name = index
		end
	end
end

function InExperiencePreviewerServer:initConnections()
	self.connections = {}

	table.insert(self.connections, Players.PlayerAdded:Connect(function(player)
		local data = self.playerPreviewAvatarData[player.UserId]
		if data then
			if data.appearanceLoadedHandle then
				data.appearanceLoadedHandle:Disconnect()
			end
			data.appearanceLoadedHandle = player.CharacterAppearanceLoaded:Connect(function()
				self:switchToAvatar(player, data.Avatars[data.CurrentIndex])
			end)

			if data.characterAddedHandle then
				data.characterAddedHandle:Disconnect()
			end
			data.characterAddedHandle = player.CharacterAdded:Connect(function(character)
				if data.diedHandle then
					data.diedHandle:Disconnect()
				end
				data.diedHandle = character:WaitForChild("Humanoid").Died:Connect(function()
					self:switchToAvatar(player, data.Avatars[data.CurrentIndex])
				end)
			end)
		end
	end))

	table.insert(self.connections, self.previewChangedEvent.OnServerEvent:Connect(function(player, index)
		local data = self.playerPreviewAvatarData[player.UserId]
		if data then
			data.CurrentIndex = index
			if index ~= data.PreviousIndex then
				data.Avatars[data.PreviousIndex]:Destroy()
				data.Avatars[data.PreviousIndex] = player.Character:Clone()
			end
			self:switchToAvatar(player, data.Avatars[index])
			data.PreviousIndex = index
		end		
	end))
end

function InExperiencePreviewerServer:destroyConnections()
	if not self.playerPreviewAvatarData then
		return
	end

	for _, data in pairs(self.playerPreviewAvatarData) do
		if data.appearanceLoadedHandle then
			data.appearanceLoadedHandle:Disconnect()
		end
		if data.characterAddedHandle then
			data.characterAddedHandle:Disconnect()
		end
		if data.diedHandle then
			data.diedHandle:Disconnect()
		end
	end

	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end
	self.connections = {}
end

function InExperiencePreviewerServer:init()
	if #Players:GetPlayers() > 1 then
		return
	end

	self:initPlayerPreviewData()
	if not self.playerPreviewAvatarData then
		return 
	end

	self:initRemoteEvents()
	self:initConnections()
end

function InExperiencePreviewerServer:shutdown()
	self:destroyConnections()
	self.playerPreviewAvatarData = nil
	self:destroyRemoteEvents()
end

return InExperiencePreviewerServer
