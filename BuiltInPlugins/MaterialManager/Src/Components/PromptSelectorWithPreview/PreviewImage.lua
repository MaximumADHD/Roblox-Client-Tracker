local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization
local withContext = ContextServices.withContext

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local TextLabel = UI.Decoration.TextLabel
local Image = UI.Decoration.Image

local Components = Plugin.Src.Components
local PreviewToolbarButton = require(Components.PromptSelectorWithPreview.PreviewToolbarButton)
local LoadingImage = require(Plugin.Src.Components.LoadingImage)

local getFFlagMaterialManagerVariantCreatorOverhaul = require(Plugin.Src.Flags.getFFlagMaterialManagerVariantCreatorOverhaul)

export type Props = {
	HasSelection: boolean,
	ImageId: string,
	IsTempId: boolean,
	ClearSelection: () -> (),
	OpenExpandedPreview: () -> (),
}

type _Props = Props & {
	Stylizer: any,
	Localization: any,
}

type _Style = {
	ExpandIcon: string,
	ClearIcon: string,
	ImportIcon: string,

	PreviewBorderColor: Color3,
	ImportImageBackground: Color3,
	ButtonIconColor: Color3,

	ToolbarTransparency: number,
	ToolbarBackgroundColor: Color3,
	ToolbarHeight: number,
	PreviewSize: number,

	TextHeight: number,
}

local PreviewImage = Roact.PureComponent:extend("PreviewImage")

function PreviewImage:init()
	self.state = {
		promptSelectionHovered = false,
	}

	self.onPromptSelectionHover = function()
		self:setState({
			promptSelectionHovered = true,
		})
	end

	self.onPromptSelectionHoverEnd = function()
		self:setState({
			promptSelectionHovered = false,
		})
	end
end

function PreviewImage:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.PromptSelectorWithPreview
	local localization = props.Localization
	local state = self.state

	local hasSelection = props.HasSelection
	local shouldShowToolbar = (hasSelection and state.promptSelectionHovered) and true or false

	return Roact.createElement("ImageLabel", {
		ZIndex = 1,
		Size = UDim2.new(0, style.PreviewSize, 0, style.PreviewSize),
		Image = "",
		BorderSizePixel = 1,
		BorderColor3 = style.PreviewBorderColor,
		BackgroundColor3 = style.ImportImageBackground,
		[Roact.Event.MouseEnter] = self.onPromptSelectionHover,
		[Roact.Event.MouseLeave] = self.onPromptSelectionHoverEnd,
	}, {
		PreviewNoImageSign = not hasSelection and Roact.createElement("Frame", {
			ZIndex = 2,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			NoImageText = Roact.createElement(TextLabel, {
				Size = UDim2.new(1, 0, 1, 0),
				TextXAlignment = Enum.TextXAlignment.Center,
				TextSize = style.TextHeight,
				Text = localization:getText("CreateDialog", "NoImageSelected"),
				TextWrapped = true,
				TextColor = style.ButtonIconColor,
			}),
		}),

		PreviewContentContainer = hasSelection and Roact.createElement("Frame", {
			ZIndex = 2,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			PreviewContent = if getFFlagMaterialManagerVariantCreatorOverhaul() and props.IsTempId == true then 
				Roact.createElement(LoadingImage, {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					Image = props.ImageId,
					ScaleType = Enum.ScaleType.Fit,
				})
			elseif getFFlagMaterialManagerVariantCreatorOverhaul() and props.IsTempId == false then 
				Roact.createElement(Image, {
					Size = UDim2.new(1, 0, 1, 0),
					Image = props.ImageId,
				})
			else
				Roact.createElement(LoadingImage, {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					Image = props.ImageId,
					ScaleType = Enum.ScaleType.Fit,
				}),
		}),

		Toolbar = Roact.createElement("Frame", {
			ZIndex = 3,
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.new(0, 0, 1, 0),
			Size = UDim2.new(1, 0, 0, style.ToolbarHeight),
			Visible = shouldShowToolbar,
			BackgroundTransparency = style.ToolbarTransparency,
			BorderSizePixel = 0,
			BackgroundColor3 = style.ToolbarBackgroundColor,
		}, {
			ExpandPreview = Roact.createElement(PreviewToolbarButton, {
				Icon = style.ExpandIcon,
				[Roact.Event.Activated] = props.OpenExpandedPreview,
			}),

			ClearButton = Roact.createElement(PreviewToolbarButton, {
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, 0, 0, 0),
				Icon = style.ClearIcon,
				[Roact.Event.Activated] = props.ClearSelection,
			}),
		}),
	})
end


PreviewImage = withContext({
	Stylizer = Stylizer,
	Localization = Localization,
})(PreviewImage)

return PreviewImage
