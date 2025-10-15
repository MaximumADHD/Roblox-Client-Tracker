local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local ColorInputMode = require(Foundation.Enums.ColorInputMode)
type ColorInputMode = ColorInputMode.ColorInputMode

local RGB_MAX_VALUE = 255

export type Config<T, V> = {
	key: string,
	value: React.Binding<V>,
	handler: (value: V, component: T?) -> (),
	component: T?,
	placeholder: string?,
	width: UDim?,
	minimum: number?,
	maximum: number?,
	step: number?,
	precision: number?,
}

local function createInputConfigs(
	rgbValues: any,
	hsvValues: any,
	hexValue: any,
	alpha: any,
	handleRGBChange: (value: number, component: string?) -> (),
	handleHSVChange: (value: number, component: string?) -> (),
	handleHexChange: (value: string) -> (),
	handleAlphaChange: (value: number) -> (),
	tokens: any
): { [any]: { Config<string | number, any> } }
	local rgbConfig = Dash.map({ "R", "G", "B" }, function(key: string)
		return {
			key = key,
			component = key:lower(),
			value = rgbValues:map(function(values)
				return values[key:lower()]
			end),
			handler = handleRGBChange,
			minimum = 0,
			maximum = RGB_MAX_VALUE,
			step = 1,
		}
	end)

	local rgbaConfig = table.clone(rgbConfig)
	table.insert(rgbaConfig, {
		key = "A",
		value = alpha,
		handler = handleAlphaChange,
		minimum = 0,
		maximum = 1,
		step = 0.01,
		precision = 3,
	})

	local hsvConfig = Dash.map({ "H", "S", "V" }, function(key: string)
		local config = {
			key = key,
			component = key:lower(),
			value = hsvValues:map(function(values)
				return values[key:lower()]
			end),
			handler = handleHSVChange,
			minimum = 0,
			maximum = if key == "H" then 360 else nil,
		}
		return config
	end)

	local hexConfig = {
		{
			key = tostring(ColorInputMode.Hex),
			value = hexValue,
			handler = handleHexChange,
			placeholder = "#000000",
			width = tokens.Size and tokens.Size.Size_2000 and tokens.Size.Size_2000 or nil,
		},
	}

	return {
		[ColorInputMode.RGB] = rgbConfig,
		[ColorInputMode.RGBA] = rgbaConfig,
		[ColorInputMode.HSV] = hsvConfig,
		[ColorInputMode.Hex] = hexConfig,
	}
end

return {
	createInputConfigs = createInputConfigs,
}
