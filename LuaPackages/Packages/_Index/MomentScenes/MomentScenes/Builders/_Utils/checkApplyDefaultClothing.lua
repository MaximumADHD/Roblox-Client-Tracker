--[[
	AvatarEditorService:CheckApplyDefaultClothingAsync is not a Lua member, so
	tests mock this module instead of the service.

	The call returns a new HumanoidDescription when the shirt or pants changed,
	and nil when they did not. Nil is a successful "nothing to add". A host
	with no AvatarEditorService throws; the caller pcalls.
]]

local function checkApplyDefaultClothing(description: HumanoidDescription): HumanoidDescription?
	return game:GetService("AvatarEditorService"):CheckApplyDefaultClothingAsync(description)
end

return checkApplyDefaultClothing
