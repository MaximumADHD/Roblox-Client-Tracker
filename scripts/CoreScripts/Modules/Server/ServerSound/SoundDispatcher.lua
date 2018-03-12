--[[
	The sound dispatcher will fire sound events to properly loaded characters. This script manages a list of 
	characters currently loaded in the game. When a character fires a sound event, this dispatcher will
	check to make sure the event only fires on characters who have loaded in.
--]]
if UserSettings():IsUserFeatureEnabled("UserUseSoundDispatcher") then
	local loadedCharacters = {}
	local soundEventFolderName = "DefaultSoundEvents"
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local EventFolder = ReplicatedStorage:FindFirstChild(soundEventFolderName)
	if not EventFolder then
		EventFolder = Instance.new("Folder", ReplicatedStorage)
		EventFolder.Name = soundEventFolderName
		EventFolder.Archivable = false
	end
	
	local function createEvent(name, instanceType)
		local newEvent = nil
		newEvent = EventFolder:FindFirstChild(name)
		if newEvent == nil then
			newEvent = Instance.new(instanceType, EventFolder)
			newEvent.Name = name
		end

		return newEvent
	end

	local DefaultServerSoundEvent = createEvent("DefaultServerSoundEvent", "RemoteEvent")
	local AddCharacterLoadedEvent = createEvent("AddCharacterLoadedEvent", "RemoteEvent")
	local RemoveCharacterEvent = createEvent("RemoveCharacterEvent", "RemoteEvent")
	local soundDispatcher = createEvent("SoundDispatcher", "BindableEvent")
	soundDispatcher.Event:connect(function(p, sound, playing ,resetPosition)
		fireDefaultServerSoundEventToClient(p, sound, playing, resetPosition)
	end)
	
	-- Fire the sound event to all clients connected
	function fireDefaultServerSoundEventToClient(p, sound, playing, resetPosition) 
		for _, player in pairs(loadedCharacters) do
			if p == player then
				DefaultServerSoundEvent:FireClient(player, sound, playing, resetPosition)
			end
		end
	end
	
	-- Add a character to the list of clients ready to receive sounds
	function addCharacterLoaded(p)
		local alreadyInTable = false

		for i = 1,#loadedCharacters do
			if loadedCharacters[i] == p then
				alreadyInTable = true
			end
		end

		if not alreadyInTable then
			table.insert(loadedCharacters, p)
		end
	end
	
	-- Remove a character from the table
	function removeCharacter(player)
		for i = 1,#loadedCharacters do
			if loadedCharacters[i] == player then
				table.remove(loadedCharacters, i)
			end
		end
	end

	AddCharacterLoadedEvent.OnServerEvent:Connect(addCharacterLoaded)
	RemoveCharacterEvent.OnServerEvent:Connect(removeCharacter)
end
