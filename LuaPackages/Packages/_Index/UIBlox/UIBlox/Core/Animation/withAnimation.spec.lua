return function()
	local Navigation = script.Parent
	local App = Navigation.Parent
	local UIBloxRoot = App.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)

	local withAnimation = require(script.Parent.withAnimation)

	local lastValues = nil
	local component = function(props)
		return withAnimation(props, function(values)
			lastValues = values
			return Roact.createElement("Frame")
		end)
	end

	it("should create and destroy without errors", function()
		local element = Roact.createElement(component)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should mount contents using initial values", function()
		lastValues = nil
		local element = Roact.createElement(component, {
			animatedValue = 5,
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
		expect(lastValues.animatedValue).to.equal(5)
	end)
end
