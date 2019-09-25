--[[
	Container for the currently opened SettingsPage
	Used to open any arbitrary page from SettingsPage with appropriate Gpadding

	Props:
		string Page = The name of the SettingsPage to display.

	Elements can disable this page's scrolling (such as when a TextBox is focused and the mouse is inside)
	by using this component's SetScrollbarEnabled function.
]]

local ShouldUseFocusScrolling = DFFlagTextBoxesNeverSinkMouseEvents

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)
local withLocalization = UILibrary.Localizing.withLocalization

local Constants = require(Plugin.Src.Util.Constants)

local StyledScrollingFrame = UILibrary.Component.StyledScrollingFrame

local CurrentPage = Roact.PureComponent:extend("CurrentPage")

function CurrentPage:init()
	self.canvasRef = Roact.createRef()
	self.contentHeightChanged = function(newheight)
		local canvas = self.canvasRef.current
		if canvas then
			local contentSize = UDim2.new(1, 0, 0, newheight + Constants.ELEMENT_PADDING)
			canvas.CanvasSize = contentSize
			canvas.ScrollingEnabled = false

			spawn(function() 
				canvas.CanvasSize = canvas.CanvasSize + UDim2.new(0,0,0,1) 
				canvas.CanvasSize = canvas.CanvasSize - UDim2.new(0,0,0,1) 
			end)
		end
	end

	self.setScrollbarEnabled = function(enabled)
		if ShouldUseFocusScrolling then
			local canvas = self.canvasRef.current
			if canvas then
				canvas.ScrollingEnabled = false
			end
		end
	end
end

-- Scroll back up to the top every time the page changes.
function CurrentPage:didUpdate(previousProps)
	if previousProps.Page ~= self.props.Page then

		local canvas = self.canvasRef.current
		if canvas then
			canvas.CanvasPosition = Vector2.new()

			if ShouldUseFocusScrolling then
				canvas.ScrollingEnabled = true
			end
		end
	end
end

function CurrentPage:render()
	return withLocalization(function(localized)
		return Roact.createElement(StyledScrollingFrame, {
			Position = UDim2.new(0, Constants.MENU_BAR_WIDTH, 0, 0),
			Size = UDim2.new(1, -Constants.MENU_BAR_WIDTH, 1, -45),

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
		})
	end)
end

return CurrentPage