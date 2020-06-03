return function()
	local Otter = require(script.Parent.Parent.Parent.Parent.Parent.Otter)
	local Roact = require(script.Parent.Parent.Parent.Parent.Parent.Roact)
	local StackViewCard = require(script.Parent.Parent.StackViewCard)

	it("should mount its renderProp and pass it scene", function()
		local didRender = false
		local testScene = {
			isActive = true,
			index = 1,
		}

		local renderedScene = nil
		local element = Roact.createElement(StackViewCard, {
			renderScene = function(theScene)
				renderedScene = theScene
				return Roact.createElement(function()
					didRender = true -- verifies component is attached to tree
				end)
			end,
			scene = testScene,
			position = Otter.createSingleMotor(1),
			navigation = {
				state = {
					index = 1,
				}
			}
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)

		expect(renderedScene).to.equal(testScene)
		expect(didRender).to.equal(true)
	end)
end
