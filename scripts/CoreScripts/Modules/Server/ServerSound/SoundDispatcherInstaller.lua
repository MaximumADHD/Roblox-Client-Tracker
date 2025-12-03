--!nonstrict
-- Load the legacy SoundDispatcher script into the server if the rest of the old system is present

local SOUND_DISPATCHER_NAME = "SoundDispatcher"
local OLD_SOUND_SCRIPT_NAME = "Sound"

local ServerScriptService = game:GetService("ServerScriptService")
local StarterPlayer = game:GetService("StarterPlayer")
local ServerUtil = require(script.Parent.Parent.ServerUtil)

local function HasOldSoundScripts()
	if ServerScriptService:FindFirstChild(SOUND_DISPATCHER_NAME) then
		return true
	end

	local StarterCharacterScripts = StarterPlayer:FindFirstChildOfClass("StarterCharacterScripts")
	if StarterCharacterScripts and StarterCharacterScripts:FindFirstChild(OLD_SOUND_SCRIPT_NAME) then
		return true
	end

	return false
end

local function LoadScript(name, parent)
	local originalModule = script.Parent:WaitForChild(name)
	local script = Instance.new("Script")
	script.Name = name
	if ServerUtil.getFFlagServerCoreScriptSourceCode() then
		script.Source = ServerUtil.getSourceForServerScript(originalModule)
	else
		script.Source = originalModule.Source
	end
	script.Parent = parent
	return script
end

local function TryInstall()
	if not HasOldSoundScripts() then
		-- use the new system
		return
	end

	local soundDispatcherArchivable = true
	local SoundDispatcher = ServerScriptService:FindFirstChild(SOUND_DISPATCHER_NAME)
	if not SoundDispatcher then
		soundDispatcherArchivable = false
		SoundDispatcher = LoadScript(SOUND_DISPATCHER_NAME, ServerScriptService)
	end

	if not ServerScriptService:FindFirstChild(SOUND_DISPATCHER_NAME) then
		local SoundDispatcherCopy = SoundDispatcher:Clone()
		SoundDispatcherCopy.Archivable = false
		SoundDispatcherCopy.Parent = ServerScriptService
	end

	SoundDispatcher.Archivable = soundDispatcherArchivable
end

return TryInstall
