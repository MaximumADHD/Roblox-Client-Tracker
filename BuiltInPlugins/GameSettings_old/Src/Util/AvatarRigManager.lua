local Plugin = script.Parent.Parent.Parent

local ConstantAvatar = require(Plugin.Src.Util.ConstantAvatar)

local ReplicatedStorage = game:GetService('ReplicatedStorage')

local RigManager = {}
RigManager.__index = RigManager

function RigManager.new(r6, r15)
	local self = {}
	setmetatable(self, RigManager)

	self.r6 = r6:clone()
	self.r6.Archivable = false
	self.r15 = r15:clone()
	self.r15.Archivable = false
	self.rigs = {[ConstantAvatar.AvatarType.R6] = self.r6, [ConstantAvatar.AvatarType.R15] = self.r15}
	self.currentCharacter = self.r15

	self.characterRoot = Instance.new("Folder")
	self.characterRoot.Archivable = false
	self.characterRoot.Parent = game:GetService("StarterPlayer")
	self.characterRoot.Name = "CharacterRoot"

	self.r15:SetPrimaryPartCFrame(self.r6.PrimaryPart.CFrame)

	game:GetService("StarterPlayer"):ClearDefaults()

	self.r6.Parent = self.characterRoot -- we need to do this so CacheDefaults works
	self.r6.Humanoid:CacheDefaults()
	self.r6.Parent = nil

	self.r15.Parent = self.characterRoot
	self.r15.Humanoid:CacheDefaults()

	self.characterRoot.Parent = game.Workspace

	return self
end

function RigManager:applyDescription(description)
	pcall(function()
		self.currentCharacter.Humanoid:ApplyDescription(description)
	end)
end

function RigManager:updateAvatarType(newAvatarType)
	local isNewAvatarTypeAvailable = nil ~= self.rigs[newAvatarType]
	local isAvatarTheWrongType = self.rigs[newAvatarType] ~= self.currentCharacter
	if isAvatarTheWrongType and isNewAvatarTypeAvailable then

		local currentCharacter, oldCharacter
		if newAvatarType == ConstantAvatar.AvatarType.R6 then
			currentCharacter = self.r6
			oldCharacter = self.r15
		else
			currentCharacter = self.r15
			oldCharacter = self.r6
		end
		currentCharacter.Parent = self.characterRoot
		oldCharacter.Parent = ReplicatedStorage

		self.currentCharacter = currentCharacter
		-- New model needs to have the same transform as the old model.
		self.currentCharacter.HumanoidRootPart.CFrame = oldCharacter.HumanoidRootPart.CFrame
	end
end

function RigManager:setPosition(transformCFrame)
	if self.currentCharacter then
		self.currentCharacter.HumanoidRootPart.CFrame = transformCFrame
	end
end

function RigManager:stop()
	self.r6.Parent = nil
	self.r6:Destroy()
	self.r6 = nil

	self.r15.Parent = nil
	self.r15:Destroy()
	self.r15 = nil

	self.characterRoot.Parent = nil
	self.characterRoot:Destroy()
	self.characterRoot = nil

	game:GetService("StarterPlayer"):ClearDefaults()
end

return RigManager