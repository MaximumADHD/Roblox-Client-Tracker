local FFlagPlayerListUseDisplayName = game:DefineFastFlag("PlayerListUseDisplayName", false)
local FFlagPlayerListUseDisplayNameChina = game:DefineFastFlag("PlayerListUseDisplayNameChina", false)
local FFlagPlayerListUseDisplayNameChina2 = game:DefineFastFlag("PlayerListUseDisplayNameChina2", false)

local function isDisplayNameEnabled(subjectToChinaPolicies)
	if FFlagPlayerListUseDisplayName then
		return true
	end

	if FFlagPlayerListUseDisplayNameChina2 then
		return subjectToChinaPolicies
	end

	if FFlagPlayerListUseDisplayNameChina then
		return subjectToChinaPolicies
	end

	return false
end

return isDisplayNameEnabled
