local Foundation = script:FindFirstAncestor("Foundation")

local ShadowPresetModule = require(Foundation.Enums.ShadowPreset)
local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(script.Parent.Types)

type Tokens = Tokens.Tokens
type StyleRule = Types.StyleRule
type StyleAttribute<T> = Types.StyleAttribute<T>
type SizeTokenKey = "50" | "100" | "250" | "400" | "500" | "800" | "1200" | "1400"
type SizeTokenField =
	"Size_50"
	| "Size_100"
	| "Size_250"
	| "Size_400"
	| "Size_500"
	| "Size_800"
	| "Size_1200"
	| "Size_1400"

-- Figma: 8% per layer; tokens have no 8% step.
local SHADOW_TRANSPARENCY = 0.92

type ShadowLayerSpec = {
	offsetY: SizeTokenKey?,
	blur: SizeTokenKey,
	spread: "0" | "-0.5" | "-0.75" | "-1" | "-1.5",
}

local PRESETS: {
	{
		name: ShadowPresetModule.ShadowPreset,
		layers: { ShadowLayerSpec },
	}
} = {
	{
		name = ShadowPresetModule.Raised100,
		layers = {
			{ blur = "100", spread = "0" },
			{ blur = "500", spread = "0" },
		},
	},
	{
		name = ShadowPresetModule.Raised300,
		layers = {
			{ blur = "100", spread = "0" },
			{ blur = "500", spread = "0" },
			{ blur = "800", spread = "0" },
			{ blur = "1400", spread = "0" },
		},
	},
	{
		name = ShadowPresetModule.Overlay100,
		layers = {
			{ offsetY = "50", blur = "100", spread = "-0.5" },
			{ offsetY = "250", blur = "500", spread = "-0.75" },
		},
	},
	{
		name = ShadowPresetModule.Overlay300,
		layers = {
			{ offsetY = "50", blur = "100", spread = "-0.5" },
			{ offsetY = "250", blur = "500", spread = "-0.75" },
			{ offsetY = "400", blur = "800", spread = "-1" },
			{ offsetY = "1200", blur = "1400", spread = "-1.5" },
		},
	},
}

local function sizeTokenField(tokenKey: SizeTokenKey): SizeTokenField
	return (`Size_{tokenKey}`) :: SizeTokenField
end

local function shadowAttributeName(kind: "Blur" | "Offset", tokenKey: SizeTokenKey): string
	return `Shadow{kind}Size{tokenKey}`
end

local function layerRule(
	tag: string,
	spec: ShadowLayerSpec,
	layer: number,
	sizes: { [SizeTokenField]: number },
	color: Color3
): StyleRule
	local blurAttribute = shadowAttributeName("Blur", spec.blur)
	-- Spread offset is integer-only; floor keeps inward tuck on offset layers.
	local spread = math.floor(tonumber(spec.spread) :: number)

	local properties: { [string]: any } = {
		BlurRadius = "$" .. blurAttribute,
		Color = color,
		Transparency = SHADOW_TRANSPARENCY,
		Spread = UDim2.fromOffset(spread, spread),
		ZIndex = -layer,
	}

	local attributes: { StyleAttribute<any> } = {
		{ name = blurAttribute, value = UDim.new(0, sizes[sizeTokenField(spec.blur)]) },
	}

	if spec.offsetY ~= nil then
		local offsetAttribute = shadowAttributeName("Offset", spec.offsetY)
		properties.Offset = "$" .. offsetAttribute
		table.insert(attributes, {
			name = offsetAttribute,
			value = UDim2.fromOffset(0, sizes[sizeTokenField(spec.offsetY)]),
		})
	else
		properties.Offset = UDim2.new()
	end

	return {
		tag = tag,
		pseudo = "UIShadow",
		-- Unique name so stacked UIShadows don't merge on ::UIShadow.
		pseudoName = `{tag}-{layer}`,
		properties = properties,
		attributes = attributes,
	}
end

-- Each preset renders as a single tag whose layers are stacked as distinct
-- UIShadow pseudo-instances
local function shadowRules(tokens: Tokens): { StyleRule }
	local sizes = tokens.Size :: { [SizeTokenField]: number }
	-- Color3 only; skip token transparency
	local color = tokens.Color.Common.Shadow.Color3
	local rules: { StyleRule } = {}

	for _, preset in PRESETS do
		local tag = `shadow-{preset.name}`
		local layers = preset.layers

		local root = layerRule(tag, layers[1], 1, sizes, color)

		if #layers > 1 then
			local children: { StyleRule } = {}
			for index = 2, #layers do
				table.insert(children, layerRule(tag, layers[index], index, sizes, color))
			end
			root.children = children
		end

		table.insert(rules, root)
	end

	return rules
end

return shadowRules
