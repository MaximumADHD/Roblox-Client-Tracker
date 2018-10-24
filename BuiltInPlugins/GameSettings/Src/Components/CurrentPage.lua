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
	self.canvasRef = Roact.createRef()
	self.contentHeightChanged = function(newheight)
		local canvas = self.canvasRef.current
		local contentSize = UDim2.new(1, 0, 0, newheight
			+ Constants.ELEMENT_PADDING + Constants.HEADER_HEIGHT + Constants.ELEMENT_PADDING)
		canvas.CanvasSize = contentSize
	end
end

function CurrentPage:render()
	local page = SettingsPages[self.props.Page]

	return Roact.createElement(StyledScrollingFrame, {
		Position = UDim2.new(0, Constants.MENU_BAR_WIDTH, 0, 0),
		Size = UDim2.new(1, -Constants.MENU_BAR_WIDTH - 5, 1, -Constants.FOOTER_HEIGHT),

		[Roact.Ref] = self.canvasRef,
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
			ContentHeightChanged = self.contentHeightChanged,
			LayoutOrder = 2,
		}),
	})
end

return CurrentPage