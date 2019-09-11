--[[
	This is a simple footer for AssetConfig that can be used to cancel or publish the asset.
	This component should listen to the assetConfig's store for changes. If there is anychange inside
	the whole assetConfig. The save button will become available.

	Necessary Properties:
	Size UDim2, used to set the size for the whole component.
	CanSave, boolean, is the save button active

	tryPublish function, callback when save button is clicked.
	tryCancel function, callback when cancel button is clicked.

	Optional Properties:
	LayoutOrder number, will be checked by the layouter used inside the assetConfigFooter to
	override the Position of the whole component.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local Util = Plugin.Src.Util
local Constants = require(Util.Constants)

local UILibrary = Packages.UILibrary
local RoundTextButton = require(UILibrary.Components.RoundTextButton)
local withContext = require(Plugin.Src.ContextServices.withContext)
local AssetConfigFooter = Roact.PureComponent:extend("AssetConfigFooter")

local BUTTON_HEIGHT = 32
local BUTTON_WIDTH = 120

local PADDING = 24

function AssetConfigFooter:render()
	return withContext(function(localization, theme)
		local props = self.props
		local Size = props.Size
		local LayoutOrder = props.LayoutOrder
		local tryPublish = props.tryPublish
		local tryCancel = props.tryCancel
		local footerTheme = theme.footer
		local canSave = props.CanSave

		return Roact.createElement("Frame", {
			Size = Size,

			BackgroundTransparency = 0,
			BackgroundColor3 = footerTheme.backgroundColor,
			BorderSizePixel = 1,
			BorderColor3 = footerTheme.borderColor,

			LayoutOrder = LayoutOrder,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 0),
				PaddingLeft = UDim.new(0, PADDING),
				PaddingRight = UDim.new(0, PADDING),
				PaddingTop = UDim.new(0, 0),
			}),

			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, PADDING),
			}),

			CancelButton = Roact.createElement(RoundTextButton, {
				Style = theme.cancelButton,
				BorderMatchesBackground = false,
				Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
				Active = true,
				Name = localization:getText("Action", "Cancel"),
				TextSize = Constants.FONT_SIZE_MEDIUM,

				OnClicked = tryCancel,

				LayoutOrder = 2,
			}),

			PublishButton = Roact.createElement(RoundTextButton, {
				Style = theme.defaultButton,
				BorderMatchesBackground = true,
				Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
				Active = canSave,
				Name = localization:getText("Action", "Submit"),
				TextSize = Constants.FONT_SIZE_MEDIUM,

				OnClicked = tryPublish,

				LayoutOrder = 3,
			})
		})
	end)
end

return AssetConfigFooter