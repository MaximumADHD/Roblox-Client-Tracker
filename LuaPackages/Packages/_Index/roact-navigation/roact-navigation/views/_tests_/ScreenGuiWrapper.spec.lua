return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
	local ScreenGuiWrapper = require(script.Parent.Parent.ScreenGuiWrapper)

	it("should mount the inner component if visible", function()
		local innerComponentProps = nil

		local innerComponent = function(props)
			innerComponentProps = props
			return Roact.createElement("Frame", {
				Size = UDim2.new(0, 50, 0, 50)
			})
		end

		local instance = Roact.mount(Roact.createElement(ScreenGuiWrapper, {
			component = innerComponent,
			visible = true,
			myPassedInValue = 5,
		}))

		expect(innerComponentProps).to.never.equal(nil)
		expect(innerComponentProps.visible).to.equal(true)
		expect(innerComponentProps.DisplayOrder).to.equal(nil)
		expect(innerComponentProps.component).to.equal(nil)
		expect(innerComponentProps.myPassedInValue).to.equal(5)

		Roact.unmount(instance)
	end)

	it("should still mount the inner component if ScreenGui is not visible", function()
		local innerComponentProps = nil

		local innerComponent = function(props)
			innerComponentProps = props
			return Roact.createElement("Frame", {
				Size = UDim2.new(0, 50, 0, 50)
			})
		end

		local instance = Roact.mount(Roact.createElement(ScreenGuiWrapper, {
			component = innerComponent,
			visible = false,
		}))

		expect(innerComponentProps).to.never.equal(nil)
		expect(innerComponentProps.visible).to.equal(false)

		Roact.unmount(instance)
	end)
end
