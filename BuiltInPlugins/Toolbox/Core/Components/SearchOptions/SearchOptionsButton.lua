--[[
	Header button to toggle search options.

	Props:
		int LayoutOrder = The order in which this button appears in a layout.
		function onClick = A callback for when the user clicks this button.
]]
local FFlagToolboxShowIdVerifiedFilter = game:GetFastFlag("ToolboxShowIdVerifiedFilter")
local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)

local Constants = require(Plugin.Core.Util.Constants)
local Images = require(Plugin.Core.Util.Images)

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

	-- Change color of search option dialog launching button depending on state
	local imageColor
	if FFlagToolboxShowIdVerifiedFilter then
		-- If the search is filtered (to id verified assets), we use the selected blue color
		-- to indicate that when the mouse is off of the button.
		imageColor = if hovered
			then theme.searchOptions.imageHoveredColor
			else if self.props.searchIsFiltered
				then theme.searchOptions.imageSelectedColor
				else theme.searchOptions.imageColor
	else
		imageColor = hovered and theme.searchOptions.imageSelectedColor or theme.searchOptions.imageColor
	end

	return Roact.createElement("ImageButton", {
		Size = UDim2.new(0, Constants.HEADER_OPTIONSBUTTON_WIDTH, 0, Constants.HEADER_OPTIONSBUTTON_HEIGHT),
		LayoutOrder = layoutOrder,
		BackgroundTransparency = 1,
		Image = Images.SEARCH_OPTIONS,
		ImageColor3 = imageColor,
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
