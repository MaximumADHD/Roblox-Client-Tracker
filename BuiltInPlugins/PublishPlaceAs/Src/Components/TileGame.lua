local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Theming = require(Plugin.Src.ContextServices.Theming)
local UILibrary = require(Plugin.Packages.UILibrary)
local Localizing = UILibrary.Localizing
local Separator = UILibrary.Component.Separator

local DFFlagPreloadAsyncCallbackFunction = settings():getFFlag("PreloadAsyncCallbackFunction")
local FFlagEnableRbxThumbAPI = settings():GetFFlag("EnableRbxThumbAPI")

local ContentProvider = game:GetService("ContentProvider")

local ICON_SIZE = 150
local TILE_FOOTER_SIZE = 40

local TileGame = Roact.PureComponent:extend("TileGame")

function TileGame:init()
	self.state = {
		assetFetchStatus = nil,		
	}

	self.isMounted = false

	self.thumbnailUrl = string.format("rbxthumb://type=GameIcon&id=%i&w=%i&h=%i", self.props.Id, ICON_SIZE, ICON_SIZE)
end

function TileGame:didMount()
	self.isMounted = true
	if DFFlagPreloadAsyncCallbackFunction and FFlagEnableRbxThumbAPI then
		spawn(function()
			local asset = { self.thumbnailUrl }
			local function setStatus(contentId, status)
				if self.isMounted then
					self:setState({
						assetFetchStatus = status
					})
				end
			end
			ContentProvider:PreloadAsync(asset, setStatus)
		end)
	end
end

function TileGame:willUnmount()
	self.isMounted = false
end

function TileGame:render()
	return Theming.withTheme(function(theme)
		return Localizing.withLocalization(function(localizing)
			local props = self.props
			
			local name = props.Name
			local layoutOrder = props.LayoutOrder or 0
			local onActivated = props.OnActivated

			return Roact.createElement("ImageButton", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE + TILE_FOOTER_SIZE),
				LayoutOrder = layoutOrder,

				[Roact.Event.Activated] = onActivated
			}, {
				Icon = Roact.createElement("ImageLabel", {
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(1, 0, 1, -TILE_FOOTER_SIZE),
					Image = self.state.assetFetchStatus == Enum.AssetFetchStatus.Success and self.thumbnailUrl or theme.icons.thumbnailPlaceHolder,
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
