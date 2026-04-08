local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local MomentsCommon = require(Packages.MomentsCommon)
local Rodux = require(Packages.Rodux)

type Music = MomentsCommon.Music

export type Type = {
	musicInfos: { [number]: Music },
}

return Rodux.makeActionCreator(script.Name, function(musicInfos): Type
	return {
		musicInfos = musicInfos,
	}
end)
