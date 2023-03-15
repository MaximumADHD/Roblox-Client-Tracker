local Packages = script:FindFirstAncestor("SceneManagement").Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local calculateAdorneeProps = require(script.Parent.calculateAdorneeProps)

describe("calculateFullScreenAdorneeProps", function()
	it("should return Vector3 and CFrame when distanceToCamera is not specified", function()
		local dims, cframe = calculateAdorneeProps.calculateFullScreenAdorneeProps()
		expect(typeof(dims)).toBe("Vector3")
		expect(typeof(cframe)).toBe("CFrame")
	end)

	it("should return Vector3 and CFrame when distanceToCamera is specified", function()
		local distanceToCamera = 10
		local dims, cframe = calculateAdorneeProps.calculateFullScreenAdorneeProps(distanceToCamera)
		expect(typeof(dims)).toBe("Vector3")
		expect(typeof(cframe)).toBe("CFrame")
	end)

	it("should throw if args are out of range", function()
		expect(function()
			local distanceToCamera = 0
			calculateAdorneeProps.calculateFullScreenAdorneeProps(distanceToCamera)
		end).toThrow()
	end)
end)

describe("calculateTopBarAdorneeProps", function()
	it("should return Vector3 and CFrame when args are valid when distanceToCamera is not specified", function()
		local heightRatio = 0.2
		local dims, cframe = calculateAdorneeProps.calculateTopBarAdorneeProps(heightRatio)
		expect(typeof(dims)).toBe("Vector3")
		expect(typeof(cframe)).toBe("CFrame")
	end)

	it("should return Vector3 and CFrame when args are valid when distanceToCamera is specified", function()
		local distanceToCamera = 3
		local heightRatio = 0.2
		local dims, cframe = calculateAdorneeProps.calculateTopBarAdorneeProps(heightRatio, distanceToCamera)
		expect(typeof(dims)).toBe("Vector3")
		expect(typeof(cframe)).toBe("CFrame")
	end)

	it("should throw if args are out of range", function()
		expect(function()
			local distanceToCamera = 3
			local heightRatio = -0.1
			calculateAdorneeProps.calculateTopBarAdorneeProps(heightRatio, distanceToCamera)
		end).toThrow()

		expect(function()
			local distanceToCamera = 3
			local heightRatio = 1.1
			calculateAdorneeProps.calculateTopBarAdorneeProps(heightRatio, distanceToCamera)
		end).toThrow()

		expect(function()
			local distanceToCamera = 0
			local heightRatio = 0.2
			calculateAdorneeProps.calculateTopBarAdorneeProps(heightRatio, distanceToCamera)
		end).toThrow()
	end)
end)

describe("calculatePageContentAdorneeProps", function()
	it("should return Vector3 and CFrame when args are valid when distanceToCamera is not specified", function()
		local heightRatio = 0.2
		local dims, cframe = calculateAdorneeProps.calculatePageContentAdorneeProps(heightRatio)
		expect(typeof(dims)).toBe("Vector3")
		expect(typeof(cframe)).toBe("CFrame")
	end)

	it("should return Vector3 and CFrame when args are valid when distanceToCamera is specified", function()
		local distanceToCamera = 3
		local heightRatio = 0.2
		local dims, cframe = calculateAdorneeProps.calculatePageContentAdorneeProps(heightRatio, distanceToCamera)
		expect(typeof(dims)).toBe("Vector3")
		expect(typeof(cframe)).toBe("CFrame")
	end)

	it("should throw if args are out of range", function()
		expect(function()
			local distanceToCamera = 3
			local heightRatio = -0.1
			calculateAdorneeProps.calculatePageContentAdorneeProps(heightRatio, distanceToCamera)
		end).toThrow()

		expect(function()
			local distanceToCamera = 3
			local heightRatio = 1.1
			calculateAdorneeProps.calculatePageContentAdorneeProps(heightRatio, distanceToCamera)
		end).toThrow()

		expect(function()
			local distanceToCamera = 0
			local heightRatio = 0.2
			calculateAdorneeProps.calculatePageContentAdorneeProps(heightRatio, distanceToCamera)
		end).toThrow()
	end)
end)
