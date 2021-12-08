--[[
	This component is responsible for configging asset's gernre field.

	Props:
	onDropDownSelect, function, will return current selected item if selected.
]]
local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")

local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)
local Framework = require(Libs.Framework)

local DropdownMenu = require(Plugin.Core.Components.DropdownMenu)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local AssetConfigUtil = require(Util.AssetConfigUtil)

local withTheme = ContextHelper.withTheme
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local ConfigGenre = Roact.PureComponent:extend("ConfigGenre")

local DROP_DOWN_WIDTH = 220
local DROP_DOWN_HEIGHT = 38

if (not FFlagToolboxRemoveWithThemes) then
	function ConfigGenre:init(props)
		self.state = {
		}
	end
end

function ConfigGenre:render()
	if FFlagToolboxRemoveWithThemes then
		return self:renderContent(nil)
	else
		return withTheme(function(theme)
			return self:renderContent(theme)
		end)
	end
end

function ConfigGenre:renderContent(theme)
	local props = self.props
	local state = self.state
	if FFlagToolboxRemoveWithThemes then
		theme = props.Stylizer
	end

	local Title = props.Title
	local LayoutOrder = props.LayoutOrder
	local TotalHeight = props.TotalHeight

	local genres = props.genres or {}
	local genreIndex = AssetConfigUtil.getGenreIndex(genres[1])
	local genreTypes = AssetConfigUtil.getGenreTypes()

	local onDropDownSelect = props.onDropDownSelect
	local setDropdownHeight = props.setDropdownHeight

	local publishAssetTheme = theme.publishAsset

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, TotalHeight),

		BackgroundTransparency = 1,
		BorderSizePixel = 0,

		LayoutOrder = LayoutOrder,

		[Roact.Ref] = props[Roact.Ref],
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 0),
		}),

		Title = Roact.createElement("TextLabel", {
			Size = UDim2.new(0, AssetConfigConstants.TITLE_GUTTER_WIDTH, 1, 0),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			Text = Title,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextSize = Constants.FONT_SIZE_TITLE,
			TextColor3 = publishAssetTheme.titleTextColor,
			Font = Constants.FONT,

			LayoutOrder = 1,
		}),

		DropDown = Roact.createElement(DropdownMenu, {
			Size = UDim2.new(0, DROP_DOWN_WIDTH, 0, DROP_DOWN_HEIGHT),
			visibleDropDownCount = 5,
			selectedDropDownIndex = genreIndex,

			items = genreTypes,
			fontSize = Constants.FONT_SIZE_LARGE,
			onItemClicked = onDropDownSelect,

			setDropdownHeight = setDropdownHeight,

			LayoutOrder = 2,
		})
	})
end

if FFlagToolboxRemoveWithThemes then
	ConfigGenre = withContext({
		Stylizer = ContextServices.Stylizer,
	})(ConfigGenre)
end

return ConfigGenre