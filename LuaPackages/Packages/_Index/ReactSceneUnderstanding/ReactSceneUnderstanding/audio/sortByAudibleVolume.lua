local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local Cryo = require(Root.Parent.Cryo)
local SceneUnderstanding = require(Root.Parent.SceneUnderstanding)

local function sortByAudibleVolume(sounds: { Sound })
	local audibleSounds = Cryo.List.filter(sounds, SceneUnderstanding.isAudible)

	return Cryo.List.sort(audibleSounds, function(a: Sound, b: Sound)
		return SceneUnderstanding.getAudibleVolume(a) > SceneUnderstanding.getAudibleVolume(b)
	end)
end

return sortByAudibleVolume
