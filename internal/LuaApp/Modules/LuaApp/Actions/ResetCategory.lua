local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local FFlagAvatarEditorUseNewCommonAction = Flags:GetFlag('AvatarEditorUseNewCommonAction')

if FFlagAvatarEditorUseNewCommonAction then
	local Action = require(Modules.Common.Action)

	return Action("ResetCategory", function()
		return {}
	end)
else
	local ActionType = require(script.Parent.ActionType)

	return function()
		return
		{
			type = ActionType.ResetCategory,
		}
	end
end
