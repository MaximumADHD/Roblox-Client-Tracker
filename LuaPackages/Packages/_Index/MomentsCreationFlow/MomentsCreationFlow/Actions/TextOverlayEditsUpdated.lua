local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local MomentsCommon = require(Packages.MomentsCommon)
local Rodux = require(Packages.Rodux)

type TextOverlayEdit = MomentsCommon.TextOverlayEdit

export type Type = {
	textOverlayEdits: { TextOverlayEdit },
}

return Rodux.makeActionCreator(script.Name, function(textOverlayEdits: { TextOverlayEdit }): Type
	return {
		textOverlayEdits = textOverlayEdits,
	}
end)
