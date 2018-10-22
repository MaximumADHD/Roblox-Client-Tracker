--[[
	Container for the currently opened SettingsPage
	Used to open any arbitrary page from SettingsPage with appropriate header and padding

	Props:
		string Page = The name of the SettingsPage to display. Pages can be found
			in the Src/SettingsPages folder and are referenced by name.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.Src.Util.Constants)

local StyledScrollingFrame = require(Plugin.Src.Components.StyledScrollingFrame)
local Header = require(Plugin.Src.Components.Header)
local SettingsPages = require(Plugin.Src.Components.SettingsPages.SettingsPages)

local CurrentPage = Roact.PureComponent:extend("CurrentPage")

function CurrentPage:init()
	self.state = {
		ContentSize = UDim2.new(1, 0, 1, 0),
	}
end

function CurrentPage:contentHeightChanged(newheight)
	self:setState(function(state)
		return {
		ContentSize = UDim2.new(1, 0, 0, newheight
			+ Constants.ELEMENT_PADDING + Constants.HEADER_HEIGHT + Constants.ELEMENT_PADDING),
		}
	end)
end

function CurrentPage:render()
	local page = SettingsPages[self.props.Page]
	local contentSize = self.state.ContentSize

	return Roact.createElement(StyledScrollingFrame, {
		Position = UDim2.new(0, Constants.MENU_BAR_WIDTH, 0, 0),
		Size = UDim2.new(1, -Constants.MENU_BAR_WIDTH - 5, 1, -Constants.FOOTER_HEIGHT),
		CanvasSize = contentSize,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 25),
			PaddingRight = UDim.new(0, 25),
		}),

		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 25),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Header = Roact.createElement(Header, {
			Title = self.props.Page,
			LayoutOrder = 1,
		}),

		[self.props.Page] = page and Roact.createElement(page, {
			ContentHeightChanged = function(height)
				self:contentHeightChanged(height)
			end,
			LayoutOrder = 2,
		}),
	})
end

return CurrentPage