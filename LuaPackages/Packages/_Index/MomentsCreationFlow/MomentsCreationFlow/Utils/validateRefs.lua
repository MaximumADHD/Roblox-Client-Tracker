local function validateRefs(refs: { { current: any? } })
	for _, ref in refs do
		if ref.current == nil then
			return false
		end
	end

	return true
end

return validateRefs
