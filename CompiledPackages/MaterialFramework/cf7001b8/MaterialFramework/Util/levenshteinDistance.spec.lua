local main = script:FindFirstAncestor("MaterialFramework")
local Packages = main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)

local it = JestGlobals.it
local expect = JestGlobals.expect

local levenshteinDistance = require(script.Parent.levenshteinDistance)

it("no difference between lowercase and uppercase letters", function()
	local name = "Brick"
	local search = "brIck"
	expect(levenshteinDistance(name, search)).toBe(0)
end)

it("deletion check", function()
	local name = "Brick"
	local search = "Brck"
	expect(levenshteinDistance(name, search)).toBe(1)
end)

it("insertion check", function()
	local name = "Brick"
	local search = "BriAck"
	expect(levenshteinDistance(name, search)).toBe(1)
end)

it("substitution check", function()
	local name = "Brick"
	local search = "Brack"
	expect(levenshteinDistance(name, search)).toBe(1)
end)

it("transposition check", function()
	local name = "Brick"
	local search = "Brcik"
	expect(levenshteinDistance(name, search)).toBe(1)
end)
