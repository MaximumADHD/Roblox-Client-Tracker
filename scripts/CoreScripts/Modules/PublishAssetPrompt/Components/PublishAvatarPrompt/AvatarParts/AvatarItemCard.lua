--[[
	Mimics the Item Cards in the Avatar Editor and Marketplace for a Body Part or Head
	Expects the asset as a table of MeshParts if it is a Body Part
	Otherwise the asset is a single MeshPart if it is a Head
]]
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle

local AvatarPartViewport = require(script.Parent.AvatarPartViewport)
local GetFFlagSingleUploadMakeupSupport =
	require(script.Parent.Parent.Parent.Parent.Flags.GetFFlagSingleUploadMakeupSupport)

local PADDING = 5

export type Props = {
	asset: { [number]: Folder } | MeshPart | Accessory | Decal,
	assetType: Enum.AvatarAssetType?,
	LayoutOrder: number?,
	viewportSize: number?,
	bodyName: string?,
	partName: string?,
}
local function AvatarItemCard(props: Props)
	local style = useStyle()
	local font = style.Font
	local theme = style.Theme
	local asset = props.asset

	local titleStyle = font.CaptionHeader
	local titleColor = theme.TextEmphasis.Color
	if GetFFlagSingleUploadMakeupSupport() then
		assert(
			typeof(asset) == "table" or asset:IsA("MeshPart") or asset:IsA("Accessory") or asset:IsA("Decal"),
			"Assert that asset is a table, MeshPart, Accessory, or Decal"
		)
	else
		assert(
			typeof(asset) == "table" or asset:IsA("MeshPart") or asset:IsA("Accessory"),
			"Assert that asset is a table, MeshPart, or Accessory"
		)
	end
	local bodyName = props.bodyName
	local partName = props.partName
	local showTitleText
	local title: string?
	if GetFFlagSingleUploadMakeupSupport() then
		if bodyName and partName then
			title = bodyName .. "'s " .. partName
		elseif partName then
			title = partName
		end
		showTitleText = title ~= nil
	else
		showTitleText = (bodyName ~= nil) and (partName ~= nil)
		if bodyName and partName then
			title = bodyName .. "'s " .. partName
		end
	end
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
			assetType = if GetFFlagSingleUploadMakeupSupport() then props.assetType else nil,
			LayoutOrder = 1,
			viewportSize = props.viewportSize,
		}),
		TitleText = showTitleText and React.createElement("TextLabel", {
			LayoutOrder = 2,
			BackgroundTransparency = 1,
			Text = title,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			Size = UDim2.new(1, 0, 0, 50),
			TextColor3 = titleColor,
			TextWrapped = true,
			Font = titleStyle.Font,
			TextSize = titleStyle.RelativeSize * font.BaseSize,
			TextTruncate = Enum.TextTruncate.AtEnd,
		}),
	})
end

return AvatarItemCard
