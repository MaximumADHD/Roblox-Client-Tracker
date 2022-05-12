local Src = script.Parent.Parent
local Constants = require(Src.Util.Constants)

local module = {}

module.setBreakpointRowEnabled = function(bp, row)
	if row.item.context == nil then
		bp:SetEnabled(not row.item.isEnabled)
	else
		local intForGST = Constants.GetIntForGST(row.item.context)
		if intForGST == nil then
			return
		end
		bp:SetContextEnabled(intForGST, not row.item.isEnabled)
	end
end

return module
