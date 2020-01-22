return function()
	local ToastRoot = script.Parent
	local DialogRoot = ToastRoot.Parent
	local AppRoot = DialogRoot.Parent
	local UIBloxRoot = AppRoot.Parent
	local Packages = UIBloxRoot.Parent

	local Roact = require(Packages.Roact)

	local TestStyle = require(UIBloxRoot.Style.Validator.TestStyle)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local ToastFrame = require(ToastRoot.ToastFrame)

	local ICON_SIZE = 36

	local testText = "Test Title"
	local testSubText = "test test test"

	local createToastFrame = function(props)
		return mockStyleComponent({
			ToastFrame = Roact.createElement(ToastFrame, props)
		})
	end

	it("should throw on invalid titleTextProps", function()
		local element = createToastFrame({
			titleTextProps = {},
		})
		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)

	it("should create and destroy without errors with valid titleTextProps", function()
		local element = createToastFrame({
			titleTextProps = {
				colorStyle = TestStyle.Theme.TextEmphasis,
				fontStyle = TestStyle.Font.Header2,
				Size = UDim2.new(1, 0, 1, 0),
				Text = testText,
			},
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors with valid titleTextProps and subtitleTextProps", function()
		local element = createToastFrame({
			subtitleTextProps = {
				colorStyle = TestStyle.Theme.TextEmphasis,
				fontStyle = TestStyle.Font.CaptionBody,
				Size = UDim2.new(1, 0, 0.5, 0),
				Text = testSubText,
			},
			titleTextProps = {
				colorStyle = TestStyle.Theme.TextEmphasis,
				fontStyle = TestStyle.Font.Header2,
				Size = UDim2.new(1, 0, 0.5, 0),
				Text = testText,
			},
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors with valid titleTextProps and iconProps", function()
		local element = createToastFrame({
			iconProps = {
				colorStyle = TestStyle.Theme.IconEmphasis,
				Image = "rbxassetid://4126499279",
				Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
			},
			titleTextProps = {
				colorStyle = TestStyle.Theme.TextEmphasis,
				fontStyle = TestStyle.Font.Header2,
				Size = UDim2.new(1, -ICON_SIZE, 1, 0),
				Text = testText,
			},
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end