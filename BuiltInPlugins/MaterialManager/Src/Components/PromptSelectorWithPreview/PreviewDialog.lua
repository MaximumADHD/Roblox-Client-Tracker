local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Container = UI.Container
local TextLabel = UI.Decoration.TextLabel
local StudioUI = Framework.StudioUI
local Dialog = StudioUI.Dialog
local LayoutOrderIterator = Framework.Util.LayoutOrderIterator

local LoadingImage = require(Plugin.Src.Components.LoadingImage)

type Array<T> = { [number]: T }

type _ExternalProps = {
	PreviewTitle: string?,
	ImageId: string,
}

type _InternalProps = {
	OnClose: () -> (),
	Metadata: Array<string>,
}

export type Props = _ExternalProps & _InternalProps

type _Props = Props & {
	Stylizer: any,
}

type _Style = {
	PreviewBackgroundColor: Color3,
	PreviewBorderColor: Color3,

	TextHeight: number,
	
	ExpandedPreviewDefaultSize: Vector2,
	ExpandedPreviewMinSize: Vector2,
	ExpandedPreviewPadding: UDim,
}

local PreviewDialog = Roact.PureComponent:extend("PreviewDialog")

function PreviewDialog:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.PromptSelectorWithPreview

	local previewTitle = props.PreviewTitle or ""
	local metadata = props.Metadata or {}

	local padding = 4
	local imageInset = #metadata > 0 and (padding * 2 + style.TextHeight) or 0

	local layoutOrderIterator = LayoutOrderIterator.new()

	local contents = {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, padding),
		}),

		PreviewContentContainer = Roact.createElement("Frame", {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(1, 0, 1, -imageInset),
			BackgroundColor3 = style.PreviewBackgroundColor,
			BorderColor3 = style.PreviewBorderColor,
		}, {
			PreviewContent = Roact.createElement(LoadingImage, {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Image = props.ImageId,
				ScaleType = Enum.ScaleType.Fit,
			}),
		}),

		-- Double the padding between the preview and filename
		EmptyRow = Roact.createElement(Container, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(1, 0, 0, 0),
		}),
	}

	for index, text in ipairs(metadata) do
		contents["Metadata_" .. tostring(index)] = Roact.createElement(TextLabel, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(1, 0, 0, style.TextHeight),
			Text = text,
			TextSize = style.TextHeight,
			TextXAlignment = Enum.TextXAlignment.Left,
		})
	end

	return Roact.createElement(Dialog, {
		Title = previewTitle,
		Size = style.ExpandedPreviewDefaultSize,
		MinSize = style.ExpandedPreviewMinSize,
		Resizable = true,
		Enabled = true,
		Modal = true,
		OnClose = props.OnClose,
	}, {
		Background = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = style.PreviewBackgroundColor,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingTop = style.ExpandedPreviewPadding,
				PaddingBottom = style.ExpandedPreviewPadding,
				PaddingLeft = style.ExpandedPreviewPadding,
				PaddingRight = style.ExpandedPreviewPadding,
			}),

			Container = Roact.createElement(Container, {}, contents),
		}),
	})
end


PreviewDialog = withContext({
	Stylizer = Stylizer,
})(PreviewDialog)

return PreviewDialog
