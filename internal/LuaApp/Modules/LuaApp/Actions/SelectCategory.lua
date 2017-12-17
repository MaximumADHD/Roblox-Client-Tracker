local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local FFlagAvatarEditorUseNewCommonAction = Flags:GetFlag('AvatarEditorUseNewCommonAction')

if FFlagAvatarEditorUseNewCommonAction then
	local Action = require(Modules.Common.Action)

	return Action("SelectCategory", function(categoryIndex)
		return {
			categoryIndex = categoryIndex
		}
	end)
else
	local ActionType = require(script.Parent.ActionType)

	return function(categoryIndex)
		return
		{
			type = ActionType.SelectCategory,
			categoryIndex = categoryIndex,
		}
	end
end
