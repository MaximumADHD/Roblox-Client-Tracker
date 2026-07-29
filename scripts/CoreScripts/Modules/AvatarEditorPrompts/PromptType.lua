local CorePackages = game:GetService("CorePackages")
local enumerate = require(CorePackages.Packages.enumerate)

local promptTypes = {
	"AllowInventoryReadAccess",
	"SaveAvatar",
	"CreateOutfit",
	"EnterOutfitName",
	"SetFavorite",
	"DeleteOutfit",
	"RenameOutfit",
	"UpdateOutfit",
	"SaveAvatarTimeout",
}

return enumerate("PromptType", promptTypes)
