local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local FFlagAvatarEditorUseNewCommonAction = Flags:GetFlag('AvatarEditorUseNewCommonAction')

if FFlagAvatarEditorUseNewCommonAction then
	local Action = require(Modules.Common.Action)

	return Action("SetAssets", function(assets)
		return
		{
			assets = assets
		}
	end)
else
	local ActionType = require(script.Parent.ActionType)

	return function(assets)
		return
		{
			type = ActionType.SetAssets,
			assets = assets,
		}
	end
end
