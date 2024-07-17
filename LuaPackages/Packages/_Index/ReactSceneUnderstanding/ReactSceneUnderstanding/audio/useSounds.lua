local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local Cryo = require(Root.Parent.Cryo)
local React = require(Root.Parent.React)
local findAllSounds = require(Root.audio.findAllSounds)

local useEffect = React.useEffect
local useState = React.useState

local function useSounds(parents: { Instance })
	local sounds, setSounds = useState(function()
		return findAllSounds(parents)
	end)

	useEffect(function()
		setSounds(findAllSounds(parents))

		local connections = {}

		for _, parent in parents do
			local connection = parent.DescendantAdded:Connect(function(instance)
				if instance:IsA("Sound") then
					setSounds(function(prev)
						local new = table.clone(prev)
						table.insert(new, instance)
						return new
					end)
				end
			end)

			table.insert(connections, connection)
		end

		return function()
			for _, connection in connections do
				connection:Disconnect()
			end
		end
	end, parents)

	useEffect(function()
		local connections = {}

		for _, sound in sounds do
			local connection = sound.AncestryChanged:Connect(function()
				for _, parent in parents do
					if not sound:IsDescendantOf(parent) then
						setSounds(function(prev)
							return Cryo.List.filter(prev, function(other)
								return sound ~= other
							end)
						end)
					end
				end
			end)

			table.insert(connections, connection)
		end

		return function()
			for _, connection in connections do
				connection:Disconnect()
			end
		end
	end, Cryo.List.join({ sounds }, parents))

	return sounds
end

return useSounds
