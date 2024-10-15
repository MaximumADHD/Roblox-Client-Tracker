--!strict
-- With UGC Validation running on game servers, it is important that we don't do too much work on one frame. Most
-- of this work comes from hitting UGCValidationService APIs. We already pcall around every use of this API,
-- this acts as a wrapper around pcall to also check the context for how much time was spent and yield to the next frame
-- first if we exceed the max allowed frame time.

local root = script.Parent.Parent

local Types = require(root.util.Types)
local tryYield = require(root.util.tryYield)

return function(func: () -> any, validationContext: Types.ValidationContext): (boolean, any)
	tryYield(validationContext)
	return pcall(func)
end
