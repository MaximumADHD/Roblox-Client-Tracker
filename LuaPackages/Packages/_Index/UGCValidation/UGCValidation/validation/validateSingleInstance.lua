local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local function validateSingleInstance(instances: { Instance }): (boolean, { string }?)
	-- validate that only one instance was selected
	if #instances == 0 then
		Analytics.reportFailure(Analytics.ErrorType.validateSingleInstance_ZeroInstances)
		return false, { "No instances selected" }
	elseif #instances > 1 then
		Analytics.reportFailure(Analytics.ErrorType.validateSingleInstance_MultipleInstances)
		return false, { "More than one instance selected" }
	end

	return true
end

return validateSingleInstance
