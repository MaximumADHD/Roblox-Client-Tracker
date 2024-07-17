local function findAllSounds(parents: { Instance })
	local sounds = {}
	for _, parent in parents do
		for _, descendant in parent:GetDescendants() do
			if descendant:IsA("Sound") then
				table.insert(sounds, descendant)
			end
		end
	end
	return sounds
end

return findAllSounds
