local Plugin = script.Parent.Parent

game:DefineFastFlag("ExtendPluginTheme1", false)

return function()
	return game:GetFastFlag("ExtendPluginTheme1")
end
