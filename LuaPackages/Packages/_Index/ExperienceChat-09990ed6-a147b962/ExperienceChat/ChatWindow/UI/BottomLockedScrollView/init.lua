if game:DefineFastFlag("ExpChatScrollViewV2", false) then
	return require(script.BottomLockedScrollViewV2)
else
	return require(script.BottomLockedScrollView)
end
