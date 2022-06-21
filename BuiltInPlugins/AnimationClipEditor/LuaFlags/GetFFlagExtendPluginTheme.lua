local Plugin = script.Parent.Parent

game:DefineFastFlag("ExtendPluginTheme", false)

return function()
	return game:GetFastFlag("ExtendPluginTheme")
end
