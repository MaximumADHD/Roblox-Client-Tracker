local function validateSingleInstance(instances: { Instance }): (boolean, { string }?)
	-- validate that only one instance was selected
	if #instances == 0 then
		return false, { "No instances selected" }
	elseif #instances > 1 then
		return false, { "More than one instance selected" }
	end

	return true
end

return validateSingleInstance
