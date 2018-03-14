--[[
	The sound dispatcher will fire sound events to properly loaded characters. This script manages a list of
	characters currently loaded in the game. When a character fires a sound event, this dispatcher will
	check to make sure the event only fires on characters who have loaded in.
--]]
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local SOUND_EVENT_FOLDER_NAME = "DefaultSoundEvents"

if UserSettings():IsUserFeatureEnabled("UserUseSoundDispatcher") then
	local loadedCharacters = {}

	local EventFolder = ReplicatedStorage:FindFirstChild(SOUND_EVENT_FOLDER_NAME)
	if not EventFolder then
		EventFolder = Instance.new("Folder")
		EventFolder.Name = SOUND_EVENT_FOLDER_NAME
		EventFolder.Archivable = false
		EventFolder.Parent = ReplicatedStorage
	end

	local function createEvent(name, instanceType)
		local newEvent = EventFolder:FindFirstChild(name)
		if not newEvent then
			newEvent = Instance.new(instanceType)
			newEvent.Name = name
			newEvent.Parent = EventFolder
		end

		return newEvent
	end

	local DefaultServerSoundEvent = createEvent("DefaultServerSoundEvent", "RemoteEvent")
	local AddCharacterLoadedEvent = createEvent("AddCharacterLoadedEvent", "RemoteEvent")
	local RemoveCharacterEvent = createEvent("RemoveCharacterEvent", "RemoteEvent")

	-- Fire the sound event to all clients connected
	local function fireDefaultServerSoundEventToClient(player, sound, playing, resetPosition)
		if loadedCharacters[player] then
			DefaultServerSoundEvent:FireClient(player, sound, playing, resetPosition)
		end
	end

	-- Add a character to the list of clients ready to receive sounds
	local function addCharacterLoaded(player)
		loadedCharacters[player] = true
	end

	-- Remove a character from the table
	local function removeCharacter(player)
		loadedCharacters[player] = nil
	end

	local soundDispatcher = createEvent("SoundDispatcher", "BindableEvent")
	soundDispatcher.Event:Connect(fireDefaultServerSoundEventToClient)

	--no op function to prevent rogue client from filling RemoteEvent queue
	DefaultServerSoundEvent.OnServerEvent:Connect(function() end)
	AddCharacterLoadedEvent.OnServerEvent:Connect(addCharacterLoaded)
	RemoveCharacterEvent.OnServerEvent:Connect(removeCharacter)
end
