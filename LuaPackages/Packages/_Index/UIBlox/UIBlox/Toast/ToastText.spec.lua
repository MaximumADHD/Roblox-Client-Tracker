return function()
	local ToastRoot = script.Parent
	local UIBloxRoot = ToastRoot.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local TestStyle = require(UIBloxRoot.Style.Validator.TestStyle)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local ToastText = require(ToastRoot.ToastText)

	local createToastText = function(props)
		return mockStyleComponent({
			ToastText = Roact.createElement(ToastText, props)
		})
	end

	it("should throw on invalid props", function()
		local element = createToastText({})
		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)

	it("should create and destroy without errors with valid props", function()
		local element = createToastText({
			colorStyle = TestStyle.Theme.TextEmphasis,
			fontStyle = TestStyle.Font.Header2,
			Size = UDim2.new(1, 0, 1, 0),
			Text = "System error",
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end