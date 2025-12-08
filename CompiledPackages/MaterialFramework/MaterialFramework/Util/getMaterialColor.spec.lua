local main = script:FindFirstAncestor("MaterialFramework")
local Packages = main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)

local it = JestGlobals.it
local expect = JestGlobals.expect

local getMaterialColor = require(script.Parent.getMaterialColor)

it("should get material color from Enum.Material", function()
	local use2022Materials = true
	for _, enum in Enum.Material:GetEnumItems() do
		local color = getMaterialColor(enum, use2022Materials)
		expect(color).toBeDefined()
		expect(typeof(color)).toBe("Color3")
	end
end)

it("should get legacy material color from Enum.Material", function()
	local use2022Materials = false
	for _, enum in Enum.Material:GetEnumItems() do
		local color = getMaterialColor(enum, use2022Materials)
		expect(color).toBeDefined()
		expect(typeof(color)).toBe("Color3")
	end
end)
