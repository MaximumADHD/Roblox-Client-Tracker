--[[
	Header button to toggle search options.

	Props:
		int LayoutOrder = The order in which this button appears in a layout.
		function onClick = A callback for when the user clicks this button.
]]
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

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Images = require(Plugin.Core.Util.Images)

local withTheme = ContextHelper.withTheme
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local SearchOptionsButton = Roact.PureComponent:extend("SearchOptionsButton")

function SearchOptionsButton:init()
	self.state = {
		hovered = false,
	}

	self.onClick = function()
		if self.props.onClick then
			self.props.onClick()
		end
	end

	self.mouseEnter = function()
		self:setState({
			hovered = true,
		})
	end

	self.mouseLeave = function()
		self:setState({
			hovered = false,
		})
	end
end

function SearchOptionsButton:render()
	local theme = self.props.Stylizer
	local layoutOrder = self.props.LayoutOrder
	local hovered = self.state.hovered

	return Roact.createElement("ImageButton", {
		Size = UDim2.new(0, Constants.HEADER_OPTIONSBUTTON_WIDTH,
			0, Constants.HEADER_OPTIONSBUTTON_HEIGHT),
		LayoutOrder = layoutOrder,
		BackgroundTransparency = 1,
		Image = Images.SEARCH_OPTIONS,
		ImageColor3 = hovered and theme.searchOptions.imageSelectedColor or theme.searchOptions.imageColor,
		ScaleType = Enum.ScaleType.Fit,
		ZIndex = 2,

		[Roact.Event.MouseEnter] = self.mouseEnter,
		[Roact.Event.MouseLeave] = self.mouseLeave,
		[Roact.Event.Activated] = self.onClick,
	})
end

SearchOptionsButton = withContext({
	Stylizer = ContextServices.Stylizer,
})(SearchOptionsButton)

return SearchOptionsButton
