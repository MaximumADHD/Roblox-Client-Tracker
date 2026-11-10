--[[
	Helpers for unit-testing Framework and Plugin components
]]

-- TODO STUDIOPLAT-28085: When we actually move things around, they'll all be
-- under this folder so this should be removed and the paths cleaned up
local Framework = script.Parent.Parent

return {
	Instances = require(Framework.TestHelpers.Instances),
	makeSettableValue = require(Framework.TestHelpers.makeSettableValue),
	provideMockContext = require(Framework.TestHelpers.provideMockContext),
	ServiceWrapper = require(Framework.TestHelpers.ServiceWrapper),
	setEquals = require(Framework.TestHelpers.setEquals),
	testImmutability = require(Framework.TestHelpers.testImmutability),
}
