local Selection = game:GetService("Selection")

return function()
	local toExport = Selection:Get()
	if not toExport then
		return false
	end

	for _, item in ipairs(toExport) do
		if not item:IsA("Accessory") then
			return true
		end
	end
	return false
end
