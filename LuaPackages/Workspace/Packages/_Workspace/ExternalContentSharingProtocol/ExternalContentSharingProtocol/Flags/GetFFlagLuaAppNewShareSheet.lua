game:DefineFastFlag("LuaAppNewShareSheet_v2", false)

local getFFlagEnableExternalContentSharingProtocolLua =
	require(script.Parent.getFFlagEnableExternalContentSharingProtocolLua)

return function()
	return getFFlagEnableExternalContentSharingProtocolLua() and game:GetFastFlag("LuaAppNewShareSheet_v2")
end
