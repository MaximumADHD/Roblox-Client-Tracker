--[[
	This component handles the description rows of the assetPreview component.
	It's in charge of showing category name in the left and content in the right.

	Necessary Properties:
	position = UDim2
	leftContent = string, the name for the category.
	rightContent = string, the name of the category.

	Optional Properties:
	useBoldLine = bool, decide if we bold the underlying line or not.
	hideSeparator = bool, whether or not to hide the separator after the component
	clickCallBack = function, if nil, we won't show the arrow for clicking. Otherwise, we will call it.
	layoutOrder = num
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local withTheme = ContextHelper.withTheme

local AssetDescription = Roact.PureComponent:extend("AssetDescription")

function AssetDescription:render()
	return withTheme(function(theme)
		local props = self.props
		local position = props.position or UDim2.new(1, 0, 1, 0)
		local leftContent = props.leftContent or ""
		local rightContent = props.rightContent or ""

		local useBoldLine = props.useBoldLine or false
		local hideSeparator = props.hideSeparator or false

		local descriptionTheme = theme.assetPreview.descriptions

		local layoutOrder = props.layoutOrder

		return Roact.createElement("Frame", {
			Position = position,
			Size = UDim2.new(1, 0, 0, Constants.ASSET_DESCRIPTION_HEIGHT),

			BackgroundTransparency = 1,
			BackgroundColor3 = descriptionTheme.background,
			LayoutOrder = layoutOrder,
		},{
			-- Make sure left side and right side won't be cut off.
			UIPadding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 0),
				PaddingLeft = UDim.new(0, 1),
				PaddingRight = UDim.new(0, 1),
				PaddingTop = UDim.new(0, 0),
			}),

			LeftContent = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),

				Text = leftContent,
				Font = Constants.FONT,
				TextColor3 = descriptionTheme.leftTextColor,
				TextSize = Constants.FONT_SIZE_LARGE,
				TextXAlignment = Enum.TextXAlignment.Left,

				BackgroundTransparency = 1,

				AutoLocalize = false,
			}),

			RightContent = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),

				Text = rightContent,
				Font = Constants.FONT,
				TextColor3 = descriptionTheme.rightTextColor,
				TextSize = Constants.FONT_SIZE_LARGE,
				TextXAlignment = Enum.TextXAlignment.Right,

				BackgroundTransparency = 1,

				AutoLocalize = false,
			}),

			ButtonLine = not hideSeparator and Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 1, 3),
				Size = UDim2.new(1, 0, 0, 1),

				BorderSizePixel = useBoldLine and 1 or 0,
				BackgroundColor3 = descriptionTheme.lineColor,
				BorderColor3 = descriptionTheme.lineColor,
			})
		})
	end)
end

return AssetDescription
