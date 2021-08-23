local Plugin = script.Parent.Parent

local GetFFlagUseLuaDraggers = require(Plugin.LuaFlags.GetFFlagUseLuaDraggers)

game:DefineFastFlag("CreateSelectionBox", false)

return function()
	return game:GetFastFlag("CreateSelectionBox") and GetFFlagUseLuaDraggers()
end