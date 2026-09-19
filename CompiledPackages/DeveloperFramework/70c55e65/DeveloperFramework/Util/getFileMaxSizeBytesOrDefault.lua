local FileMaxSizeBytesDefault = 1000

-- Get FileMaxSizeBytes FVariable or default (1000)
function getFileMaxSizeBytesOrDefault(): number
	local ok, value = pcall(function()
		return tonumber(settings():GetFVariable("FileMaxSizeBytes"))
	end)
	if ok then
		return value
	else
		return FileMaxSizeBytesDefault
	end
end

return getFileMaxSizeBytesOrDefault
