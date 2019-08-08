local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Theming = require(Plugin.Src.ContextServices.Theming)
local UILibrary = require(Plugin.Packages.UILibrary)
local Localizing = UILibrary.Localizing
local Separator = UILibrary.Component.Separator

local SQUARE_BUTTON_SIZE = 140
local TILE_FOOTER_SIZE = 40

local function TileGame(props)
	return Theming.withTheme(function(theme)
		return Localizing.withLocalization(function(localizing)
			local name = props.Name
			local id = props.Id
			local image = props.Image

			local onActivated = props.OnActivated

			return Roact.createElement("ImageButton", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, SQUARE_BUTTON_SIZE, 0, SQUARE_BUTTON_SIZE + TILE_FOOTER_SIZE),

				[Roact.Event.Activated] = function() onActivated(id) end,
			}, {
				Icon = Roact.createElement("ImageLabel", {
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(1, 0, 1, -TILE_FOOTER_SIZE),
					Image = image,
					BorderSizePixel = 0,
				}),

				Name = Roact.createElement("TextLabel", {
					Text = name,
					Position = UDim2.new(0, 0, 1, -TILE_FOOTER_SIZE),
					Size = UDim2.new(1, 0, 0, TILE_FOOTER_SIZE),

					TextWrapped = true,
					TextSize = 11,
					BorderSizePixel = 0,
					BackgroundColor3 = theme.backgroundColor,
					TextColor3 = theme.textColor,
				}),

				Separator = Roact.createElement(Separator, {
					Weight = 1,
					Padding = 10,
					Position = UDim2.new(0.5, 0, 1, 0),
				}),
			})
		end)
	end)
end

return TileGame
