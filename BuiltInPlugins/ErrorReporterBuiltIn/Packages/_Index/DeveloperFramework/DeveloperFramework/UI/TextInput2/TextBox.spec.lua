local FFlagDevFrameworkTextInput2 = game:GetFastFlag("DevFrameworkTextInput2")

if FFlagDevFrameworkTextInput2 then
	return function()
		local Framework = script.Parent.Parent.Parent
		local Roact = require(Framework.Parent.Roact)
		local TestHelpers = require(Framework.TestHelpers)
		local TextBox = require(script.Parent.TextBox)

		local function createTestTextBox(props)
			return TestHelpers.provideMockContext(nil, {
				TextBox = Roact.createElement(TextBox, props)
			})
		end

		it("should create and destroy without errors", function()
			local element = createTestTextBox()
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("check that the Roact.Ref is passed to the underlying frame", function()
			local ref = Roact.createRef()
			local element = createTestTextBox({
				[Roact.Ref] = ref
			})
			local instance = Roact.mount(element)
			expect(ref.current.ClassName).to.equal("TextBox")
			Roact.unmount(instance)
		end)
	end
else
	return function() end
end
