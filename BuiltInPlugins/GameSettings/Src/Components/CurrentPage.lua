--[[
	Container for the currently opened SettingsPage
	Used to open any arbitrary page from SettingsPage with appropriate header and padding

	Props:
		string Page = The name of the SettingsPage to display. Pages can be found
			in the Src/SettingsPages folder and are referenced by name.

	Elements can disable this page's scrolling (such as when a TextBox is focused and the mouse is inside)
	by using this component's SetScrollbarEnabled function.
]]

local FFlagGameSettingsReorganizeHeaders = settings():GetFFlag("GameSettingsReorganizeHeaders")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local UILibrary = require(Plugin.UILibrary)
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local Analytics = require(Plugin.Src.Util.Analytics)

local Header = require(Plugin.Src.Components.Header)
local SettingsPages = require(Plugin.Src.Components.SettingsPages.SettingsPages)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)

local StyledScrollingFrame = UILibrary.Component.StyledScrollingFrame

local CurrentPage = Roact.PureComponent:extend("CurrentPage")

function CurrentPage:init()
	self.canvasRef = Roact.createRef()
	self.contentHeightChanged = function(newheight)
		local canvas = self.canvasRef.current
		if canvas then
			local contentSize
			if FFlagGameSettingsReorganizeHeaders then
				contentSize = UDim2.new(1, 0, 0, newheight + DEPRECATED_Constants.ELEMENT_PADDING)
			else
				contentSize = UDim2.new(1, 0, 0, newheight
					+ DEPRECATED_Constants.ELEMENT_PADDING + DEPRECATED_Constants.HEADER_HEIGHT + DEPRECATED_Constants.ELEMENT_PADDING)
			end
			canvas.CanvasSize = contentSize
		end
	end

	self.setScrollbarEnabled = function(enabled)
		local canvas = self.canvasRef.current
		if canvas then
			canvas.ScrollingEnabled = enabled
		end
	end
end

-- Scroll back up to the top every time the page changes.
function CurrentPage:didUpdate(previousProps)
	if previousProps.Page ~= self.props.Page then
		Analytics.onTabChangeEvent(previousProps.Page, self.props.Page)

		local canvas = self.canvasRef.current
		if canvas then
			canvas.CanvasPosition = Vector2.new()
			canvas.ScrollingEnabled = true
		end
	end
end

function CurrentPage:render()
	return withLocalization(function(localized)
		local page = SettingsPages[self.props.Page]

		return Roact.createElement(StyledScrollingFrame, {
			Position = UDim2.new(0, DEPRECATED_Constants.MENU_BAR_WIDTH, 0, 0),
			Size = UDim2.new(1, -DEPRECATED_Constants.MENU_BAR_WIDTH, 1, -DEPRECATED_Constants.FOOTER_HEIGHT),

			[Roact.Ref] = self.canvasRef,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 25),
				PaddingRight = UDim.new(0, 25),
			}),

			Layout = (not FFlagGameSettingsReorganizeHeaders) and
			Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, 25),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			Header = (not FFlagGameSettingsReorganizeHeaders) and
			Roact.createElement(Header, {
				Title = localized.Category[self.props.Page],
				LayoutOrder = 1,
			}),

			[self.props.Page] = page and Roact.createElement(page, {
				ContentHeightChanged = self.contentHeightChanged,
				SetScrollbarEnabled = self.setScrollbarEnabled,
				LayoutOrder = 2,
			}),
		})
	end)
end

return CurrentPage