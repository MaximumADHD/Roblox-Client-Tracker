local function inputBindingsEqual(bindings1, bindings2)
	if bindings1 == bindings2 then
		return true
	end

	for bindingKey, binding1 in pairs(bindings1) do
		local binding2 = bindings2[bindingKey]

		if binding2 == nil then
			return false
		end

		if binding1.kind ~= binding2.kind
			or binding1.keyCode ~= binding2.keyCode
			or binding1.action ~= binding2.action then
			return false
		end

		local meta1 = binding1.meta
		local meta2 = binding2.meta
		if meta1 ~= meta2 then
			if typeof(meta1) == "table" and typeof(meta2) == "table" then
				for metaKey, metaValue1 in pairs(meta1) do
					local metaValue2 = meta2[metaKey]
					if metaValue1 ~= metaValue2 then
						return false
					end
				end

				-- It's possible that meta2 contains all pairs in meta1, but not the inverse,
				-- so we must explicitly check that
				for metaKey in pairs(meta2) do
					if meta1[metaKey] == nil then
						return false
					end
				end
			else
				return false
			end
		end
	end

	-- It's possible that bindings2 contains all pairs in bindings1, but not the inverse,
	-- so we must explicitly check that
	for bindingKey in pairs(bindings2) do
		if bindings1[bindingKey] == nil then
			return false
		end
	end

	return true
end

return inputBindingsEqual