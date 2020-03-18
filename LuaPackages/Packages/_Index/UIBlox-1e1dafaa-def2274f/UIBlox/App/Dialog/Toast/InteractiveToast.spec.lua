return function()
	local Toast = script.Parent
	local Dialog = Toast.Parent
	local App = Dialog.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)

	local Images = require(UIBlox.App.ImageSet.Images)
	local TestStyle = require(UIBlox.App.Style.Validator.TestStyle)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)
	local InteractiveToast = require(Toast.InteractiveToast)

	local ICON_SIZE = 36

	local testText = "System Outage"
	local testSubText = "Tap to see more information"

	local createInteractiveToast = function(props)
		return mockStyleComponent({
			InteractiveToast = Roact.createElement(InteractiveToast, props)
		})
	end

	it("should throw on invalid titleTextProps", function()
		local element = createInteractiveToast({
			textFrameSize = UDim2.new(1, 0, 1, 0),
			titleTextProps = {},
		})
		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)

	it("should create and destroy without errors with valid titleTextProps", function()
		local element = createInteractiveToast({
			textFrameSize = UDim2.new(1, 0, 1, 0),
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
		local element = createInteractiveToast({
			textFrameSize = UDim2.new(1, 0, 1, 0),
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

	it("should create and destroy without errors with icon", function()
		local element = createInteractiveToast({
			textFrameSize = UDim2.new(1, 0, 1, 0),
			iconProps = {
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

	it("should create and destroy without errors with ImageSet compatible icon", function()
		local element = createInteractiveToast({
			textFrameSize = UDim2.new(1, 0, 1, 0),
			iconProps = {
				Image = Images["icons/status/warning"],
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

	it("should create and destroy without errors when pressed", function()
		local element = createInteractiveToast({
			pressed = true,
			textFrameSize = UDim2.new(1, 0, 1, 0),
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