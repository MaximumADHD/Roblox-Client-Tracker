local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local FFlagAvatarEditorUseNewCommonAction = Flags:GetFlag('AvatarEditorUseNewCommonAction')

if FFlagAvatarEditorUseNewCommonAction then
	local Action = require(Modules.Common.Action)

	return Action("SetAvatarHeadSize", function(head)
		return
		{
			head = head
		}
	end)
else
	local ActionType = require(script.Parent.ActionType)

	return function(head)
		return
		{
			type = ActionType.SetAvatarHeadSize,
			head = head,
		}
	end
end
