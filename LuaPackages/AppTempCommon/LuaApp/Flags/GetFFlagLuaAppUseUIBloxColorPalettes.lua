local CorePackages = game:GetService("CorePackages")
local GetEnableDesignSystemExperiment = require(CorePackages.Workspace.Packages.SharedFlags).GetEnableDesignSystemExperiment

game:DefineFastFlag("LuaAppUseUIBloxColorPalettes", false)

return function()
	return game:GetFastFlag("LuaAppUseUIBloxColorPalettes") or GetEnableDesignSystemExperiment()
end
