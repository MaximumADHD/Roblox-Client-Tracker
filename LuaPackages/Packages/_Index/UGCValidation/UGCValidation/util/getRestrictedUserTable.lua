--!strict

local isInStudio, result = pcall(function()
	return game:GetService("StudioService")
end)
local StudioService = if isInStudio then result else nil

local root = script.Parent.Parent

local Types = require(root.util.Types)

local function getRestrictedUserTable(): Types.RestrictedUserIds
	return if StudioService
		then {
			{ creatorType = "User", id = StudioService:GetUserId() },
		}
		else {}
end

return getRestrictedUserTable
