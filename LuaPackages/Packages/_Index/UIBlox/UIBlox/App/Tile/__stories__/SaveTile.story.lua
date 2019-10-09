local TileRoot = script.Parent.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local UIBloxStyle = require(Packages.UIBloxResources.UIBloxStyle)

local SaveTile = require(TileRoot.SaveTile.SaveTile)
local StyleProvider = require(UIBlox.Style.StyleProvider)
local withStyle = require(UIBlox.Style.withStyle)
local Images = require(UIBlox.ImageSet.Images)

local SaveTileStory = Roact.PureComponent:extend("SaveTileStory")

function SaveTileStory:render()
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		return Roact.createElement("Frame", {
			BackgroundColor3 = theme.BackgroundDefault.Color,
			BackgroundTransparency = theme.BackgroundDefault.Transparency,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 20),
				PaddingTop = UDim.new(0, 20),
			}),

			UIGridLayout = Roact.createElement("UIGridLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				FillDirectionMaxCells = 7,
				SortOrder = Enum.SortOrder.LayoutOrder,
				CellPadding = UDim2.new(0, 20, 0, 20),
				CellSize = UDim2.new(0, 150, 0, 230),
			}),

			PrimaryUseCase = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 150, 0, 150),
			}, {
				PrimaryUseCaseSaveTile = Roact.createElement(SaveTile, {
					onActivated = function() end,
				}),
			}),

			OverriddenProps = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 150, 0, 150),
			}, {
				OverriddenPropsSaveTile = Roact.createElement(SaveTile, {
					onActivated = function() end,
					thumbnail = Images["icons/itemOwned"],
					thumbnailSize = UDim2.new(0, 100, 0, 100),
					hasRoundedCorners = true,
				}),
			}),
		})
	end)
end

return function(target)
	local styleProvider = Roact.createElement(StyleProvider, {
		style = UIBloxStyle,
	}, {
		Roact.createElement(SaveTileStory)
	})

	local handle = Roact.mount(styleProvider, target, "SaveTileStory")
	return function()
		Roact.unmount(handle)
	end
end