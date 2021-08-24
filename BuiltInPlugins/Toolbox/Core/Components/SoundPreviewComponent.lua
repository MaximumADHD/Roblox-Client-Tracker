local RunService = game:GetService("RunService")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Urls = require(Plugin.Core.Util.Urls)

local StopPreviewSound = require(Plugin.Core.Actions.StopPreviewSound)
local SetSoundLoading = require(Plugin.Core.Actions.SetSoundLoading)
local SetSoundElapsedTime = require(Plugin.Core.Actions.SetSoundElapsedTime)
local SetSoundTotalTime = require(Plugin.Core.Actions.SetSoundTotalTime)

local SoundPreviewComponent = Roact.Component:extend("SoundPreviewComponent")

function SoundPreviewComponent:init()
	self.ref = Roact.createRef()

	self.onSoundChange = function(rbx, property)
		local soundObj = self.ref.current
		if not soundObj then return end
		if soundObj.IsLoaded ~= self.props.isLoaded then
			self.props.setSoundLoaded((not soundObj.IsLoaded))
		end

		if property == "TimeLength" and soundObj.TimeLength ~= self.props.totalTime then
			local timeLength = soundObj.TimeLength
			self.props.setSoundTotalTime(timeLength)
		end
	end

	self.updateSound = function()
		local soundObj = self.ref.current
		local currentSoundId = self.props.currentSoundId
		local isPlaying = self.props.isPlaying

		if not soundObj then return end

		local lastSoundId = self.lastSoundId

		if currentSoundId == 0 or not isPlaying then
			if soundObj.isPlaying then
				soundObj.Playing = false
			end
		else
			if currentSoundId == lastSoundId then
				soundObj.Playing = true
			else
				soundObj.TimePosition = 0
				soundObj.Playing = true
				soundObj.SoundId = Urls.constructAssetIdString(currentSoundId)

				self.lastSoundId = currentSoundId
			end
		end
	end

	self.onSoundEnded = function(soundId)
		self.props.stopPreviewSound()
	end
end

function SoundPreviewComponent:didMount()
	self.runServiceConnection = RunService.RenderStepped:Connect(function(step)
		local soundObj = self.ref.current
		local elapsedTime = self.props.elapsedTime

		if (not soundObj or not soundObj.Playing) then
			return
		end
		local newTime = elapsedTime + step

		local timeLength = soundObj.TimeLength
		if newTime >= timeLength then
			newTime = timeLength
		end

		if elapsedTime ~= newTime then
			self.props.setSoundElapsedTime(newTime)
		end
	end)
end

function SoundPreviewComponent:willUnmount()
	if self.runServiceConnection then
		self.runServiceConnection:Disconnect()
	end
end

function SoundPreviewComponent:render()
	return Roact.createElement("Sound", {
		[Roact.Ref] = self.ref,
		[Roact.Event.Ended] = self.onSoundEnded,
		[Roact.Event.Changed] = self.onSoundChange,
	})
end

function SoundPreviewComponent:didUpdate()
	self.updateSound()
end

local function mapStateToProps(state, props)
	state = state or {}

	local sound = state.sound or {}

	return {
		-- Sound Playing
		currentSoundId = sound.currentSoundId or 0,
		elapsedTime = sound.elapsedTime or 0,
		isPlaying = sound.isPlaying or false,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		stopPreviewSound = function()
			dispatch(StopPreviewSound())
		end,
		setSoundLoaded = function(isLoading)
			dispatch(SetSoundLoading(isLoading))
		end,
		setSoundElapsedTime = function(elapsedTime)
			dispatch(SetSoundElapsedTime(elapsedTime))
		end,
		setSoundTotalTime = function(totalTime)
			dispatch(SetSoundTotalTime(totalTime))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(SoundPreviewComponent)
