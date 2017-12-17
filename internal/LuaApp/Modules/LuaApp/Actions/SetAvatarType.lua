local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local FFlagAvatarEditorUseNewCommonAction = Flags:GetFlag('AvatarEditorUseNewCommonAction')

if FFlagAvatarEditorUseNewCommonAction then
	local Action = require(Modules.Common.Action)

	return Action("SetAvatarType", function(avatarType)
		return
		{
			avatarType = avatarType
		}
	end)
else
	local ActionType = require(script.Parent.ActionType)

	return function(avatarType)
		return
		{
			type = ActionType.SetAvatarType,
			avatarType = avatarType,
		}
	end
end
