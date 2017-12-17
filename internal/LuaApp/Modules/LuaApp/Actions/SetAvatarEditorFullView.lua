local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local FFlagAvatarEditorUseNewCommonAction = Flags:GetFlag('AvatarEditorUseNewCommonAction')

if FFlagAvatarEditorUseNewCommonAction then
	local Action = require(Modules.Common.Action)

	return Action("SetAvatarEditorFullView", function(fullView)
		return
		{
			fullView = fullView
		}
	end)
else
	local ActionType = require(script.Parent.ActionType)

	return function(fullView)
		return
		{
			type = ActionType.SetAvatarEditorFullView,
			fullView = fullView,
		}
	end
end
