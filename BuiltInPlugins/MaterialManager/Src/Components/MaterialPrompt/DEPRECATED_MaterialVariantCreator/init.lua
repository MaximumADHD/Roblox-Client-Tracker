local Plugin = script.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel
local ScrollingFrame = UI.ScrollingFrame

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local GeneralSettings = require(Plugin.Src.Components.MaterialPrompt.DEPRECATED_MaterialVariantCreator.GeneralSettings)
local TextureSettings = require(Plugin.Src.Components.MaterialPrompt.DEPRECATED_MaterialVariantCreator.TextureSettings)
local AdditionalPropertiesSettings = require(Plugin.Src.Components.MaterialPrompt.DEPRECATED_MaterialVariantCreator.AdditionalPropertiesSettings)
local MaterialPreview = require(Plugin.Src.Components.MaterialPreview)
local DEPRECATED_MaterialPreview = require(Plugin.Src.Components.DEPRECATED_MaterialPreview)

local FFlagMaterialManagerSideBarHide = game:GetFastFlag("MaterialManagerSideBarHide")
local getFFlagMaterialManagerGridOverhaul = require(Plugin.Src.Flags.getFFlagMaterialManagerGridOverhaul)

export type Props = {
	ErrorName: string?,
	ErrorBaseMaterial: string?,
	ErrorStudsPerTile: string?,
	SetStudsPerTileError: (string?) -> (),
	MaterialVariantTemp: MaterialVariant,
}

type _Props = Props & {
	Material : _Types.Material?,
	Analytics : any,
	Localization : any,
	Stylizer : any,
}

type _Style = {
	Background: Color3,
	ListItemPadding: number,
	Padding: number,
	TextFont: Enum.Font,
	SettingsSize: UDim2,
	PreviewSize: UDim2,
}

local MaterialVariantCreator = Roact.PureComponent:extend("MaterialVariantCreator")

function MaterialVariantCreator:render()
	local props: _Props = self.props
	local localization = props.Localization
	local style: _Style = props.Stylizer.MaterialVariantCreator
	local layoutOrderIterator = LayoutOrderIterator.new()

	local padding = UDim.new(0, style.Padding)
	local materialVariant = props.MaterialVariantTemp

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Horizontal,
	}, {
		Scroller = Roact.createElement(ScrollingFrame, {
			AutoSizeCanvas = true,
			AutoSizeLayoutOptions = {
				Padding = style.ListItemPadding,
				SortOrder = Enum.SortOrder.LayoutOrder,
			},
			LayoutOrder = 1,
			Size = style.SettingsSize,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = padding,
				PaddingTop = padding,
				-- PaddingRight omitted to prevent the layout from collapsing prematurely.
				PaddingBottom = padding,
			}),

			TextGeneral = Roact.createElement(TextLabel, {
				Text = localization:getText("CreateDialog", "General"),
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Font = style.TextFont,
			}),

			GeneralSettings = Roact.createElement(GeneralSettings, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				ErrorName = props.ErrorName,
				ErrorBaseMaterial = props.ErrorBaseMaterial,
			}),

			TextMaps = Roact.createElement(TextLabel, {
				Text = localization:getText("CreateDialog", "TextureMaps"),
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Font = style.TextFont,
			}),

			TextureSettings = Roact.createElement(TextureSettings, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
			}),

			TextAdditional = Roact.createElement(TextLabel, {
				Text = localization:getText("CreateDialog", "AdditionalProperties"),
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Font = style.TextFont,
			}),

			AdditionalPropertiesSettings = Roact.createElement(AdditionalPropertiesSettings, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				ErrorStudsPerTile = props.ErrorStudsPerTile,
				setStudsPerTileError = props.SetStudsPerTileError,
			}),
		}),

		MaterialPreview = Roact.createElement(if getFFlagMaterialManagerGridOverhaul() then MaterialPreview else DEPRECATED_MaterialPreview, {
			BackgroundColor = style.Background,
			DisableZoom = true,
			MaterialVariant = if getFFlagMaterialManagerGridOverhaul() then materialVariant else materialVariant.Name,
			Material = materialVariant.BaseMaterial,
			InitialDistance = if FFlagMaterialManagerSideBarHide then 8 else 12,
			LayoutOrder = 2,
			Size = style.PreviewSize,
		})
	})
end


MaterialVariantCreator = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(MaterialVariantCreator)

return MaterialVariantCreator
