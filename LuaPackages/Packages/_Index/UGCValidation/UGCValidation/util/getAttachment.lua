local function getAttachment(parent, names)
	for _, name in pairs(names) do
		local result = parent:FindFirstChild(name)
		if result then
			return result
		end
	end
	return nil
end

return getAttachment
