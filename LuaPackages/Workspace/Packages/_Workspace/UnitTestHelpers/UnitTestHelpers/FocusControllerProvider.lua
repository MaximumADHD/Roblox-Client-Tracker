local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)
local Focusable = RoactGamepad.Focusable
local t = require(CorePackages.Packages.t)

local FocusControllerProvider = Roact.Component:extend("FocusControllerProvider")

FocusControllerProvider.validateProps = t.strictInterface({
	captureFocusOnMount = t.boolean,
	[Roact.Children] = t.table,
	focusController = t.optional(t.table),
})

function FocusControllerProvider:init()
	self.focusController = self.props.focusController or RoactGamepad.createFocusController()
end

function FocusControllerProvider:render()
	return Roact.createElement(Focusable.Frame, {
		focusController = self.focusController,

		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
	}, self.props[Roact.Children])
end

function FocusControllerProvider:didMount()
	if self.props.captureFocusOnMount then
		self.focusController.captureFocus()
	end
end

return FocusControllerProvider
