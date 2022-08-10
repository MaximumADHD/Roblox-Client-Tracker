local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local Stylizer = Framework.Style.Stylizer

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local UI = Framework.UI
local Button = UI.Button
local Image = UI.Decoration.Image
local Pane = UI.Pane

local ClearMaterial = require(Plugin.Src.Actions.ClearMaterial)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local MaterialPreview = require(Plugin.Src.Components.MaterialPreview)

export type Props = {
	LayoutOrder: number?,
	MockMaterial: _Types.Material?,
}

type _Props = Props & { 
	Analytics: any,
	dispatchClearMaterial: () -> (),
	Localization: any,
	Material: _Types.Material?,
	Stylizer: any,
}

type _Style = {
	AdditionalLabelSize: UDim2,
	AdditionalTextSize: UDim2,
	ButtonPosition: UDim2,
	ButtonSize: UDim2,
	ButtonStyle: string,
	Close: _Types.Image,
	CreateVariant: _Types.Image,
	Delete: _Types.Image,
	DropdownSize: UDim2,
	Edit: _Types.Image,
	HeaderBackground: Color3,
	HeaderFont: Enum.Font,
	HeaderSize: UDim2,
	ImagePosition: UDim2,
	ImageSize: UDim2,
	NameLabelSizeBuiltIn: UDim2,
	NameLabelSizeVariant: UDim2,
	NoTexture: string,
	LabelRowSize: UDim2,
	OverrideSize: UDim2,
	Padding: number,
	SectionHeaderTextSize: number,
	TextureLabelSize: UDim2,
	TextureRowSize: UDim2,
	TextureSize: UDim2,
	TitleTextSize: number,
}
local MaterialHeader = Roact.PureComponent:extend("MaterialHeader")

function MaterialHeader:init()
	self.onClose = function()
		local props: _Props = self.props

		props.dispatchClearMaterial()
	end
end

function MaterialHeader:render()
	local props: _Props = self.props
	local style = props.Stylizer.MaterialDetails
	local material = props.Material

	if not material then
		return Roact.createElement(Pane)
	end

	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		Size = style.HeaderSize,
	}, {
		Preview = Roact.createElement(MaterialPreview, {
			BackgroundColor = style.HeaderBackground,
			DisableZoom = true,
			LayoutOrder = 1,
			Material = material.Material,
			MaterialVariant = material.MaterialVariant,
			Position = UDim2.fromOffset(0, 0),
			Size = style.MaterialPreviewSize,
		}),
		Close = Roact.createElement(Button, {
				OnClick = self.onClose,
				Position = style.ButtonPosition,
				Size = style.ButtonSize,
				Style = style.ButtonStyle,
				ZIndex = 2,
			}, {
				Image = Roact.createElement(Image, {
					Style = style.Close,
					Size = style.ImageSize,
					Position = style.ImagePosition,
				})
			}),
	})
end

MaterialHeader = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(MaterialHeader)

return RoactRodux.connect(
	function(state: MainReducer.State, props: Props)
		return {
			Material = props.MockMaterial or state.MaterialBrowserReducer.Material
		}
	end,
	function(dispatch)
		return {
			dispatchClearMaterial = function()
				dispatch(ClearMaterial())
			end,
		}
	end
)(MaterialHeader)
