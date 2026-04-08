local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Rodux = require(Packages.Rodux)

export type Type = {
	musics: { number },
}

return Rodux.makeActionCreator(script.Name, function(musics): Type
	return {
		musics = musics,
	}
end)
