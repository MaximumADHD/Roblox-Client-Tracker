local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local FFlagAvatarEditorUseNewCommonAction = Flags:GetFlag('AvatarEditorUseNewCommonAction')

if FFlagAvatarEditorUseNewCommonAction then
	local Action = require(Modules.Common.Action)

	return Action("SetAvatarWidth", function(width, depth)
		return
		{
			width = width,
			depth = depth
		}
	end)
else
	local ActionType = require(script.Parent.ActionType)

	return function(width, depth)
		return
		{
			type = ActionType.SetAvatarWidth,
			width = width,
			depth = depth,
		}
	end
end
