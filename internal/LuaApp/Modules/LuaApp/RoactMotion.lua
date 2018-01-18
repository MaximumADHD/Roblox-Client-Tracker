--[[
	The root for the implementation of RoactMotion.

	Loads up files out of RoactMotionImplementation and packages them into a
	public API.
]]

local Implementation = script.Parent.RoactMotionImplementation

local MotionSpecifier = require(Implementation.MotionSpecifier)
local SimpleMotion = require(Implementation.SimpleMotion)

local RoactMotion = {}

RoactMotion.spring = MotionSpecifier.spring
RoactMotion.SimpleMotion = SimpleMotion

return RoactMotion