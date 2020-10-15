local CorePackages = game:GetService("CorePackages")
local enumerate = require(CorePackages.enumerate)

return enumerate("PromptType", {
	"AllowInventoryReadAccess",
	"SaveAvatar",
	"CreateOutfit",
	"EnterOutfitName",
	"SetFavorite",
})