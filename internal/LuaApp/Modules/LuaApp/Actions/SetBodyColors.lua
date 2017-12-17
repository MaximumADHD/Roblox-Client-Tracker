local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local FFlagAvatarEditorUseNewCommonAction = Flags:GetFlag('AvatarEditorUseNewCommonAction')

if FFlagAvatarEditorUseNewCommonAction then
	local Action = require(Modules.Common.Action)

	return Action("SetBodyColors", function(bodyColors)
		return
		{
			bodyColors = bodyColors
		}
	end)
else
	local ActionType = require(script.Parent.ActionType)

	return function(bodyColors)
		return
		{
			type = ActionType.SetBodyColors,
			bodyColors = bodyColors,
		}
	end
end
