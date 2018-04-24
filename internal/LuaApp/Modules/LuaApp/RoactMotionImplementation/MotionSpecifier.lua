--[[
	Motion specifiers define a value and how to move to it.

	A motion specifier is either:
	* A table created by MotionSpecifier methods
	* A number, which implies instant change
]]

local Config = require(script.Parent.Config)
local MotionType = require(script.Parent.MotionType)

local MotionSpecifier = {}

--[[
	Creates a new spring specifier with the given target value, stiffness,
	and damping.
]]
function MotionSpecifier.spring(value, stiffness, damping, precision)
	stiffness = stiffness or Config.DEFAULT_STIFFNESS
	damping = damping or Config.DEFAULT_DAMPING
	precision = precision or Config.SPRING_PRECISION

	return {
		type = MotionType.Spring,
		value = value,
		stiffness = stiffness,
		damping = damping,
		precision = precision,
	}
end

--[[
	Retrieves a numeric value for the given specifier.
]]
function MotionSpecifier.extractValue(specifier)
	if type(specifier) == "table" then
		return specifier.value
	else
		return specifier
	end
end

--[[
	Determines the MotionType specified by the given specifier.
]]
function MotionSpecifier.getType(specifier)
	if type(specifier) == "table" then
		return specifier.type
	else
		return MotionType.Instant
	end
end

return MotionSpecifier