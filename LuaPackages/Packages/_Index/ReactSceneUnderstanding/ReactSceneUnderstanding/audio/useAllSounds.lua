local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local SoundService = game:GetService("SoundService")

local Cryo = require(Root.Parent.Cryo)
local React = require(Root.Parent.React)
local ReactUtils = require(Root.Parent.ReactUtils)

local useEffect = React.useEffect
local useState = React.useState
local useEventConnection = ReactUtils.useEventConnection

local function getAllSounds(): { Sound }
	-- This method was introduced in 645, and lua-apps currently runs tests
	-- against 641+. To allow tests to pass we need to ensure this method is
	-- guarded so attempts to use it on older versions will not cause an error.
	--
	-- This pcall can be be removed once the oldest version lua-apps runs
	-- against is 645,
	local success, results = pcall(function()
		return SoundService:GetAudioInstances()
	end)

	if success then
		return Cryo.List.filter(results, function(instance: Instance)
			return instance:IsA("Sound")
		end)
	else
		return {}
	end
end

local function useAllSounds(): { Sound }
	local sounds, setSounds = useState(getAllSounds)

	useEventConnection(SoundService.AudioInstanceAdded, function(instance)
		if instance:IsA("Sound") then
			setSounds(function(prev)
				return Cryo.List.join(prev, { instance })
			end)
		end
	end, {})

	useEffect(function()
		local connections: { RBXScriptConnection } = {}

		for _, sound in sounds do
			table.insert(
				connections,
				sound.AncestryChanged:Connect(function()
					if not sound:IsDescendantOf(game) then
						setSounds(getAllSounds())
					end
				end)
			)
		end

		return function()
			for _, connection in connections do
				connection:Disconnect()
			end
		end
	end, { sounds })

	return sounds
end

return useAllSounds
