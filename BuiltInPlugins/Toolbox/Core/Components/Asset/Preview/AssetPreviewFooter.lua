--[[
	A footer for AssetPreview that may display additional information based on the asset.

	Required Props:
		table AssetData: The asset data from Rodux
		Localization Localization: A Localization ContextItem, which is provided via withContext.
	Optional Props:
		number LayoutOrder: LayoutOrder of the component.
]]
local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local Framework = require(Packages.Framework)
local FFlagDevFrameworkRemoveFitFrame = Framework.SharedFlags.getFFlagDevFrameworkRemoveFitFrame()
local FFlagToolboxRearrangeAssetPreviewLayout = game:GetFastFlag("ToolboxRearrangeAssetPreviewLayout")

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local TextLabel = Framework.UI.Decoration.TextLabel
local Container = Framework.UI.Container
local Pane = Framework.UI.Pane

local AssetPreviewFooter = Roact.PureComponent:extend("AssetPreviewFooter")

function AssetPreviewFooter:render()
	local props = self.props
	local assetTypeId = props.AssetData.Asset.TypeId
	local creator = props.AssetData.Creator
	local localization = props.Localization
	local fitMaxWidth = props.FitMaxWidth
	local layoutOrder = props.LayoutOrder

	local isPlugin = assetTypeId == Enum.AssetType.Plugin.Value
	local isCreatedByRoblox = creator.Id == 1 and creator.Type == Enum.CreatorType.User.Value

	if isCreatedByRoblox or not isPlugin then
		return nil
	end

	local size
	if FFlagDevFrameworkRemoveFitFrame then
		size = if fitMaxWidth then UDim2.fromOffset(fitMaxWidth, 0) else UDim2.fromScale(1, 0)
	end

	if FFlagToolboxRearrangeAssetPreviewLayout then
		return Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = layoutOrder,
			Size = UDim2.fromScale(1, 0),
		}, {
			Text = Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.Y,
				TextWrapped = true,
				Size = UDim2.fromScale(1, 0),
				Style = "Body",
				TextTransparency = 0.5,
				TextXAlignment = Enum.TextXAlignment.Center,
				Text = localization:getText("AssetPreview", "PluginNotice"),
			}),
		})
	else
		return Roact.createElement(Container, {
			LayoutOrder = layoutOrder,
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
		}, {
			Text = Roact.createElement(TextLabel, {
				Text = localization:getText("AssetPreview", "PluginNotice"),
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.fromScale(0.5, 0),
				FitWidth = if FFlagDevFrameworkRemoveFitFrame then nil else true,
				TextWrapped = true,
				FitMaxWidth = if FFlagDevFrameworkRemoveFitFrame then nil else fitMaxWidth,
				Size = if FFlagDevFrameworkRemoveFitFrame then size else nil,
				TextTransparency = 0.5,
				TextXAlignment = Enum.TextXAlignment.Center,
				AutomaticSize = Enum.AutomaticSize.Y,
				TextSize = 14,
			}),
		})
	end
end

AssetPreviewFooter = withContext({
	Localization = ContextServices.Localization,
})(AssetPreviewFooter)

return AssetPreviewFooter
