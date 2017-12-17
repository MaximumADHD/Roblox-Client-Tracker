local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local FFlagAvatarEditorUseNewCommonAction = Flags:GetFlag('AvatarEditorUseNewCommonAction')

if FFlagAvatarEditorUseNewCommonAction then
	local Action = require(Modules.Common.Action)

	return Action("EquipAsset", function(assetType, assetId)
		return {
			assetType = assetType,
			assetId = assetId
		}
	end)
else
	local ActionType = require(script.Parent.ActionType)

	return function(assetType, assetId)
		return
		{
			type = ActionType.EquipAsset,
			assetType = assetType,
			assetId = assetId,
		}
	end
end
