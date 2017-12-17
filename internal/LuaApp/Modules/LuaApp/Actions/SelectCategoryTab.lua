local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local FFlagAvatarEditorUseNewCommonAction = Flags:GetFlag('AvatarEditorUseNewCommonAction')

if FFlagAvatarEditorUseNewCommonAction then
	local Action = require(Modules.Common.Action)

	return Action("SelectCategoryTab", function(categoryIndex, tabIndex, position)
		return
		{
			categoryIndex = categoryIndex,
			tabIndex = tabIndex,
			position = position
		}
	end)
else
	local ActionType = require(script.Parent.ActionType)

	return function(categoryIndex, tabIndex, position)
		return
		{
			type = ActionType.SelectCategoryTab,
			categoryIndex = categoryIndex,
			tabIndex = tabIndex,
			position = position
		}
	end
end
