local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local React = require(Root.Parent.React)
local ReactUtils = require(Root.Parent.ReactUtils)
local SceneAnalysisContext = require(Root.SceneAnalysisContext)
local enums = require(Root.enums)
local useCameraState = require(Root.useCameraState)
local sortByAudibleVolume = require(Root.audio.sortByAudibleVolume)
local useAllSounds = require(Root.audio.useAllSounds)
local useTimedLoop = require(Root.useTimedLoop)

local AUTO_REFRESH_SECONDS = 1

local SKIPPED_SOUND_PROPERTIES = {
	TimePosition = true,
	TimeLength = true,
}

local useCallback = React.useCallback
local useEffect = React.useEffect
local usePrevious = ReactUtils.usePrevious

--[=[
	Returns an array of [Sound] instances sorted by how audible they are to the
	client. Sounds that are determined to be inaudible are omitted.

	If `parents` is not supplied then this hook will traverse the entire
	[DataModel] for Sounds. If this behavior is not desired, make sure to pass
	in an array of Instances to scope how much work is being performed.
	Similarly, `DataModelTraversalOptions` can be passed in to further control
	behavior if you are hitting performance bottlenecks.

	```lua
	local SoundService = game:GetService("SoundService")
	local Workspace = game:GetService("Workspace")

	local sounds = useAudibleSounds({ SoundService, Workspace }, {
		instanceProcessingLimit = 500
	})
	```

	@within ReactSceneUnderstanding
	@tag internal
]=]
local function useAudibleSounds()
	local sceneAnalysis = SceneAnalysisContext.use()
	local sounds = useAllSounds()
	local cameraState = useCameraState()
	local prevCameraState = usePrevious(cameraState)

	local updateAudibleSounds = useCallback(function()
		sceneAnalysis.setAudibleSounds(sortByAudibleVolume(sounds))
	end, { sounds, sceneAnalysis.setAudibleSounds } :: { unknown })

	local onSoundChanged = useCallback(function(property: string)
		if not SKIPPED_SOUND_PROPERTIES[property] then
			updateAudibleSounds()
		end
	end, { updateAudibleSounds })

	useTimedLoop(AUTO_REFRESH_SECONDS, function()
		updateAudibleSounds()
	end)

	useEffect(function()
		if #sceneAnalysis.audibleSounds == 0 and #sounds > 0 then
			updateAudibleSounds()
		end
	end, { #sceneAnalysis.audibleSounds, #sounds, updateAudibleSounds } :: { unknown })

	useEffect(function()
		local connections: { RBXScriptConnection } = {}

		for _, sound in sounds do
			table.insert(connections, sound.Changed:Connect(onSoundChanged))
		end

		return function()
			for _, connection in connections do
				connection:Disconnect()
			end
		end
	end, { sounds, onSoundChanged } :: { unknown })

	useEffect(function()
		if cameraState ~= prevCameraState and cameraState == enums.CameraState.Idle then
			updateAudibleSounds()
		end
	end, { cameraState, prevCameraState, updateAudibleSounds } :: { unknown })

	return sceneAnalysis.audibleSounds
end

return useAudibleSounds
