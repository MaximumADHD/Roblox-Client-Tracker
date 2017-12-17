local ActionTypeNames = {
	"EquipAsset",
	"ResetCategory",
	"SelectCategory",
	"SelectCategoryTab",
	"SetAssets",
	"SetAvatarEditorFullView",
	"SetAvatarHeadSize",
	"SetAvatarHeight",
	"SetAvatarType",
	"SetAvatarWidth",
	"SetBodyColors",
	"SetOutfit",
	"SetScales",
	"ToggleAvatarEditorFullView",
	"ToggleAvatarType",
	"UnequipAsset",
}

local ActionType = {}
for i = 1, #ActionTypeNames do
	ActionType[ActionTypeNames[i]] = ActionTypeNames[i]
end

setmetatable(ActionType, {
	__index = function(self, key)
		error(("Invalid ActionType %q"):format(tostring(key)))
	end
})

return ActionType
