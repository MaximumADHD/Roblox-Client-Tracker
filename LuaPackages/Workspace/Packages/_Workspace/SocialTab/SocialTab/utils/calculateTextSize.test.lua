local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local t = dependencies.t

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local calculateTextSize = require(script.Parent.calculateTextSize)

describe("calculateTextSize", function()
	it("SHOULD return a function", function()
		expect(calculateTextSize()).toEqual(expect.any("function"))
	end)

	it("SHOULD return a vector2 object", function()
		local textSize = calculateTextSize()("hello", { Font = Enum.Font.Gotham, RelativeSize = 1 }, 100)

		expect(t.Vector2(textSize)).toBe(true)
	end)

	it("SHOULD return the same value if called with the same arguments", function()
		local calculateTextSizeFunction = calculateTextSize()
		local textSize = calculateTextSizeFunction("hello", { Font = Enum.Font.Gotham, RelativeSize = 1 }, 100)
		local textSize2 = calculateTextSizeFunction("hello", { Font = Enum.Font.Gotham, RelativeSize = 1 }, 100)

		expect(textSize2).toBe(textSize)
	end)

	it("SHOULD be able to spawn multiple different functions", function()
		local calculateTextSizeFunction = calculateTextSize()
		local calculateTextSizeFunction2 = calculateTextSize()

		local textSize = calculateTextSizeFunction("hello", { Font = Enum.Font.Gotham, RelativeSize = 1 }, 100)
		local textSize2 =
			calculateTextSizeFunction2("goodbye", { Font = Enum.Font.Gotham, RelativeSize = 9000 }, 10000000)
		local textSizeRepeat = calculateTextSizeFunction("hello", { Font = Enum.Font.Gotham, RelativeSize = 1 }, 100)

		expect(textSizeRepeat).toBe(textSize)
		expect(textSize2).never.toBe(textSize)
	end)
end)

describe("validation", function()
	it("SHOULD throw an error if text is nil", function()
		expect(function()
			calculateTextSize()()
		end).toThrow()
	end)

	it("SHOULD throw an text is not a string", function()
		expect(function()
			calculateTextSize()(123, { Font = Enum.Font.Gotham, RelativeSize = 1 }, 100)
		end).toThrow()
	end)

	it("SHOULD throw an error if Font is not a font", function()
		expect(function()
			calculateTextSize()(123, { Font = "String", RelativeSize = 1 }, 100)
		end).toThrow()
	end)

	it("SHOULD throw an error if RelativeSize is not a number", function()
		expect(function()
			calculateTextSize()(123, { Font = Enum.Font.Gotham, RelativeSize = "String" }, 100)
		end).toThrow()
	end)

	it("SHOULD throw an error if baseSize is not a number", function()
		expect(function()
			calculateTextSize()(123, { Font = Enum.Font.Gotham, RelativeSize = 1 }, "String")
		end).toThrow()
	end)
end)
