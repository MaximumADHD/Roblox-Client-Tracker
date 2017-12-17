local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local FFlagAvatarEditorUseNewCommonAction = Flags:GetFlag('AvatarEditorUseNewCommonAction')

if FFlagAvatarEditorUseNewCommonAction then
	local Action = require(Modules.Common.Action)

	return Action("SetAvatarHeight", function(height)
		return
		{
			height = height
		}
	end)
else
	local ActionType = require(script.Parent.ActionType)

	return function(height)
		return
		{
			type = ActionType.SetAvatarHeight,
			height = height,
		}
	end
end
