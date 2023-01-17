local QRCodeDisplay = script:FindFirstAncestor("QRCodeDisplay")
local Packages = QRCodeDisplay.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local ECLevels = require(QRCodeDisplay.Common.ECLevels)

local ecToNumber = require(script.Parent.ecToNumber)

it("SHOULD convert the eclevel to the correct number", function()
	expect(ecToNumber(ECLevels.EC_LEVEL_1)).toBe(1)
	expect(ecToNumber(ECLevels.EC_LEVEL_2)).toBe(2)
	expect(ecToNumber(ECLevels.EC_LEVEL_3)).toBe(3)
	expect(ecToNumber(ECLevels.EC_LEVEL_4)).toBe(4)
end)
