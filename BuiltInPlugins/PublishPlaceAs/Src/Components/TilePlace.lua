local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Theming = require(Plugin.Src.ContextServices.Theming)
local UILibrary = require(Plugin.Packages.UILibrary)
local Localizing = UILibrary.Localizing
local Separator = UILibrary.Component.Separator

local function TilePlace(props)
	return Theming.withTheme(function(theme)
		return Localizing.withLocalization(function(localizing)
			local name = props.Name
			local image = props.Image
			local selected = props.Selected
			local lastItem = props.LastItem
			local onActivated = props.OnActivated

			return Roact.createElement("ImageButton", {
				Size = UDim2.new(1, -40, 0, 80),

				BackgroundTransparency = 1,
				[Roact.Event.Activated] = onActivated,
			}, {

				Icon = Roact.createElement("ImageLabel", {
					Image = image,
					Size = UDim2.new(0, 60, 0, 60),
					Position = UDim2.new(0, 10, 0, 10),
					BorderSizePixel = 0,
				}),

				Tile = Roact.createElement("Frame", {
					Position = UDim2.new(0, 80, 0, 0),
					Size = UDim2.new(1, -80, 1, 0),
					BackgroundTransparency = 1,
				}, {
					Pad = Roact.createElement("UIPadding", {
						PaddingLeft =  UDim.new(0, 10),
						PaddingRight =  UDim.new(0, 10),
						PaddingBottom = UDim.new(0, 10),
					}),

					Name = Roact.createElement("TextLabel", {
						Text = name,
						Size = UDim2.new(1, 0, 1, 0),
						TextXAlignment = 0,

						TextWrapped = true,
						TextSize = 11,
						BorderSizePixel = 0,
						BackgroundTransparency = 1,
						TextColor3 = theme.textColor,
					}),

					Selected = selected and Roact.createElement("ImageLabel", {
						Image = theme.icons.checkmark,
						Size = UDim2.new(0, 30, 0, 30),
						AnchorPoint = Vector2.new(1, 0.5),
						Position = UDim2.new(1, -30, 0.5, 0),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
					}),

					Seperator = not lastItem and Roact.createElement(Separator, {
						Weight = 1,
						Position = UDim2.new(0.5, 0, 1, 10),
					}),
				}),
			})
		end)
	end)
end

return TilePlace
