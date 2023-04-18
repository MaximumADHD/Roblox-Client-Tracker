if game:DefineFastFlag("DebugVersionedFlagTest_RealConsumerCpp", false) then
	print("DebugVersionedFlagTest_RealConsumerCpp is flipped, version ONE (Lua)")
end

game:DefineFastFlag("DebugVersionedFastFlagTest_RealConsumerLua", false)

if game:GetFastFlag("DebugVersionedFastFlagTest_RealConsumerLua") then
	print("DebugVersionedFastFlagTest_RealConsumerLua is flipped, version ONE (Lua)")
end
