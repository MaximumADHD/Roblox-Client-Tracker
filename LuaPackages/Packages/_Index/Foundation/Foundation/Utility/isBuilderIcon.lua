local function isBuilderIcon(icon: string?)
	return icon ~= nil and icon ~= "" and icon:find("[^%l%d%-]") == nil
end

return isBuilderIcon
