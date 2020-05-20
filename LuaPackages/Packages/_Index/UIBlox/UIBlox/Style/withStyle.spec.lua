return function()
	local StyleRoot = script.Parent
	local UIBloxRoot = StyleRoot.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local StyleProvider = require(StyleRoot.StyleProvider)
	local withStyle = require(StyleRoot.withStyle)
	local testStyle = require(StyleRoot.Validator.TestStyle)

	it("should create and destroy without errors", function()
		local someTestElement = Roact.Component:extend("someTestElement")
		-- luacheck: ignore unused argument self
		function someTestElement:render()
			return withStyle(function(style)
				expect(style).to.be.a("table")
				return Roact.createElement("Frame", {
					Size = UDim2.new(0, 100, 0, 100),
				})
			end)
		end

		local element = Roact.createElement(StyleProvider, {
			style = testStyle,
		}, {
			someTestElement = Roact.createElement(someTestElement),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end