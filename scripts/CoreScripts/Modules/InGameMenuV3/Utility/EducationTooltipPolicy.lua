local InGameMenu = script.Parent.Parent
local LocalStoreIGM = require(InGameMenu.Utility.LocalStoreIGM)

local PREFIX = "etp_"

return {
	canShow = function(identifier:string)
		if LocalStoreIGM.isEnabled() then
			identifier = PREFIX .. identifier
			local val = LocalStoreIGM.loadForLocalPlayer(identifier);
			return val == nil or val == ""
		else
			return true
		end
	end,
	dismissForever = function(identifier:string)
		if LocalStoreIGM.isEnabled() then
			identifier = PREFIX .. identifier
			LocalStoreIGM.storeForLocalPlayer(identifier, "true")
		end
	end,
	-- test helper
	reset = function(identifier:string)
		if LocalStoreIGM.isEnabled() then
			identifier = PREFIX .. identifier
			LocalStoreIGM.storeForLocalPlayer(identifier, nil)
		end
	end,

	isEnabled = function()
		return LocalStoreIGM.isEnabled()
	end
}
