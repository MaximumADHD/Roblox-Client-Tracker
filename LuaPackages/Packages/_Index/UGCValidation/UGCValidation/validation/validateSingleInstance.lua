local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local Types = require(root.util.Types)

local function validateSingleInstance(
	instances: { Instance },
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType

	-- validate that only one instance was selected
	if #instances == 0 then
		Analytics.reportFailure(Analytics.ErrorType.validateSingleInstance_ZeroInstances)
		return false,
			{
				string.format(
					"Failed to find an instance of the asset type '%s'. Make sure one exists and try again.",
					assetTypeEnum.Name
				),
			}
	elseif #instances > 1 then
		Analytics.reportFailure(Analytics.ErrorType.validateSingleInstance_MultipleInstances)
		return false,
			{
				string.format(
					"Selected more than one instance of type '%s'. Please, select a single instance of this type and try again.",
					assetTypeEnum.Name
				),
			}
	end

	return true
end

return validateSingleInstance
