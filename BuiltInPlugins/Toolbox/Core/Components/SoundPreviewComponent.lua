local Plugin = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Urls = require(Plugin.Core.Util.Urls)

local getPlugin = require(Plugin.Core.Consumers.getPlugin)

local StopPreviewSound = require(Plugin.Core.Actions.StopPreviewSound)

local SoundPreviewComponent = Roact.Component:extend("SoundPreviewComponent")

function SoundPreviewComponent:init(props)
	self.ref = Roact.createRef()

	local plugin = getPlugin(self)

	self.updateSound = function()
		local soundObj = self.ref.current
		local props = self.props
		local currentSoundId = props.currentSoundId
		local isPlaying = props.isPlaying

		if not soundObj then return end

		local lastSoundId = self.lastSoundId

		if currentSoundId == 0 or not isPlaying then
			if soundObj.isPlaying then
				soundObj.Playing = false

				-- I don't know why even pausing the sound will casue c++ the request the soundId
				plugin:PauseSound(soundObj)
			end
		else
			if currentSoundId == lastSoundId then
				soundObj.Playing = true
				plugin:ResumeSound(soundObj)
			else
				soundObj.Playing = true
				soundObj.SoundId = Urls.constructAssetIdString(currentSoundId)
				plugin:PlaySound(soundObj)

				self.lastSoundId = currentSoundId
			end
		end
	end

	self.onSoundEnded = function(soundId)
		self.props.stopASound()
	end
end

function SoundPreviewComponent:render()
	return Roact.createElement("Sound", {
		[Roact.Ref] = self.ref,
		[Roact.Event.Ended] = self.onSoundEnded
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
		isPlaying = sound.isPlaying or false,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		stopASound = function()
			dispatch(StopPreviewSound())
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(SoundPreviewComponent)
