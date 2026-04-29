game:DefineFastFlag("RegisterActionsPluginLoader", false)
game:DefineFastFlag("PluginLoaderAddMultipleButtonInfos", false)

return {
	getFFlagRegisterActionsPluginLoader = function()
		return game:GetFastFlag("RegisterActionsPluginLoader")
	end,
	getFFlagPluginLoaderAddMultipleButtonInfos = function()
		return game:GetFastFlag("PluginLoaderAddMultipleButtonInfos")
	end,
}
