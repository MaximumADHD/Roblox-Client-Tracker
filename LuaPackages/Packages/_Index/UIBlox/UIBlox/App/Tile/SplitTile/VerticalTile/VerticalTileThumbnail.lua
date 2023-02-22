local SplitTileRoot = script.Parent.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local React = require(Packages.React)
local t = require(Packages.t)

local useStyle = require(Core.Style.useStyle)
local LoadableImage = require(App.Loading.LoadableImage)

local CORNER_RADIUS = UDim.new(0, 8)

export type VerticalTileThumbnailProps = {
	-- The aspect ratio of the image, expressed as a number based on width / height
	aspectRatio: number?,
	-- Whether or not the top edge of the image has rounded corners
	isTopRounded: boolean,
	-- Whether or not the bottom edge of the image has rounded corners
	isBottomRounded: boolean,
	-- The image to display in the tile
	thumbnail: string?,
}

local function VerticalTileThumbnail(props: VerticalTileThumbnailProps)
	local aspectRatio = props.aspectRatio
	local isTopRounded = props.isTopRounded
	local isBottomRounded = props.isBottomRounded
	local thumbnail = props.thumbnail

	local roundAll = isTopRounded and isBottomRounded
	local isSplit = not roundAll and (isTopRounded or isBottomRounded)

	local stylePalette = useStyle()
	local theme = stylePalette.Theme

	return React.createElement("Frame", {
		Size = if aspectRatio then UDim2.new(1, 0, aspectRatio, 0) else UDim2.new(1, 0, 1, 0),
		SizeConstraint = if aspectRatio then Enum.SizeConstraint.RelativeXX else nil,
		BackgroundTransparency = 1,
	}, {
		TopFrame = React.createElement("Frame", {
			Position = UDim2.fromScale(0, 0),
			Size = UDim2.fromScale(1, if not isSplit then 1 else 0.5),
			ClipsDescendants = true,
			BackgroundTransparency = 1,
		}, {
			TopImage = React.createElement(LoadableImage, {
				BackgroundTransparency = 1,
				Image = thumbnail,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, if not isSplit then 1 else 2),
				cornerRadius = if roundAll or isTopRounded then CORNER_RADIUS else nil,
				showFailedStateWhenLoadingFailed = true,
				useShimmerAnimationWhileLoading = true,
			}),
		}),
		BottomFrame = if isSplit
			then React.createElement("Frame", {
				Position = UDim2.fromScale(0, 0.5),
				Size = UDim2.fromScale(1, 0.5),
				ClipsDescendants = true,
				BackgroundTransparency = 1,
			}, {
				BottomImage = React.createElement(LoadableImage, {
					BackgroundTransparency = 1,
					Image = thumbnail,
					Position = UDim2.fromScale(0, -1),
					Size = UDim2.fromScale(1, 2),
					cornerRadius = if roundAll or isBottomRounded then CORNER_RADIUS else nil,
					showFailedStateWhenLoadingFailed = true,
					useShimmerAnimationWhileLoading = true,
				}),
			})
			else nil,
	})
end

return VerticalTileThumbnail
