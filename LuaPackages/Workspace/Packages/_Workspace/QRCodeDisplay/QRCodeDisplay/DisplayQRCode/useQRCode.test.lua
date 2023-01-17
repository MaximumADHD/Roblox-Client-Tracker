local QRCodeDisplay = script:FindFirstAncestor("QRCodeDisplay")
local Packages = QRCodeDisplay.Parent
local React = require(Packages.React)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local ECLevels = require(QRCodeDisplay.Common.ECLevels)
local useQRCode = require(script.Parent.useQRCode)
local ReactRoblox = require(Packages.Dev.ReactRoblox)

local FIRST_ROW_OF_LEVEL_ONE_MATRIX = { 2, 2, 2, 2, 2, 2, 2, -2, 2, -1, 1, -1, 1, -2, 2, 2, 2, 2, 2, 2, 2 }

it("SHOULD create a matrix when given a valid ec level and string to encode", function()
	local matrix
	local function component(props)
		matrix = useQRCode({ toEncode = "", ecLevel = ECLevels.EC_LEVEL_1 })
	end

	local element = React.createElement(component)
	local container = Instance.new("Folder")
	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(matrix).toEqual(expect.any("table"))
	expect(matrix[1]).toEqual(FIRST_ROW_OF_LEVEL_ONE_MATRIX)

	ReactRoblox.act(function()
		root:unmount()
	end)
end)

it("SHOULD re-render and change if the ecLevel changes", function()
	local matrix
	local changeEffect
	local function component(props)
		local ecLevel, setTriggerEffect = React.useState(ECLevels.EC_LEVEL_1 :: ECLevels.ECLevel)
		matrix = useQRCode({ toEncode = "", ecLevel = ecLevel })
		changeEffect = setTriggerEffect
	end

	local element = React.createElement(component)
	local container = Instance.new("Folder")
	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(matrix).toEqual(expect.any("table"))
	expect(matrix[1]).toEqual(FIRST_ROW_OF_LEVEL_ONE_MATRIX)

	ReactRoblox.act(function()
		changeEffect(ECLevels.EC_LEVEL_2)
	end)

	expect(matrix).toEqual(expect.any("table"))
	expect(matrix[1]).never.toEqual(FIRST_ROW_OF_LEVEL_ONE_MATRIX)
end)

it("SHOULD re-render and change if the toEncode value changes", function()
	local matrix
	local changeEffect
	local function component(props)
		local toEncode, setTriggerEffect = React.useState("")
		matrix = useQRCode({ toEncode = toEncode, ecLevel = ECLevels.EC_LEVEL_1 })
		changeEffect = setTriggerEffect
	end

	local element = React.createElement(component)
	local container = Instance.new("Folder")
	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(matrix).toEqual(expect.any("table"))
	expect(matrix[1]).toEqual(FIRST_ROW_OF_LEVEL_ONE_MATRIX)

	ReactRoblox.act(function()
		changeEffect("aaa")
	end)

	expect(matrix).toEqual(expect.any("table"))
	expect(matrix[1]).never.toEqual(FIRST_ROW_OF_LEVEL_ONE_MATRIX)
end)

it("SHOULD not re-render and change if the values stay the same", function()
	local lastGeneratedMatrix, firstGeneratedMatrix
	local changeEffect
	local function component(props)
		local _, setTriggerEffect = React.useState(ECLevels.EC_LEVEL_1)
		local qrCode = useQRCode({ toEncode = "", ecLevel = ECLevels.EC_LEVEL_1 })
		lastGeneratedMatrix = qrCode
		if not firstGeneratedMatrix then
			firstGeneratedMatrix = qrCode
		end
		changeEffect = setTriggerEffect
	end

	local element = React.createElement(component)
	local container = Instance.new("Folder")
	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(lastGeneratedMatrix).toEqual(expect.any("table"))
	expect(lastGeneratedMatrix).toBe(firstGeneratedMatrix)

	ReactRoblox.act(function()
		changeEffect(ECLevels.EC_LEVEL_2)
	end)

	expect(lastGeneratedMatrix).toEqual(expect.any("table"))
	expect(lastGeneratedMatrix).toBe(firstGeneratedMatrix)
end)
