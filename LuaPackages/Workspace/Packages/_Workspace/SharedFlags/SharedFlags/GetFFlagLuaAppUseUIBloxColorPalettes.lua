local GetEnableDesignSystemExperiment = require(script.Parent.GetEnableDesignSystemExperiment)

game:DefineFastFlag("LuaAppUseUIBloxColorPalettes", false)

return function()
	return game:GetFastFlag("LuaAppUseUIBloxColorPalettes") or GetEnableDesignSystemExperiment()
end
