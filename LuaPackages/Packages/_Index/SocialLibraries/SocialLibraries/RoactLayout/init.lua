-- RoactLayout.lua
-- Index based block/div creation for blocking out high level components in a layout.

--[[
	This library is designed to reduce the visual noise when creating views/layouts
	that are composed of multiple high level components as a RoactLayout outline.

	UIListLayout and LayoutOrder-ing is implied from the order of the RoactLayout array.

		function render(props)
			return Roact.createElement("Frame", props, RoactLayout.vertical({
				RoactLayout.insert(
					UDim2.new(1, 0, 0, 72),
					Roact.createElement(TopBar)
				),

				RoactLayout.insert(
					UDim2.new(1, 0, 0, 100),
					Roact.createElement("TextLabel", {
						Text = "Center",
					})
				),

				RoactLayout.insert(
					UDim2.new(1, 0, 0, 30),
					Roact.createElement(BottomBar)
				),
			}))
		end
]]

return {
	vertical = require(script.vertical),
	insert = require(script.insert),
}
