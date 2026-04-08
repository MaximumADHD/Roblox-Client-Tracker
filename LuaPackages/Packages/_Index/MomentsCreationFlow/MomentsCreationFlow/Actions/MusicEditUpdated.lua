local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local MomentsCommon = require(Packages.MomentsCommon)
local Rodux = require(Packages.Rodux)

type MusicEdit = MomentsCommon.MusicEdit

export type Type = {
	musicEdit: MusicEdit,
}

return Rodux.makeActionCreator(script.Name, function(musicEdit: MusicEdit): Type
	return {
		musicEdit = musicEdit,
	}
end)
