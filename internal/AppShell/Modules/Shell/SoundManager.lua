-- local CoreGui = Game:GetService("CoreGui")

-- local GuiRoot = CoreGui:FindFirstChild("RobloxGui")

local GuiService = game:GetService('GuiService')
local runService = game:GetService("RunService")

local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Utility = require(ShellModules:FindFirstChild('Utility'))

local BASE_SOUND_URL = 'rbxasset://sounds/ui/Shell/'

local SOUNDS =
{
	--[[ BGM ]]--
	['BackgroundLoop'] = 'RobloxMusic.ogg';


	--[[ UI Sounds ]]--
	['Error'] = 'Error.mp3';
	['ButtonPress'] = 'ButtonPress.mp3';
	['MoveSelection'] = 'MoveSelection.mp3';
	['OverlayOpen'] = 'OverlayOpen.mp3';
	['PopUp'] = 'PopUp.mp3';
	['PurchaseSuccess'] = 'PurchaseSuccess.mp3';
	['ScreenChange'] = 'ScreenChange.mp3';
	['SideMenuSlideIn'] = 'SideMenuSlideIn.mp3';
}

local SoundQueue = {}

local function EaseOutCirc(currentTime, startValue, deltaValue, duration)
	currentTime = currentTime / duration;
	currentTime = currentTime - 1;
	return deltaValue * math.sqrt(1 - currentTime*currentTime) + startValue;
end

local function IsGameRunning()
	if not UserSettings().GameSettings:InStudioMode() or game:GetService('UserInputService'):GetPlatform() == Enum.Platform.Windows then
		return true
	end
	return runService:IsRunning()
end

GetSoundManager = function()
	local this = {}

	local rawVolumes = {}

	local function FindSoundObjectForName(soundName)
		if SoundQueue[soundName] then
			local soundObj = table.remove(SoundQueue[soundName], 1)
			if soundObj then
				table.insert(SoundQueue[soundName], #SoundQueue[soundName], soundObj)
				return soundObj
			end
		end
	end

	function this:CreateSound(soundName)
		local fileName = SOUNDS[soundName]
		local soundsUrl = BASE_SOUND_URL .. fileName

		local soundObj = Instance.new('Sound')
		soundObj.Name = soundName
		soundObj.SoundId = soundsUrl

		return soundObj
	end

	function this:Play(soundName, vol, isLoop, pitch, ...)
		local result = nil

		if SOUNDS[soundName] then
			local soundObj = FindSoundObjectForName(soundName)
			if soundObj then
				soundObj.Volume = vol or 1

				soundObj.Looped = isLoop or false
				soundObj.Pitch = pitch or 1

				soundObj:Play(...)

				rawVolumes[soundObj] = soundObj.Volume
				if not IsGameRunning() then
					soundObj.Volume = 0
				end

				result = soundObj
			else
				Utility.DebugLog("No sound:" , soundName , "in the queue.")
			end
		else
			spawn(function()
				error("Unable to find sound: " .. tostring(soundName))
			end)
		end

		return result
	end

	function this:IsPlaying(soundName)
		local sound = this.SoundHolder:FindFirstChild(soundName)
		if sound then
			return sound.IsPlaying
		end
		return false
	end

	function this:Stop(soundName, ...)
		if this.SoundHolder and SOUNDS[soundName] then
			local soundObj = this.SoundHolder:FindFirstChild(soundName)
			if soundObj then
				soundObj:Stop()
			end
		end
	end

	function this:TweenSound(soundObj, newVolume, duration)
		rawVolumes[soundObj] = nil
		Utility.PropertyTweener(soundObj, 'Volume', soundObj.Volume, newVolume, duration,
			function(...)
				return IsGameRunning() and Utility.EaseInOutQuad(...) or 0
			end,
			true,
			function()
				rawVolumes[soundObj] = newVolume
			end)
	end

	-- function this:PlayOnEvent(event, soundName)
	-- 	event:connect(function()

	-- 	end)
	-- end

	local function Initialize()
		local appshellSounds = Instance.new('Folder')
		appshellSounds.Name = 'AppShellSounds'
		appshellSounds.Parent = CoreGui

		this.SoundHolder = appshellSounds

		for name, fileName in pairs(SOUNDS) do
			local soundsForFile = Instance.new('Folder')
			soundsForFile.Name = name
			soundsForFile.Parent = this.SoundHolder

			SoundQueue[name] = {}
			for i = 1, 3 do
				local soundObj = this:CreateSound(name)
				soundObj.Parent = soundsForFile
				table.insert(SoundQueue[name], soundObj)
			end
		end

		local lastSelection = nil
		GuiService:GetPropertyChangedSignal('SelectedCoreObject'):connect(function()
			local currentSelection = GuiService.SelectedCoreObject
			if currentSelection and lastSelection then
				local moveSelectionSound = currentSelection:FindFirstChild('MoveSelection')
				if moveSelectionSound and moveSelectionSound:IsA('Sound') then
					moveSelectionSound.Volume = 0.35
					moveSelectionSound:Play()
				end
			end
			lastSelection = currentSelection
		end)

		if not IsGameRunning() then
			spawn(function()
				while not IsGameRunning() do
					wait(0.1)
				end
				for soundObj, rawVolume in pairs(rawVolumes) do
					soundObj.Volume = rawVolume
				end
			end)
		end
	end

	Initialize()

	return this
end

return GetSoundManager()
