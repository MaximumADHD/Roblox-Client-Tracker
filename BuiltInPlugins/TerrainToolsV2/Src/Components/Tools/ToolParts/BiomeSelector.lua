local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local TTCheckBox = require(script.Parent.TTCheckBox)

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local Biome = TerrainEnums.Biome

local BiomeOrder = {
	Biome.Water,
	Biome.Marsh,
	Biome.Plains,
	Biome.Hills,
	Biome.Dunes,
	Biome.Canyons,
	Biome.Mountains,
	Biome.Lavascape,
	Biome.Arctic,
}

return function (props)
	local theme = props.theme
	local localization = props.localization
	local selectBiome = props.selectBiome
	local biomeSelection = props.biomeSelection

	local content = {
		LayoutPadding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 9),
			PaddingBottom = UDim.new(0, 9),
			PaddingLeft = UDim.new(0, 9),
			PaddingRight = UDim.new(0, 9),
		}),

		GridLayout = Roact.createElement("UIGridLayout", {
			CellSize = UDim2.new(0, 86, 0, 16),
			CellPadding = UDim2.new(0, 20, 0, 8),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}

	for i, biome in ipairs(BiomeOrder) do
		content[biome] = Roact.createElement(TTCheckBox, {
			Title = localization:getText("Generate", Constants.BiomeToLocalizationKey[biome]),
			Tag = biome,
			Selected = biomeSelection[biome],
			setButtonBool = selectBiome,
			LayoutOrder = i,
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 128),
		BackgroundTransparency = 1,
		LayoutOrder = 2,
	}, {
		Border = Roact.createElement("Frame", {
			Size = UDim2.new(0, 229, 0, 128),
			Position = UDim2.new(0, 20, 0, 0),
			BackgroundColor3 = theme.backgroundColor,
			BorderColor3 = theme.borderColor,
		}, content),
	})
end
