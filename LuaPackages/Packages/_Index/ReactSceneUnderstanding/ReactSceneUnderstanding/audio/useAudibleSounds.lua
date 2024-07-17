local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local React = require(Root.Parent.React)
local enums = require(Root.enums)
local useCameraState = require(Root.useCameraState)
local sortByAudibleVolume = require(Root.audio.sortByAudibleVolume)
local useSounds = require(Root.audio.useSounds)

local useEffect = React.useEffect
local useState = React.useState

local function useAudibleSounds(parents: { Instance })
	local sounds = useSounds(parents)
	local cameraState = useCameraState()

	local audibleSounds: { Sound }, setAudibleSounds = useState(function()
		return sortByAudibleVolume(sounds)
	end)

	useEffect(function()
		local connections = {}

		for _, sound in sounds do
			local connection = sound.Changed:Connect(function()
				setAudibleSounds(sortByAudibleVolume(sounds))
			end)

			table.insert(connections, connection)
		end

		setAudibleSounds(sortByAudibleVolume(sounds))

		return function()
			for _, connection in connections do
				connection:Disconnect()
			end
		end
	end, { sounds })

	useEffect(function()
		if cameraState == enums.CameraState.Idle then
			setAudibleSounds(sortByAudibleVolume(sounds))
		end
	end, { cameraState })

	return audibleSounds
end

return useAudibleSounds
