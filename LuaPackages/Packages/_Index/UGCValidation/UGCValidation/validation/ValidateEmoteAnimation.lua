--[[
validate:
	check emote animations are set-up correctly
]]

local root = script.Parent.Parent

local util = root.util
local Types = require(util.Types)
local FailureReasonsAccumulator = require(util.FailureReasonsAccumulator)

local validation = root.validation
local validateSingleInstance = require(validation.validateSingleInstance)

local ValidateEmoteAnimation = {}

function ValidateEmoteAnimation.validate(validationContext: Types.ValidationContext): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()
	reasonsAccumulator:updateReasons(validateSingleInstance(validationContext.instances or {}, validationContext))
	return reasonsAccumulator:getFinalResults()
end

return ValidateEmoteAnimation
