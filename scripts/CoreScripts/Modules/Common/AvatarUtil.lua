--!nonstrict
--[[
	This is a helper module for managing avatar loading. Given a callback, AvatarUtil will run the callback whenever it
	detects that the avatar may have changed. AvatarUtil does not guarentee that the avatar has changed per run. Callbacks should be idempotent.

	- AvatarUtil:connectLocalCharacterChanges(callback : (character) -> ())
	- AvatarUtil:connectPlayerCharacterChanges(player, callback : (character) -> ())
]]

local Players = game:GetService("Players")
local WAIT_TIME = 0.1

local FFlagFixAvatarUtilCharacter = game:DefineFastFlag("FixAvatarUtilCharacter", false)

-- Private Helper class 
local PlayerTracker = {}
PlayerTracker.__index = PlayerTracker

function PlayerTracker.new(player : Player)
	local self: any = setmetatable({}, PlayerTracker)
	
	self.player = player
	
	-- event to fire if the character changes
	self.characterChangedEvent = Instance.new("BindableEvent")
	self.eventQueued = false -- wait on firing the event to reduce number of callbacks
	
	-- connections to listen to changes
	self.connections = {}
	
	-- connect characterAdded event
	self.connections["characterAddedConnection"] = player.CharacterAdded:Connect(function(char)
		self:onCharacterChanged(char)
	end)

	-- connect characterappearance changed event
	self.connections["characterAppearanceChangedConnection"] = player.CharacterAppearanceLoaded:Connect(function(char)
		self:onCharacterChanged(char)
	end)

	if FFlagFixAvatarUtilCharacter then
		-- manually trigger for existing character
		if self.player.Character then
			self:onCharacterChanged(self.player.Character)
		end
	end
	
	return self
end

function PlayerTracker:removeConnection(connectionName)
	if self.connections[connectionName] then
		self.connections[connectionName]:Disconnect()
		self.connections[connectionName] = nil
	end
end

function PlayerTracker:onCharacterChanged(character : Model)
	-- connect descendants added/removed
	self:removeConnection("descendantAddedConnection")
	self.connections["descendantAddedConnection"] = character.DescendantAdded:Connect(function(desc) 
		self:onDescendantAdded(desc)
	end)
	
	self:removeConnection("descendantRemovedConnection")
	self.connections["descendantRemovedConnection"] = character.DescendantRemoving:Connect(function(desc) 
		self:onDescendantRemoving(desc)
	end)

	-- observe changes on any existing descendants
	for i, desc in pairs(character:GetDescendants()) do
		self:onDescendantAdded(desc)
	end

	-- call callbacks
	self:fireCharacterChanged()
end

function PlayerTracker:onDescendantAdded(descendant : Instance)
	-- connect number value changes
	if descendant:IsA("NumberValue") then
		local numberChangedConnection = descendant.Name .. "Connection"
		self:removeConnection(numberChangedConnection)
		self.connections[numberChangedConnection] = descendant.Changed:Connect(function()
			self:fireCharacterChanged()
		end)
	end
	
	-- call callbacks
	self:fireCharacterChanged()
end

function PlayerTracker:onDescendantRemoving(descendant : Instance)
	-- disconnect number value changes
	if descendant:IsA("NumberValue") then
		local numberChangedConnection = descendant.Name .. "Connection"
		self:removeConnection(numberChangedConnection)
	end

	-- call callbacks
	self:fireCharacterChanged()
end


function PlayerTracker:fireCharacterChanged()
	-- if dirty, don't do anything
	if self.eventQueued then
		return
	else
		-- if not dirty, set dirty and start a coroutine to fire the changed event
		self.eventQueued = true
		task.delay(WAIT_TIME, function()
			self.eventQueued = false
			
			local char = self.player.Character
			if char then
				self.characterChangedEvent:Fire(char)
			end
		end)
	end
end

-- Utility class to help with Avatar loading
local AvatarUtil = {}
AvatarUtil.__index = AvatarUtil

function AvatarUtil.new()
	local self: any = setmetatable({}, AvatarUtil)
	
	self.playerConnections = {}
	
	return self
end

type Callback = (Model) -> ()

-- Convenience for local character
function AvatarUtil:connectLocalCharacterChanges(callback : Callback)
	local player = Players.LocalPlayer
	
	while not player do
		Players.Changed:Wait()
		player = Players.LocalPlayer
	end

	self:connectPlayerCharacterChanges(player, callback)
end

 -- connect a callback to AvatarUtil that will be called whenever the given player's
 -- could have changed. This function makes no guarentees on the character model passed to the 
 -- callback except that it will not be nil. It will also run the callback immediately if the 
 -- character is already valid. The callback may be called many times per character load.
 function AvatarUtil:connectPlayerCharacterChanges(player, callback : Callback)
	-- create a playerTracker if it does not already exist
	if not self.playerConnections[player] then
		self.playerConnections[player] = PlayerTracker.new(player)
	end

	-- connect callback
	self.playerConnections[player].characterChangedEvent.Event:Connect(callback)

	-- fire once in the beginning
	self.playerConnections[player]:fireCharacterChanged()
end

return AvatarUtil