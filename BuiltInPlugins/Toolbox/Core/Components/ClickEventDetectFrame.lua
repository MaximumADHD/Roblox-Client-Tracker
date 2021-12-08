--[[
	ClickEventDetectFrame
	Creates an interface for capturing clicks and scrolling inputs. On click, fires Roact.Event.Activated.
	Uses a portal to the root of modalTarget to hoist all children to the top of the UI
	Used primarily for dropdown menus to detect when to close the menu

	Optionally, you can provide windowPosition and windowSize props to create a rectangle on screen
	where clicks will not be sinked.

	Optional Props:
		UDim2 windowPosition - position of the "click through" window
		UDim2 windowSize - size of the "click through" window
		Callback [Roact.Event.Activated] - called when a user clicks anywhere on the screen except:
			on child UI
			in "clickthrough window"

		[Roact.Children] - children to pass into the portal
]]

local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)

local withModal = ContextHelper.withModal

local ClickEventDetectFrame = Roact.PureComponent:extend("ClickEventDetectFrame")

function ClickEventDetectFrame:getScrollBlocker(children)
	return Roact.createElement("ScrollingFrame", {
		Size = UDim2.new(1, 0, 1, 0),
		-- We need to have ScrollingEnabled = true for this frame for it to block
		-- But we don't want it to actually scroll, so its canvas must be same size as the frame
		ScrollingEnabled = true,
		CanvasSize = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ScrollBarThickness = 0,
	}, children)
end

function ClickEventDetectFrame:getClickDetectFrameWithWindow(windowPosition, windowSize)
	local scrollBlockerChildren = { ScrollBlocker = self:getScrollBlocker() }

	return Roact.createElement("Frame", {
		ZIndex = 10,
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		Top = Roact.createElement("ImageButton", {
			AutoButtonColor = false,
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 0, windowPosition.Y),
			[Roact.Event.Activated] = self.props[Roact.Event.Activated],
		}, scrollBlockerChildren),

		Left = Roact.createElement("ImageButton", {
			AutoButtonColor = false,
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 0, 0, windowPosition.Y),
			Size = UDim2.new(0, windowPosition.X, 0, windowSize.Y),
			[Roact.Event.Activated] = self.props[Roact.Event.Activated],
		}, scrollBlockerChildren),

		Right = Roact.createElement("ImageButton", {
			AutoButtonColor = false,
			BackgroundTransparency = 1,
			Position = UDim2.new(0, windowPosition.X + windowSize.X, 0, windowPosition.Y),
			Size = UDim2.new(1, -(windowPosition.X + windowSize.X), 0, windowSize.Y),
			[Roact.Event.Activated] = self.props[Roact.Event.Activated],
		}, scrollBlockerChildren),

		Bottom = Roact.createElement("ImageButton", {
			AutoButtonColor = false,
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 0, 0, windowPosition.Y + windowSize.Y),
			Size = UDim2.new(1, 0, 1, -(windowPosition.Y + windowSize.Y)),
			[Roact.Event.Activated] = self.props[Roact.Event.Activated],
		}, scrollBlockerChildren),

		Content = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
		}, self.props[Roact.Children]),
	})
end

function ClickEventDetectFrame:getClickDetectFrame()
	return Roact.createElement("ImageButton", {
		ZIndex = 10,
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		AutoButtonColor = false,
		[Roact.Event.Activated] = self.props[Roact.Event.Activated],
	}, {
		ScrollBlocker = self:getScrollBlocker(self.props[Roact.Children])
	})
end

function ClickEventDetectFrame:render()
	return withModal(function(modalTarget)
		local props = self.props

		local windowPosition = props.windowPosition or UDim2.new(0, 0, 0, 0)
		local windowSize = props.windowSize

		local clickEventDetectFrame
		if windowSize then
			clickEventDetectFrame = self:getClickDetectFrameWithWindow(windowPosition, windowSize)
		else
			clickEventDetectFrame = self:getClickDetectFrame()
		end

		return modalTarget and Roact.createElement(Roact.Portal, {
			target = modalTarget,
		}, {
			ClickEventDetectFrame = clickEventDetectFrame
		})
	end)
end

return ClickEventDetectFrame