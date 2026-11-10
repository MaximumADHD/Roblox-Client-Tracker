local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local rtl = require(CorePackages.Packages.Dev.ReactTestingLibrary)

local DOT_SIZE = 8

-- The real tokens need UIBlox.init, which isn't run in unit tests.
jest.mock(Chrome.ChromeShared.Utility.GetStyleTokens, function()
	return function()
		return { Size = { Size_100 = 8 } }
	end
end)

local RedDot = require(script.Parent.RedDot)

local function renderDot(props: any)
	local result
	ReactRoblox.act(function()
		result = rtl.render(React.createElement(RedDot, props))
	end)
	return result
end

local function findDot(result: any, name: string): Frame
	return result.getByText(function(_, node)
		return node.Name == name
	end)
end

describe("RedDot", function()
	it("SHOULD be visible WHEN visible is true", function()
		local dot = findDot(renderDot({ position = UDim2.new(1, -7, 1, -7), visible = true }), "RedDot")
		expect(dot.Visible).toBe(true)
	end)

	it("SHOULD be hidden WHEN visible is false", function()
		local dot = findDot(renderDot({ position = UDim2.new(1, -7, 1, -7), visible = false }), "RedDot")
		expect(dot.Visible).toBe(false)
	end)

	it("SHOULD use the given position, centered on it", function()
		local position = UDim2.new(1, -7, 1, -7)
		local dot = findDot(renderDot({ position = position, visible = true }), "RedDot")
		expect(dot.Position).toBe(position)
		expect(dot.AnchorPoint).toBe(Vector2.new(0.5, 0.5))
	end)

	it("SHOULD be a circle sized from the Size_100 style token", function()
		local dot = findDot(renderDot({ position = UDim2.new(), visible = true }), "RedDot")
		expect(dot.Size).toBe(UDim2.fromOffset(DOT_SIZE, DOT_SIZE))
		local corner = dot:FindFirstChildOfClass("UICorner")
		assert(corner ~= nil, "expected the dot to have a UICorner")
		expect(corner.CornerRadius).toBe(UDim.new(1, 0))
	end)

	it("SHOULD use the given instance name WHEN name is provided", function()
		local result = renderDot({ position = UDim2.new(), visible = true, name = "RedVoiceDot" })
		expect(findDot(result, "RedVoiceDot").Visible).toBe(true)
		expect(result.queryByText(function(_, node)
			return node.Name == "RedDot"
		end)).toBeNil()
	end)
end)
