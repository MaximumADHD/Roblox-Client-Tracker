return function()
	local StyleRoot = script.Parent
	local UIBloxRoot = StyleRoot.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local testStyle = require(StyleRoot.Validator.TestStyle)
	local StyleProvider = require(StyleRoot.StyleProvider)
	local StyleConsumer = require(StyleRoot.StyleConsumer)


	it("should create and destroy without errors", function()
		local renderFunction = function(style)
			expect(style).to.be.a("table")
			return Roact.createElement("Frame", {
				Size = UDim2.new(0, 100, 0, 100),
			})
		end
		local element = Roact.createElement(StyleProvider, {
			style = testStyle,
		}, {
			StyleConsumer = Roact.createElement(StyleConsumer, {
				render = renderFunction
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end

