local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local FFlagAvatarEditorUseNewCommonAction = Flags:GetFlag('AvatarEditorUseNewCommonAction')

if FFlagAvatarEditorUseNewCommonAction then
	local Action = require(Modules.Common.Action)

	return Action("SetScales", function(scales)
		return
		{
			scales = scales
		}
	end)
else
	local ActionType = require(script.Parent.ActionType)

	return function(scales)
		return
		{
			type = ActionType.SetScales,
			scales = scales,
		}
	end
end