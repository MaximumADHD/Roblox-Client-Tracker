local Plugin = script.Parent.Parent.Parent
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

local GeneralSettings = require(Plugin.Src.Components.GeneralSettings)
local TextureSettings = require(Plugin.Src.Components.TextureSettings)

type _Props = {
	Analytics : any,
	Localization : any,
	Stylizer : any,
}

type _Style = {
	ListItemPadding : number,
	Padding : number,
}

local MaterialVariantCreator = Roact.PureComponent:extend("MaterialVariantCreator")

function MaterialVariantCreator:render()
	local props : _Props = self.props
	local localization = props.Localization
	local style : _Style = props.Stylizer.MaterialVariantCreator
	local layoutOrderIterator = LayoutOrderIterator.new()

	local padding = UDim.new(0, style.Padding)

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Horizontal,
	}, {
		Scroller = Roact.createElement(ScrollingFrame, {
			AutoSizeCanvas = true,
			AutoSizeLayoutOptions = {
				Padding = style.ListItemPadding,
				SortOrder = Enum.SortOrder.LayoutOrder,
			},
			Size = UDim2.fromScale(0.5, 1)
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
			}),

			GeneralSettings = Roact.createElement(GeneralSettings, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
			}),

			TextMaps = Roact.createElement(TextLabel, {
				Text = localization:getText("CreateDialog", "TextureMaps"),
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
			}),

			TextureSettings = Roact.createElement(TextureSettings, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
			}),
		}),
	})
end


MaterialVariantCreator = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(MaterialVariantCreator)

return MaterialVariantCreator
