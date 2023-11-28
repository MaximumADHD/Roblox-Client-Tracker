--[[
	Mimics the Item Cards in the Avatar Editor and Marketplace for a Body Part or Head
	Expects the asset as a table of MeshParts if it is a Body Part
	Otherwise the asset is a single MeshPart if it is a Head
]]
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle

local AvatarPartViewport = require(script.Parent.AvatarPartViewport)

local PADDING = 5

export type Props = {
	asset: { [number]: Folder } | MeshPart | Accessory,
	LayoutOrder: number?,
	viewportSize: number?,
	titleText: string?,
}
local function AvatarItemCard(props: Props)
	local style = useStyle()
	local font = style.Font
	local theme = style.Theme
	local asset = props.asset
	assert(
		typeof(asset) == "table" or asset:IsA("MeshPart") or asset:IsA("Accessory"),
		"Assert that asset is a table, MeshPart, or Accessory"
	)
	return React.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		LayoutOrder = props.LayoutOrder,
		BackgroundTransparency = 1,
	}, {
		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, PADDING),
		}),
		AvatarPartViewport = React.createElement(AvatarPartViewport, {
			asset = asset,
			LayoutOrder = 1,
			viewportSize = props.viewportSize,
		}),
		TitleText = props.titleText and React.createElement("TextLabel", {
			LayoutOrder = 2,
			BackgroundTransparency = 1,
			Text = props.titleText,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			Size = UDim2.new(1, 0, 0, 50),
			TextColor3 = theme.TextDefault.Color,
			TextWrapped = true,
			Font = font.Header2.Font,
			TextSize = font.Header2.RelativeSize * font.BaseSize,
			TextTruncate = Enum.TextTruncate.AtEnd,
		}),
	})
end

return AvatarItemCard
