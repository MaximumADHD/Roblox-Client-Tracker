local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local FFlagAvatarEditorUseNewCommonAction = Flags:GetFlag('AvatarEditorUseNewCommonAction')

if FFlagAvatarEditorUseNewCommonAction then
	local Action = require(Modules.Common.Action)

	return Action("SetOutfit", function(assets, bodyColors)
		return
		{
			assets = assets,
			bodyColors = bodyColors
		}
	end)
else
	local ActionType = require(script.Parent.ActionType)

	return function(assets, bodyColors)
		return
		{
			type = ActionType.SetOutfit,
			assets = assets,
			bodyColors = bodyColors,
		}
	end
end
