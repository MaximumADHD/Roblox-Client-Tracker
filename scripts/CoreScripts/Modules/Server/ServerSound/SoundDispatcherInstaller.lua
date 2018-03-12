-- Load the SoundDispatcher script into Studio
local soundDispatcherName = "SoundDispatcher"
local ServerScriptService = game:GetService("ServerScriptService")

local function LoadScript(name, parent)
	local originalModule = script.Parent:WaitForChild(name)
	local script = Instance.new("Script")
	script.Name = name
	script.Source = originalModule.Source
	script.Parent = parent
	return script
end

local function Install()
	local soundDispatcherArchivable = true
	local SoundDispatcher = ServerScriptService:FindFirstChild(soundDispatcherName)
	if not SoundDispatcher then
		soundDispatcherArchivable = false
		SoundDispatcher = LoadScript(soundDispatcherName, ServerScriptService)
	end

	if not ServerScriptService:FindFirstChild(soundDispatcherName) then
		local SoundDispatcherCopy = SoundDispatcher:Clone()
		SoundDispatcherCopy.Archivable = false
		SoundDispatcherCopy.Parent = ServerScriptService
	end

	SoundDispatcher.Archivable = soundDispatcherArchivable
end

return Install
