return function()
	local createFocusableCache = require(script.Parent.createFocusableCache)

	it("should always return Roact components", function()
		local focusableCache = createFocusableCache()

		local keys = { "TextLabel", "Frame", "ImageLabel" }
		for _, key in ipairs(keys) do
			local focusableComponent = focusableCache[key]
			expect(focusableComponent).never.to.equal(nil)
			-- We don't really have a good way to verify types right now
			expect(typeof(focusableComponent.render)).to.equal("function")
		end
	end)

	it("should return the same object for the same key", function()
		local focusableCache = createFocusableCache()
		local TextLabel = focusableCache.TextLabel
		local Frame = focusableCache.Frame

		expect(TextLabel).to.equal(focusableCache.TextLabel)
		expect(Frame).to.equal(focusableCache.Frame)
	end)

	it("should verify (to the best of its ability) that the provided component is a viable focusable component", function()
		local focusableCache = createFocusableCache()

		expect(function()
			return focusableCache[1]
		end).to.throw()
		expect(function()
			return focusableCache.Folder
		end).to.throw()

		local function myFunctionComponent(props)
			return nil
		end
		expect(function()
			return focusableCache[myFunctionComponent]
		end).never.to.throw()
	end)
end