local CorePackages = game:GetService("CorePackages")
local enumerate = require(CorePackages.Packages.enumerate)

local AvatarExperienceFlags = require(CorePackages.Workspace.Packages.AvatarExperienceFlags)
local FFlagAXAvatarTimeoutFlowIE = AvatarExperienceFlags.FFlagAXAvatarTimeoutFlowIE

local promptTypes = {
	"AllowInventoryReadAccess",
	"SaveAvatar",
	"CreateOutfit",
	"EnterOutfitName",
	"SetFavorite",
	"DeleteOutfit",
	"RenameOutfit",
	"UpdateOutfit",
}
if FFlagAXAvatarTimeoutFlowIE then
	table.insert(promptTypes, "SaveAvatarTimeout")
end

return enumerate("PromptType", promptTypes)
