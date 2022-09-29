local disabledIndex = 0

game:DefineFastInt("FirstPlayerCellIndexEngineLoadingStrategy", disabledIndex)

return function()
	local index = game:GetFastInt("FirstPlayerCellIndexEngineLoadingStrategy")
	if index < 0 then
		index = disabledIndex
	end
	return index
end
