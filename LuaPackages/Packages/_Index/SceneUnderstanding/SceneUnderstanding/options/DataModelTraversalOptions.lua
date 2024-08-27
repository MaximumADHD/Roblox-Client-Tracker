--[=[
	Options for controlling how the [DataModel] is traversed.

	@interface DataModelTraversalOptions
	.instanceProcessingLimit number?

	@within SceneUnderstanding
]=]
export type DataModelTraversalOptions = {
	-- The number of instances that will be processed before deferring work to
	-- the next frame. A higher value means traversal will complete faster, but
	-- may harm FPS if too much work is being performed at once.
	instanceProcessingLimit: number?,
}

local defaultOptions = {
	instanceProcessingLimit = 1000,
}

export type DataModelTraversalOptionsWithDefaults = typeof(defaultOptions) & DataModelTraversalOptions

local DataModelTraversalOptions = {}

function DataModelTraversalOptions.new(
	providedOptions: DataModelTraversalOptions?
): DataModelTraversalOptionsWithDefaults
	local options = table.clone(defaultOptions)
	if providedOptions then
		for k, v in providedOptions do
			options[k] = v
		end
	end
	return options
end

return DataModelTraversalOptions
