return function()
	local Packages = script.Parent.Parent
	local Roact = require(Packages.Roact)

	local forwardRef = require(script.Parent.forwardRef)
	local createSpy = require(script.Parent.Test.createSpy)

	it("should provide a valid ref to the given function when none is passed in", function()
		local internalComponentSpy = createSpy(function(props, ref)
			return nil
		end)

		local Component = forwardRef(internalComponentSpy.value)

		expect(internalComponentSpy.callCount).to.equal(0)

		local tree = Roact.mount(Roact.createElement(Component, {
			text = "Hello",
		}), nil)

		expect(internalComponentSpy.callCount).to.equal(1)

		local args = internalComponentSpy:captureValues("props", "ref")
		expect(args.props.text).to.equal("Hello")
		expect(args.ref).to.be.ok()
		expect(typeof(args.ref.getValue)).to.equal("function")

		Roact.unmount(tree)
	end)

	it("should forward a provided ref if present", function()
		local internalComponentSpy = createSpy(function(props, ref)
			return nil
		end)

		local Component = forwardRef(internalComponentSpy.value)

		expect(internalComponentSpy.callCount).to.equal(0)

		local providedRef = Roact.createRef()
		local tree = Roact.mount(Roact.createElement(Component, {
			text = "Hello",
			[Roact.Ref] = providedRef,
		}), nil)

		expect(internalComponentSpy.callCount).to.equal(1)

		local args = internalComponentSpy:captureValues("props", "ref")
		expect(args.props.text).to.equal("Hello")
		expect(args.ref).to.equal(providedRef)

		Roact.unmount(tree)
	end)
end