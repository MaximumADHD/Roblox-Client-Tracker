local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local React = require(Root.Parent.React)
local SceneUnderstanding = require(Root.Parent.SceneUnderstanding)
local enums = require(Root.enums)
local useCameraState = require(Root.useCameraState)
local sortByAudibleVolume = require(Root.audio.sortByAudibleVolume)
local useLazyInstanceCollector = require(Root.traversal.useLazyInstanceCollector)

local useEffect = React.useEffect
local useState = React.useState

type DataModelTraversalOptions = SceneUnderstanding.DataModelTraversalOptions

local function isSound(instance: Instance)
	return instance:IsA("Sound")
end

local function useAudibleSounds(parents: { Instance }, options: DataModelTraversalOptions?)
	local sounds = useLazyInstanceCollector(parents, isSound, options)
	local cameraState = useCameraState()

	local audibleSounds: { Sound }, setAudibleSounds = useState(function()
		return sortByAudibleVolume(sounds)
	end)

	local function updateAudibleSounds()
		setAudibleSounds(sortByAudibleVolume(sounds))
	end

	useEffect(function(): any
		local connections = {}

		for _, sound in sounds do
			table.insert(connections, sound.Changed:Connect(updateAudibleSounds))
		end

		updateAudibleSounds()

		return function()
			for _, connection in connections do
				connection:Disconnect()
			end
		end
	end, { sounds })

	useEffect(function()
		if cameraState == enums.CameraState.Idle then
			updateAudibleSounds()
		end
	end, { cameraState })

	return audibleSounds
end

return useAudibleSounds
