local FFlagDevFrameworkTextInput2 = game:GetFastFlag("DevFrameworkTextInput2")

if FFlagDevFrameworkTextInput2 then
	return function()
		local Framework = script.Parent.Parent.Parent
		local Roact = require(Framework.Parent.Roact)
		local TestHelpers = require(Framework.TestHelpers)
		local TextInput2 = require(script.Parent)

		local function createTestTextInput2(props)
			return TestHelpers.provideMockContext(nil, {
				TextInput2 = Roact.createElement(TextInput2, props)
			})
		end

		it("should create and destroy without errors", function()
			local element = createTestTextInput2()
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end
else
	return function() end
end
